\ c space to toggle comment

:! drops me at the command line
:! ls - Notice the space between :! and the command

:Rmig takes you to the last migration file. works only inside an open file.

If you are in one of the migration file then you can execute
:Rake db:create

:Rgenerate scaffold User name:string

:Gst for git status

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
