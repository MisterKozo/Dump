#!/usr/bin/env python

import os
import argparse

if 'root' not in os.popen('whoami').read():
	print("Root permission is required. Exiting")
	exit()

def dump_header(block):
	print('Dumping header...')
	os.system('dd if='+block+' bs=2M count=1 of=.luks-header.img 2> /dev/null')
	print('Done, you can eject the volume now if you wish.')

def guess(password):
	print('Trying "' + password + '"')
	os.system('echo ' + password
		+ ' | cryptsetup luksOpen "' + '.luks-header.img' + '" --test-passphrase -T1'
		+ ' 2> tmp')
	with open('tmp', 'r+') as tmp:
		line = tmp.readline()
		if 'IO' not in line and 'No' not in line:
			os.system('echo ' + password + ' > pass.txt')
			print('CORRECT, dumped to pass.txt')
			return True
		elif 'No' not in line:
			print("There was an error:")
			print(line)
		return False

def get_lines(filename):
	dictionary = []
	with open(filename, 'r+') as f_dict:
		for line in f_dict:
			dictionary.append(line[:-1])
		return dictionary

def crack_with(filename='dict.txt'):
	passwords = get_lines(filename)
	for password in passwords:
		if guess(password):
			remove_leftovers()
			exit()

def remove_leftovers():
	os.system('rm luks-header.img 2> /dev/null')
	os.system('rm tmp.txt 2> /dev/null')
	os.system('rm pass.txt 2> /dev/null')
	print("Removed leftovers")

parser = argparse.ArgumentParser(description='Brute force a LUKS-encrypted volume')
parser.add_argument('-b', '--block', help='choose location of block, required', required=True)
parser.add_argument('-d', '--dictionary', help='choose location of dictionary, required', required=True)
args = parser.parse_args()

if 'block' not in os.popen('file ' + args.block).read():
	print('"' + block + '" is not a block. Exiting')
	exit()

print('Started')
dump_header(args.block)
crack_with(args.dictionary)
remove_leftovers()
print('Password was not found, sorry')
