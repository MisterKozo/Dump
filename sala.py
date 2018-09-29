import requests
import feedparser
import cv2
import numpy as np
from PIL import ImageFont, ImageDraw, Image
import random

def get_tattooed_4chan_image(text, unicode=True, board="p"): #hebrew=unicode
	if unicode:
		text = text[::-1]

	b,g,r,a = 0,255,0,0
	font_path = "diy.ttf" #get your own font
	font = ImageFont.truetype(font_path, 32)

	def get_latest_image(board_name):
		board_url  = "https://boards.4chan.org/{0}/index.rss".format(board_name)

		feed = feedparser.parse(board_url)
		entries_len = len(feed['entries'])
		img_url = feed['entries'][random.randint(0,entries_len-1)]['summary'].split('"')[1].split('"')[0]
		img_ext = img_url.split(".")[1]
		img_raw = requests.get(img_url, stream=True).content

		return cv2.imdecode(np.fromstring(img_raw, dtype=np.uint8), -1)

	img_mat_empty = get_latest_image(board)
	img_pil = Image.fromarray(img_mat_empty)
	draw = ImageDraw.Draw(img_pil)
	space_px = 10
	height = len(img_mat_empty)
	width  = len(img_mat_empty[0])

	def get_width(string):
		return font.getsize(string)[0]

	def cut_text_to_array(string):
		original_array = string.split(" ")
		finished_array = []
		current_sentence = ""
		for word in original_array:
			try_sentence = (current_sentence + " " + word) if len(current_sentence) != 0 else word
			if get_width(try_sentence+" ") > width*0.90:
				finished_array.append(try_sentence)
				current_sentence = word
			else:
				current_sentence = try_sentence
		if len(current_sentence) != 0:
			finished_array.append(current_sentence)
		return finished_array

	def draw_array(array):
		text_y_relative_array = []
		total_text_height = 0
		for i in range(len(array)-1, -1, -1):
			part = array[i]
			text_y_relative_array.append(total_text_height)
			total_text_height += font.getsize(part)[1]
			total_text_height += space_px
		total_text_height -= space_px
		lowest_y = (height / 2) + (total_text_height / 2)
		text_y_relative_array = text_y_relative_array[::-1]
		for i in range(0, len(array)):
			part = array[i]
			text_x_left = (width / 2) - (font.getsize(part)[0] / 2)
			text_x_right = (width / 2) + (font.getsize(part)[0] / 2)
			text_y_bottom = lowest_y - text_y_relative_array[i]
			text_y_top = text_y_bottom - font.getsize(part)[1]
			draw.text((text_x_left,text_y_bottom), part, font=font, fill=(b,g,r,a))

	arr = cut_text_to_array(text)
	draw_array(arr)

	return np.array(img_pil)
