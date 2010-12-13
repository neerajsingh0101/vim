z RETURN => make current line top line
z - ( it is z dash) => make current line bottom line
z . => make current line center of the screen


You can combine :read with a call to UNIX, to read the results of a UNIX command into your file. The following command will insert the output of date where the cursor is
:r !date


<a>Hello</a>
vit => visually select elements within html tag
vat => visually select element within html tag and also select the tag

# visually highlight everythin within the delimeter excluding the delimeter
vi'
vi"
vi[
vi{


+ move to the first character of next line
- move to the first character of previous line
n| move to the column n of current line


line1
line2
line3
you delete line1
then you deleted line2
then you deleted line3
Now you want to insert line1
"3p will restore the third deleted line . Note that it only works with delete line. will not work with deleted word or fragment of word. Each deleted line is put into a register. In this case you are instructing vim to insert line from 3rd register.


g shift j => join two lines without any space in between

Add <%= %> arround certain text. Write text first. Then select the text using v. Then hit s = .
http://stackoverflow.com/questions/4275209/how-to-insert-erb-tags-with-vim


\ c space => toggle comment

:! => drops me at the command line. Now do some command line operation.
:! ls

:Rmig takes you to the last migration file. works only inside an open file.

If you are in one of the migration file then you can execute
:Rake db:create

:Rgenerate scaffold User name:string

:Renv opens application.rb in Rails3 and environment.rb in Rails2

:Rgen migration add_email_to_users

In order to indent large number of lines left or right do. 10>> Next hit dot to do that operation again. Hit u to undo last command.

Ctrl w s => split horizontally
Ctrl w v => split vertically
Ctrl w w => cycle through windows

Remove all empty blank lines
:g/^$/d

Show where line ends
:set list
:set nolist

Make the current tab as the first tab
:tabmove 0

Make the current tab as the last tab
:tabmove

gt => move to next tab
gT => move to last tab
#gt => move to the numbered tab

:Rfind car => will take to car.rb

Put the cursor on a model/controller name and hit gf.

:AT for the alternate file in a new tab.


:Rcontroller
:Rjavascript
:Rmodel
:Rview users
:Rinvert
:Rextract
:Rtree


:Gst for git status
:Gblame

