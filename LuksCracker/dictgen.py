#!/usr/bin/env python

import argparse

def gen_1(signs, length):
	passwords = []
	password = [signs[0]]*length
	steps    = [0]*(length+1)
	for pos in range(0, length+1):
		steps[pos] = len(signs)**(pos)
	taken    = [0]*length
	current  = [0]*length

	beats = len(signs)**(length)
	for beat in range(0, beats):
		cease = False
		for pos in range(0, length):
			if steps[pos] - taken[pos] == 0:
				current[pos] = current[pos]+1 if current[pos] < len(signs)-1 else 0
				taken[pos] = 1
			else:
				taken[pos] += 1
			if cease:
				cease = False
				break
			password[pos] = signs[current[pos]]	
		passwords.append(password[:])

	return passwords

def gen_2(password, signs, passwords, depth, position):
	dots = '....'*depth
	if depth == len(password):
		print(dots+"dropped depth " + str(depth) + " and sign " + str(position))
		return
	print(dots+"starting depth " + str(depth) + " and sign " + str(position))
	for i in range(0, len(signs)):
		#print("moving on to depth " + str(depth+1) + " and sign " + str(i))
		gen_2(password, signs, passwords, depth+1, i)
	print(dots+"finishing depth " + str(depth) + " and sign " + str(position))
	password[depth] = signs[position]
	passwords.append(password[:])
	print(dots+'....'+str(password[:]))
	return passwords

def generate(length_low=1,
		length_high=10,
		letters_lower=True,
		letters_upper=True,
		digits=True,
		signs=True,
		custom=''):
	letters_lower_dict = 'abcdefghijklmnopqrstuvwxyz'
	letters_upper_dict = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	digits_dict        = '0123456789'
	signs_dict         = '~!@#$%^&*()_+{}|:"<>?`-=[]\\;\',./'
	total = ''
	total += letters_lower_dict if letters_lower is True else ''
	total += letters_upper_dict if letters_upper is True else ''
	total += signs_dict if signs is True else ''
	total += digits_dict if digits is True else ''
	total += custom
	if len(total) == 0:
		print('Empty!')
		return []
	print('Symbols: ' + total)

	passwords = []
	for length in range(length_low, length_high+1):
		password = [total[0]]*length
		passwords += gen_1(total, length)
		#gen_2(password, total, passwords, 0, 0)

	return passwords

parser = argparse.ArgumentParser(description='Dictionary generator')
parser.add_argument('-l', '--location', help='choose location of dictionary', default='dict.txt')
properties = parser.add_argument_group('dictionary properties')
properties.add_argument('--shortest', help='shortest length, required', type=int, required=True)
properties.add_argument('--longest', help='longest length, required', type=int, required=True)
properties.add_argument('--lower', help='include lowercase', action='store_true')
properties.add_argument('--upper', help='include uppercase', action='store_true')
properties.add_argument('--digits', help='include digits', action='store_true')
properties.add_argument('--signs', help='include special symbols that appear on the ANSI layout', action='store_true')
properties.add_argument('--custom', help='include custom characters', default='')
args = parser.parse_args()

print('Generating...')
passwords = generate(length_low=args.shortest,
			length_high=args.longest,
			letters_lower=args.lower,
			letters_upper=args.upper,
			digits=args.digits,
			signs=args.signs,
			custom=args.custom)

with open('dict.txt', 'wb') as f_dict:
	for password in passwords:
		pass_string = ''
		for i in range(0, len(password)):
			pass_string += password[i]
		f_dict.write(pass_string+'\n')
print('Generated to "' + args.location + '"')
