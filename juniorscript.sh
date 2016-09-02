#!/bin/bash
# © JuniorCode, 2016
#       _             _            _____           _       _   
#      | |           (_)          / ____|         (_)     | |  
#      | |_   _ _ __  _  ___  _ _| (___   ___ _ __ _ _ __ | |_ 
#  _   | | | | | '_ \| |/ _ \| '__\___ \ / __| '__| | '_ \| __|
# | |__| | |_| | | | | | (_) | |  ____) | (__| |  | | |_) | |_ 
#  \____/ \__,_|_| |_|_|\___/|_| |_____/ \___|_|  |_| .__/ \__|
#                                                   | |        
#                                                   |_|        
# Cool text generated from patorjk.com

# Bold text code
bold=$(tput bold)
normal=$(tput sgr0)


# Create alias commands in .bashrc
echo 'alias juniorscript="~/juniorscript.sh"' >> .bashrc
echo 'alias jr="~/juniorscript.sh"' >> .bashrc




if [ "$1" == "" ];
then
echo "


       _             _            _____           _       _   
      | |           (_)          / ____|         (_)     | |  
      | |_   _ _ __  _  ___  _ _| (___   ___ _ __ _ _ __ | |_ 
  _   | | | | | '_ \| |/ _ \| '__\___ \ / __| '__| | '_ \| __|
 | |__| | |_| | | | | | (_) | |  ____) | (__| |  | | |_) | |_ 
  \____/ \__,_|_| |_|_|\___/|_| |_____/ \___|_|  |_| .__/ \__|
                                                   | |        
                                                   |_|                                                                                   
________________________________________________________________________________	

JuniorScript Commands:
	
	${bold}jr compile${normal}		Compiles into PHP code.
	
	${bold}jr help${normal}			See documentation and help on JuniorScript.
	
	${bold}jr version${normal}		Check the version you're running.
	
	${bold}jr update${normal}		Update to the latest version on GitHub.

________________________________________________________________________________
"
fi


if [ "$1" == "compile" ];
then
if [ "$2" == "" ];
then
echo "


       _             _            _____           _       _   
      | |           (_)          / ____|         (_)     | |  
      | |_   _ _ __  _  ___  _ _| (___   ___ _ __ _ _ __ | |_ 
  _   | | | | | '_ \| |/ _ \| '__\___ \ / __| '__| | '_ \| __|
 | |__| | |_| | | | | | (_) | |  ____) | (__| |  | | |_) | |_ 
  \____/ \__,_|_| |_|_|\___/|_| |_____/ \___|_|  |_| .__/ \__|
                                                   | |        
                                                   |_|                    
                                                                                        
";

echo "
________________________________________________________________________________	

JuniorScript Compile Usage:
	
	${bold}jr compile${normal} (file_path)

________________________________________________________________________________
"
else

php -f compile.php # Run compiler.

fi
fi

if [ "$1" == "update" ];
then
echo "${bold}[JuniorScript]${normal}Update Complete."
fi

if [ "$1" == "version" ];
then
echo "${bold}[JuniorScript]${normal} Currently running JuniorScript version 1.0"
fi

if [ "$1" == "install" ];
then
echo "${bold}[JuniorScript]${normal} Installing JuniorScript version 1.0..."
if [ "$(which php)" == "" ];
then
echo "${bold}[JuniorScript]${normal} Installing latest PHP version..."
sudo apt-get install -y php && echo "${bold}[JuniorScript]${normal} PHP installed successfully!"
fi
./juniorscript.sh
fi
