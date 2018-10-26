#!/bin/bash

createfiles() {
	touch index.html
	touch style.css
	touch script.js
	echo "<!doctype html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>New project</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        
        <link rel="stylesheet" href="style.css">

       
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <p>hola gente</p>

     
        <script src="script.js"></script>

        
    </body>
</html>" >> index.html
}

setup() {
	if [ $# -gt 0 ]
	then
		echo $input
		mkdir $input
		cd $input
	fi
	createfiles
}


menu() {
	echo "******************************************"
	echo "***  Type new folder name  ***************"
	echo "***  Press ENTER to express set-up   *****"
	echo "******************************************"
	read input

	if [ -z $input ]
	then
		setup
	else
		setup $input
	fi
	
}

menu
