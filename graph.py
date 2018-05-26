#!/usr/bin/env python
# -*- coding: utf-8 -*- 

import random
import numpy

max_height = 10
width      = 9

graph   = []
water   = []
area    = 0
display = numpy.zeros((width,max_height))
rotated = numpy.zeros((max_height,width))

for i in range(0,width):
	graph.append(random.randint(0,max_height))
	water.append(0)

def max_water_level(position):
	max_level = graph[position]
	while max_level < max_height:
		left_i = -1
		right_i = -1
		for left in range(position-1, -1, -1):
			#print(str(graph[left]) + " is not >= " + str(max_level))
			if graph[left] > max_level:
				left_i = left
		for right in range(position+1, len(graph)):
			if graph[right] > max_level:
				right_i = right
		if right_i != -1 and left_i != -1:
			max_level += 1
		else:
			break
	return max_level

def water_levels():
	water = []
	water.append(0)
	for i in range(1, len(graph)):
		water.append(max_water_level(i)-graph[i])
	water.append(0)
	return water

water = water_levels()

bars = []
for x in range(0,width):
	bar = ""
	for y in range(0,graph[x]):
		bar += "F"
	for y in range(graph[x],graph[x]+water[x]):
		bar += "W"
	for y in range(graph[x]+water[x],max_height):
		bar += "E"
	bars.append(bar)

for y in range(0, max_height):
	for x in range(0, width):
		dudu = 0
		if bars[x][y] == "F":
			dudu = 1
		elif bars[x][y] == "W":
			dudu = 2
		rotated[max_height-y-1][x] = dudu
			

for y in range(0, max_height):
	bar = "|"
	for x in range(0, width):
		curr = ''
		if int(rotated[y][x]) == 0:
			curr = ' '
		elif int(rotated[y][x]) == 1:
			curr = '█'
		elif int(rotated[y][x]) == 2:
			curr = 'W'
		bar += curr
	print(bar)
print("----------")

area = 0
for i in range(0, len(water)-1):
	area += water[i]

print("Area: " + str(area))
