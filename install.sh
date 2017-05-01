#!/bin/bash

echo -e "\n\n"

echo -e "\t############################"
echo -e "\t# CLANG-FORMAT AUTO CONFIG #"
echo -e "\t############################\n\n"


if (test $# -gt 1) then
	echo "Usage: $0 [TRUE/FALSE : override the backup file]"
	echo -e "\n	Warning: This program will remove all the clang-format files."
	echo "	A backup of you old files will be created : ~/.clang-format.backup"
else

if (test -f ~/.clang-format.backup -a "$1" != "TRUE") then
	echo "A backup of your clang-format files already exists, please remove it:"
	echo "		rm ~/.clang-format.backup"
	echo "or override it with:"
	echo "		$0 TRUE"
else

	# BACKUP

	echo "<- Creating a backup of the old files ->"
	echo -n "   ..."

	if (test -f ~/.clang-format) then

		if(test -f ~/.clang-format.backup) then
			rm ~/.clang-format.backup
		fi
		mv ~/.clang-format ~/.clang-format.backup


	else
		echo -n "   ... No backup to do"
	fi
	
	echo " ... Done"
	
	# LINK

	echo "<- Creating link to the new file ->"
	echo -n "   ..."

	ln -s ~/git/indentator/.clang-format ~/.clang-format
#	echo "export PATH=\"\$PATH:\$HOME/git/indentator\"" >> ~/.bashrc
	ln -s ~/git/indentator/indentator /usr/local/bin/indentator

	echo " ... Done"


	echo "Your clang-format config file is now ready ! :)"

fi
fi

echo -e "\n\n"
