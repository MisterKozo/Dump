#!/usr/bin/env python3

import requests
import simplejson as json
import random
import sys

def vote(points):
	url = "https://esc-lightify.com/api/vote"
	poss = "123456789"

	second = ""
	for i in range(0,4):
		second += poss[random.randrange(len(poss)-1)]

	third = ""
	for i in range(0,4):
		third += poss[random.randrange(len(poss)-1)]

	fourth = ""
	for i in range(0,4):
		fourth += poss[random.randrange(len(poss)-1)]

	last = ""
	for i in range(0,12):
		last += poss[random.randrange(len(poss)-1)]

	data = {'points': points}
	headers = {'x-esc-uuid': 'ffffffff-'+second+'-'+third+'-'+fourth+'-'+last,
		'User-Agent': 'Lightify@ESC, 0.0.5, null, Android 7.0',
		'Content-Type': 'application/json; charset=UTF-8',
		'Content-Length': '12',
		'Host': 'esc-lightify.com',
		'Connection': 'Keep-Alive',
		'Accept-Encoding': 'gzip'}

	r = requests.post(url, data=json.dumps(data), headers=headers)
	dicto=json.loads(r.text)
	if (r.status_code == 200):
		print('Voted for "'+str(dicto['title'])+'" with ' + str(points) + ' points')
	else:
		print('Failed to vote')

if len(sys.argv) != 3:
	print("USAGE: " + sys.argv[0] + " POINTS TIMES")
	exit()

points = sys.argv[1]
times = sys.argv[2]

if not points.isdigit():
	print("Points between 1 and 12")
	exit()
if not times.isdigit():
	print("Times is a number")
	exit()

points = int(points)
times = int(times)

for i in range(0,times):
	vote(points)
