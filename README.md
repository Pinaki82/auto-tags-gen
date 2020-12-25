# auto-tags-gen
Plugin for creating tags automatically (C/C++). Clone of: https://www.vim.org/scripts/script.php?script_id=4627

Plug-in for creating tags with ctags
in the current working directory of the currently opened
buffer (file), automatically, when you save your file.

This plug-in works with C/C++ files only.

Works in the current working directory. It can include
sub-directories as well. You can generate tags files automatically for easy access through Omni Completions,
and facilitate the plug-in that depends on a tags file.

You can even create tags file in any directory without
saving a file.

For example: code_complete.vim (by Mingbai),
             echofunc.vim (by Mingbai), plug-ins rely on a
             tags file in the working directory
             and the include directories added to vim's search list.

All of this is specified within a simple text file based plug-in script
(auto_tags_gen.vim) with a few global variables and
a shared library (auto_tag_gen.dll). On linux the plug-in is auto_tags_gen_linux.vim and the shared library is libauto_tag_gen.so.

Written For Vim version 7.4. May work with older
versions as well as the future releases also.

    Tested with Vim 32-bit on Windows XP/7 32-bit, Windows 7 64-bit (vim 32-bit),
    may work with Vim 64-bit on Windows 64-bit.
    Now it works on Linux. Tested in ubuntu 13.10 (Saucy) (Gvim from its repository).


You must set 'nocompatible' in your _vimrc file to use this plug-in. You can
stop the plug-in from being loaded by setting the
"loaded_auto_tag_generator" variable:

:let loaded_auto_tag_generator = 0

in your _vimrc file.
You can also put these lines for your convenience:

set nocompatible
filetype on
filetype plugin on
set number
set laststatus=2
:set timeout timeoutlen=4500 "   ttimeoutlen=100 "  default settings -1 not harmed under comment
set history=100 " tons of command-line history. Can be used with up-dn arrow key
 
install details
Installation:
Download Exuberant ctags from
http://ctags.sourceforge.net.
Put ctags.exe into C:\WINDOWS\system32
or, create a folder for ctags and finally add this folder to path, by
r-clicking at My Computer -> Properties -> Advanced -> Environment Variables
-> System Variables -> Path. (XP)
or,
r-clicking at Computer -> Advanced System Settings -> System Properties
-> Advanced tab -> Environment Variables
-> System Variables -> Path. (Win7)

But I recommend to put this stuff into system32 instead of cluttering up
the System Path when you are using Windows XP.
If you are using Windows 7 along with Tera Copy, instead use the above method.


Using 7-zip extract "auto_tag_gen_v0.00.06win32.7z" to any location of your preference.
This contains source code for the dll and some Makefile for different compilers.
The Code::Blocks IDE project is no longer included. This project now relies on bakefiles (http://www.bakefile.org/index.html).
Bakefile is used to create all the Makefiles. From windows bakefile can create Makefile for Linux, and vice-versa.

Extract "auto_tag_gen.zip" and put the stuffs in their respective locations, e.g. 'auto_tags_gen.txt' to C:\Program Files\vim\vim73\doc
'auto_tag_gen.dll' and 'auto_tags_gen.vim' to
C:\Program Files\vim\vim73\plugin

Fire-up gVim and at the Vim command-line do:
:helptags $VIMRUNTIME/doc
then,
:h auto_tags_gen

Read the documentations carefully.

If you want to use this plug-in on Linux, please
    build the .so file from the source. Makefile included.
    Extract the 7zip archive in your home directory, navigate through the terminal into that directory.
    Type
sudo make
sudo make install
sudo make install check

  then,
sudo nautilus ~/.vim/doc/
  paste the file 'auto_tags_gen.txt' there.
  then,
sudo nautilus ~/.vim/plugin/  
  then,
  paste the file 'auto_tags_gen_linux.vim' there.
  then,
  Fire-up GVim and press Shift+:
  and at the vim command-line do the following:
:helptags $HOME/.vim/doc
  Then press Shift+: again, and at the vim command-line do the following:
:h auto_tags_gen

Read the documentation carefully.



*NOTE FOR THE WINDOWS USERS:*
NOTE:: (Improvement):: From Version 0.0.06 this plugin no more kills any other
console window on Microsoft Windows Operating Systems. It kills only previously
running ctags.exe processes just to ensure you have the latest updated tags.
You can now run any other command-line jobs such as compilation etc.
Nothing will be harmed.

CAUTION FOR THE OLDER VERSIONS::
On Windows, older version of this plugin (prior to Version 0.0.06)
used to kill all the running 'cmd.exe' at the background
to prevent running several ctags process targeting the same 'tags'.
So while using older version of this plug-in, do not perform any other command-line jobs such as compiling etc.,
as this would kill your compilation midway. De-activate this plug-in in this situation and edit files with vim normally,
when you will have no other command-line jobs then activate this plug-in again. If needed force it to generate tags manually.
This plugin does not work with console version of vim,
and you should not try to integrate any older version with the console mode vim
as it would kill the vim itself by killing the 'cmd.exe'.
Only use GVim. Better use version 0.0.06 or any future release.

On Linux you don't have to be worried, this problem does not exist on Linux, since Linux can kill ctags process by name using pkill.
So you are free to do anything on Linux with this plug-in.
On linux you don't have to worry about it even with the older versions.
