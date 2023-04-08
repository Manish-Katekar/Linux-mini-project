#!/bin/bash

a=0
until [ $a -eq 4 ]
do
	echo -e "\n***Welcome To CENTRAL LIBRARY***"
	echo -e "\nSelect an option from following -\n(1) list of books\n(2) Request a book\n(3) Return a book\n(4) Exit\n"
	echo "Enter an option : "
	read a
	
	case $a in
		1)
			echo -e "\n"
			cat book.txt
		;;

		2)
			
			echo "Enter book name borrow"
			read b_name
			grep -w -v "$b_name" book.txt > book1.txt
			mv book1.txt book.txt
			echo -e "\n"
			
		;;

		3)
			echo "enter book returning : "
			read br_name
			echo "$br_name" >> book.txt
			echo -e "\n"
			cat book.txt
		;;

		4)
			echo "Exited"
			a=$a

		;;
	esac

done
	

