#How to get started with mvim#

* Install [macvim](http://code.google.com/p/macvim)
* git clone https://github.com/neerajdotname/vim
* cd vim
* rake
* Setup symbolic links

    ln -s /Users/nsingh/dev/vim/vimrc ~/.vimrc
    ln -s /Users/nsingh/vim/dev/gvimrc ~/.gvimrc
    ln -s /Users/nsingh/dev/vim ~/.vim





# Setting up JavascriptLint for javascript validation#

* [JavaScriptLint](http://www.javascriptlint.com) is a tool that inspects validity of 
JavaScript code every time a JavaScript file is saved. It will flag you if you have a missing semicolon.

* In order to get it working, you need to install spidermonkey. On mac if you have 
port installed then you can do this <tt>sudo port install spidermonkey</tt> . To check if port is properly
installed just go to command prompt and type <tt>js</tt> .

* Next install JavaScript Lint  from [here](http://www.javascriptlint.com/download.htm). 
Add the directory to PATH so that on command prompt you can type <tt>jsl</tt> . If you are using mac
then you don't need to download anything. I have included jsl files in this directory. Look for directory
named jsl-**-mac. Just add this directory to your PATH so that jsl command is available.


* Copy plugin/javaScriptLint.vim to your plugin directory. Also copy jsl-*-mac to your vim directory. 

* If you save a .js file which has code like this then you will get a warning.

    $(a)
       .bind('click', function(){});

In order to avoid the warning ' unexpected end of line;' configure  jsl-3.0.0-mac/jsl.default.conf 
