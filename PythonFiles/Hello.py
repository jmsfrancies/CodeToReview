def main()
 	word = "HelloWorld!"
	space = ""
	total = 0
	while total != len(word):
		i = word[total]
		print("{0}{1}".format(space,i))
		space = space + " "
		total = total + 1

main()