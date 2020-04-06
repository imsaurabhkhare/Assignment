README.md:guessinggame.sh
	echo "# Guessing game" > README.md
	date >> README.md
	echo "Number of line in a guessinggame.sh is" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
