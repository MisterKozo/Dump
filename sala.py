#!/usr/bin/env python3

import requests
import feedparser
import cv2
import numpy as np
from PIL import ImageFont, ImageDraw, Image
import random

def get_tattooed_4chan_image(text, unicode=True, board="p"):
	letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	def ascii_letters(text):
		for index in text:
			if index in letters:
				return True
			else:
				return False
		return None

	def reverse_string_section(string, start, end):
		return string[:start]+string[start:end][::-1]+string[end:]

	def reverse_alpha_sections(string):
		start_alpha = -1
		end_alpha = -1
		for i in range(0,len(string)):
			if ascii_letters(string[i]) and start_alpha == -1:
				start_alpha = i
			if not ascii_letters(string[i]) and start_alpha != -1:
				string = reverse_string_section(string, start_alpha, i)
				start_alpha = -1
		return string

	if unicode:
		text = text[::-1]
		text = reverse_alpha_sections(text)

	def get_latest_image(board_name):
		board_url  = "https://boards.4chan.org/{0}/index.rss".format(board_name)

		feed = feedparser.parse(board_url)
		entries_len = len(feed['entries'])
		img_url = feed['entries'][random.randint(0,entries_len-1)]['summary'].split('"')[1].split('"')[0]
		img_ext = img_url.split(".")[1]
		img_raw = requests.get(img_url, stream=True).content

		return cv2.imdecode(np.fromstring(img_raw, dtype=np.uint8), -1)

	img_mat_empty = None
	while img_mat_empty is None:
		img_mat_empty = get_latest_image(board)
	img_pil = Image.fromarray(img_mat_empty)
	img_pil = img_pil.convert('RGBA')
	img_pil_text = Image.new('RGBA', img_pil.size, (0,0,0,0))
	img_pil_rect = Image.new('RGBA', img_pil.size, (0,0,0,0))
	draw = ImageDraw.Draw(img_pil)
	draw_text = ImageDraw.Draw(img_pil_text)
	draw_rect = ImageDraw.Draw(img_pil_rect)
	space_px = 10
	height = len(img_mat_empty)
	width  = len(img_mat_empty[0])
	font_path = "orla.ttf"
	fontsize = int(min(max(height/16, 8), 128))
	font = ImageFont.truetype(font_path, fontsize)

	def get_width(string):
		return font.getsize(string)[0]

	def cut_text_to_array(string):
		original_array = string.split(" ")
		finished_array = []
		current_sentence = ""
		for word in original_array:
			try_sentence = (current_sentence + " " + word) if len(current_sentence) != 0 else word
			if get_width(try_sentence) > width*0.95:
				finished_array.append(current_sentence)
				current_sentence = word
			else:
				current_sentence = try_sentence
		if len(current_sentence) != 0:
			finished_array.append(current_sentence)
		return finished_array

	def draw_array(array):
		text_y_relative_array = []
		total_text_height = 0
		for i in range(0, len(array)):
			part = array[i]
			text_y_relative_array.append(total_text_height)
			total_text_height += font.getsize(part)[1]
			total_text_height += space_px
		total_text_height -= space_px
		highest_y = (height / 2) - (total_text_height / 2)
		#text_y_relative_array = text_y_relative_array[::-1]
		for i in range(0, len(array)):
			part = array[i]
			text_x_left = (width / 2) - (font.getsize(part)[0] / 2)
			text_x_right = (width / 2) + (font.getsize(part)[0] / 2)
			text_y_bottom = highest_y + text_y_relative_array[i] + font.getsize(part)[1]
			text_y_top = highest_y + text_y_relative_array[i]
			draw_rect.rectangle(((text_x_left-6,text_y_bottom+2), (text_x_right+6, text_y_top-2)), fill=(0,0,0,169))
			draw_text.text((text_x_left, text_y_top), part, font=font, fill=(255,0,255,255))

	arr = cut_text_to_array(text)
	draw_array(arr)

	img_pil = Image.alpha_composite(img_pil, img_pil_rect)
	img_pil = Image.alpha_composite(img_pil, img_pil_text)

	return np.array(img_pil)
