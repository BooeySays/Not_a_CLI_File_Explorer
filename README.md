# Not_a_CLI_File_Explorer

***DETAILS - What is this?***
A little script that aliases 'cd' to call on a function that will complete the initial 'cd'
command, but will then execute the 'ls' command to list all the DIRs (grouped together and
listed first before the files) and FILEs of the new DIR that was just changed into.

***WHY ???***
Because I got tired of having to run 'ls' right after I 'cd' into a new DIR, just because I
forgot where to go next, or to check if I am in the right DIR. Whatever the case (I don't 
know about you guys, but for myself), I find myself running 'ls' after 'cd' almost 99% of the
time... Even when I know how a DIR is spelt or know enough of how it is spelt to be able to use
the TAB key to finish off the spelling for me... I will still type in 'ls'.

It's so in grained in me, that sometimes I will do it in the same DIR again and again, only, 
using different options.

Anyways, I figured that if I run ls after cd all the time, 'ls' is 50% of the 'cd'ing process.

So if I automate the 'ls' part, and have it so the system will run 'ls' automatically after I
execute 'cd', I would be gaining back that 50%, and will effectively be increasing my efficiency
by 100% (I am pretty sure that's how the math works).

So THAT is why....

But honestly, I think I just started it because I was bored and wanted to take a break from doing
whatever it was that I was doing..

***INSTALLATION***

****Step 1 - Copy/move script into a bin DIR****
To install (if I haven't finished the install script yet), you just need to copy the CDANDLS.sh file
into one of your '/bin' DIRs.

If you don't know where your bin directories are located, run:

echo $PATH

from your terminal.

You should get something like this:

booeysays@E5-722G-83DD:~/Git/Not_a_CLI_File_Explorer$ echo $PATH
/home/booeysays/.local/bin:/usr/local/sbin:/usr/local/bin

Those are locations, seperated by a ":". Some of them may not exist on your system, they might be
some general/standard one that was added but is not used by your system, so before you copy/move
the file over, go and check to see if the DIR exists first.

If it doesn't exist, you can go ahead and create it. The DIR is already set in the PATH, so it would
actually save you a step.

****Step 2 - Add bin location to $PATH****
After you copy the script into a bin DIR, you will need to add the bin to the $PATH, if it hasn't
already been done so.

****Step 3 - Add the file to your rc file***
If you are using bash, then you will need to edit your .bashrc file and add a line to it that will
call on the script that you just moved into the bin DIR.

The line that you will need to add is (with out the single quotation marks):

'. CDANDLS.sh'

So, you can either open the file with your favorite editor, add the line, save it, and re-
load bash.

Or, you can use echo and just echo the line into the file by running the following command in the 
terminal (without the brackets)

[ echo '. CDANDLS.sh' >> ~/.bashrc ]

****Step 4 - Add an alias for cd, linking it to CDANDLS****
The last step is to create an alias that is linked to the CDANDLS function.

CDANDLS at this point is just like 'cd', only, it will run 'ls' afterwards. So you can either leave 
it as is and use the full CDANDLS in place of 'cd' everytime you want to change directories and auto-
matically perform 'ls' afterwards.

Or, you can give CDANDLS a different alias, like 'cl' or 'cdl' or 'BooeyIsAwesome' and use **THAT** in place
of the 'cd' command.

OR, the recommended way, you can create an alias for *cd* that is linked to the CDANDLS. 
This way, you can use 'cd' like you normally would, and it will do what it normally does, with the
addition of running 'ls' right after.


But then... If there is an INSTALL.SH file, then you can skip step 1 through step 4, and just
run that file.

***CHANGES***


082418-2348hrs  :       
Updated this file with a bunch of rambling

082418-2348hrs  :       
Edited 'cdandls.sh' and switched line 6 and 7 around

082418-1543hrs  :       
Added 'whereami.sh' and 'cdandls.sh'


