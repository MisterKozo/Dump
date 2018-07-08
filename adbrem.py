#!/usr/bin/env python

#################AdbRem#################
# Batch remove Android packages using ADB
########################################

import os
import sys

if len(sys.argv) != 2:
	print('Usage: ' + sys.argv[0] + ' packages.txt')
	exit()
lokch = sys.argv[1]

packages = []
with open(lokch, 'r+') as f_pkgs:
	for line in f_pkgs:
		packages.append(line[:-1])

removed = open('removed.txt', 'wb')
error   = open('error.txt', 'wb')

for package in packages:
	print('Attempting to remove ' + package)
	result = os.popen('adb shell "su -c \'pm uninstall -k --user 0 '+line+'\'"').read()
	if 'Success' in result:
		removed.write(package+'\n')
		print('Successfully removed {}'.format(package))
	else:
		error.write(package+': '+result)
		print('ADB returned {} for package {}'.format(result, package))

removed.close()
error.close()
