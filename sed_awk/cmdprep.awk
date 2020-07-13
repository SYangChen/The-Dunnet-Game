#!/usr/bin/awk -f
BEGIN{ FS = "\n" }
{ invAsArray[$0] = NR }
END{
	"cat ~/PA2/start/F" | getline x ; 
	commandLength = split( x, command, " " ) ;
	if ( command[1] ~ "[dep]" || command[1] == "s" && command[2] != "tree" ) {
		if ( !( command[2] in invAsArray ) ) { 
			print "You don't have that." ; 
			exit
		}
	}
	if ( command[commandLength] == "@" ) {
		if ( !( command[commandLength-1] in invAsArray ) ) { 
			if ( command[1] == "p" )
				print "That indirect object is not here." ;
			else
				print "I don't see that here." ;
			exit
		}
		# x = substr( x, 1, length( x )-1 )
		sub( " @", " ", x )
	}
	print x ;
}
