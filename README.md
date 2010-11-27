#How to get started with mvim#

* Install [macvim](http://code.google.com/p/macvim)
* I create all my vim setting in a directory called vim. 
* $mkdir vim
* cd vim
* $git clone https://github.com/tpope/vim-pathogen.git
* touch vimrc
* open vimrc and type following
*
    filetype off

    call pathogen#runtime_append_all_bundles()

    syntax on
    filetype plugin indent on
    set tabstop=2
    set smarttab
    set shiftwidth=2
    set autoindent
    set expandtab

    " Color scheme
    colorscheme vividchalk
    highlight NonText guibg=#060606
    highlight Folded  guibg=#0A0A0A guifg=#9090D0

* touch gvimrc
* open gvimrc and type whatever you see gvimrc in this repo
* mkdir bundle
* cd bundle
* $ git clone git://github.com/tpope/vim-rails.git
* $ git clone git://github.com/tpope/vim-cucumber.git
* $ git clone git://github.com/tpope/vim-vividchalk.git
* $ git clone git://github.com/tpope/vim-haml.git
* $ git clone git://github.com/tpope/vim-endwise.git
* $ git clone git://github.com/tpope/vim-surround.git
* $ git clone git://github.com/tpope/vim-unimpaired.git
* $ git clone git://github.com/tpope/vim-abolish.git
* $ git clone git://github.com/tpope/vim-repeat.git
* $ git clone git://github.com/scrooloose/nerdtree.git
* $ git clone git://github.com/scrooloose/nerdcommenter.git
* $ git clone http://github.com/mileszs/ack.vim.git

This will get you started. Read on if you want to customize your settings.

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
