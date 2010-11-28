require 'fileutils'

desc "Performs base installation"
task :base do
  system("git clone git://github.com/yuriyvolkov/vim-snipmate.git bundles/snipmate")
  system("cd bundles/snipmate && git submodule init && git submodule update")
  system("git clone git://github.com/scrooloose/nerdtree.git bundles/nerdtree")
  system("git clone git://github.com/scrooloose/nerdcommenter.git bundles/nerdcommenter")
  system("git clone git://github.com/scrooloose/syntastic.git bundles/syntastic")
  system("git clone git://github.com/tpope/vim-endwise.git bundles/endwise")
  system("git clone git://github.com/tpope/vim-surround.git bundles/surround")
  system("git clone git://github.com/tpope/vim-unimpaired.git bundles/unimpaired")
  system("git clone git://github.com/tpope/vim-abolish.git bundles/abolish")
  system("git clone git://github.com/tpope/vim-repeat.git bundles/repeat")
  system("git clone git://github.com/tpope/vim-vividchalk.git bundles/vividchalk")
  system("git clone git://github.com/mileszs/ack.vim.git bundles/ack")
end

desc "Performs git plugins installation"
task :git do
  system("git clone git://github.com/tpope/vim-git.git bundles/vim-git")
  system("git clone git://github.com/tpope/vim-fugitive.git bundles/fugitive")
end

desc "Performs pastie plugin installation"
task :pastie do
  system("git clone git://github.com/tpope/vim-pastie.git bundles/pastie")
end

desc "Installs plugins for rails development"
task :rails do
  system("git clone git://github.com/tpope/vim-ragtag.git bundles/ragtag")
  system("git clone git://github.com/vim-ruby/vim-ruby.git bundles/vim-ruby")
  system("git clone git://github.com/tpope/vim-rails.git bundles/vim-rails")
  system("git clone git://github.com/tpope/vim-cucumber.git bundles/vim-cucumber")
  system("git clone git://github.com/tpope/vim-haml.git bundles/vim-haml")
end


desc "Performs bundles cleanup (delete plugins installed from git source)"
task :cleanup do
  path = File.join(File.dirname(__FILE__), 'bundles')
  Dir.foreach(path) do |entry|
    if File.exist?(File.join(path, entry, ".git"))
      FileUtils.rm_rf(File.join(path, entry))
    end unless entry =~ /\.+/
  end
end

desc "Performs plugins update"
task :update do
  path = File.join(File.dirname(__FILE__), 'bundles')
  Dir.foreach(path) do |entry|
    bundle = File.join(path, entry)
    if File.exist?(File.join(bundle, ".git"))
      print "Updating #{entry}: "
      system("cd #{bundle} && git pull")
      system("cd #{bundle} && git submodule update") unless `cd #{bundle} && git submodule`.empty?
    end unless entry =~ /\.+/
  end
end

desc "=> base"
task :default => [:base, :git, :rails]

