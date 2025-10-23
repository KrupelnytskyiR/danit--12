#!/bin/bash



target=$(( (RANDOM % 100) + 1 ))
max_attempts=5
attempts=0

echo "Please guess number from 1 to 100. You have $max_attempts attempts."

while [ "$attempts" -lt "$max_attempts" ]; do 
	read -p "Enter your number: " guess 
	attempts=$(( attempts + 1 ))


	if [[ "$guess" -eq "$target" ]]; then
		echo "Congratulations. You guess right number."
		exit 0
	elif [[ "$guess" -gt "$target" ]]; then
		echo "To high"
	else 
		echo "To low"
	fi
done

echo "Sorry. You do not have any attempts. The right number is $target."

exit 1
