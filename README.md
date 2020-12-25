# auto-tags-gen

Plugin for creating tags automatically (C/C++). Clone of: https://www.vim.org/scripts/script.php?script_id=4627

Plugin for creating tags with ctags in the current working directory of the currently opened buffer (file), automatically, when you save your file.

This plugin works with C/C++ files only.

Works in the current working directory. It can include sub-directories as well. You can generate tags files automatically for easy access through Omni completions, and facilitate the plugins those that depend on a tags file.

You can even create tags file in any directory without saving a file.

For example: code_complete.vim (by Mingbai),
             echofunc.vim (by Mingbai), plugins relies on a
             tags file in the working directory
             and the include directories added to vim's search list.

All of this is specified within a simple text file based plugin script (auto_tags_gen.vim) with a few global variables and a shared library (auto_tag_gen.dll and libauto_tag_gen.so on Linux).

Written For Vim version 7.4. May work with older versions as well as the future releases also.

    Tested with Vim 32-bit on Windows XP/7 32-bit, Windows 7 64-bit (vim 32-bit),
    may work with Vim 64-bit on Windows 64-bit.
    Now it works on Linux. Tested in ubuntu 13.04 (Gvim from its repository).



You must set 'nocompatible' in your _vimrc file to use this plugin. You can stop the plugin from being loaded by setting the

`"loaded_auto_tag_generator"` variable:

	`:let loaded_auto_tag_generator = 0`

in your `vimrc` file.

Version 0.00.07-win32 can load option no. at vimstartup.
You can do this by putting option no. 0/1/2/3/4 like:

 `:let g:startuptrigger = 1`
 
in your `vimrc` file.

You can also put these lines for your convenience:

```
filetype on
filetype plugin on
set number
set laststatus=2
:set timeout timeoutlen=4500 "   ttimeoutlen=100 "  default settings -1 not harmed under comment
set history=100 " tons of command-line history. Can be used with up-dn arrow key
```

Installation:
Download Exuberant ctags from
 http://ctags.sourceforge.net.
Put ctags.exe into C:\WINDOWS\system32 (for Windows XP only)

or, create a folder for ctags and finally add this folder to path, by r-clicking at My Computer -> Properties -> Advanced -> Environment Variables -> System Variables -> Path. (XP)

or,
r-clicking at Computer -> Advanced System Settings
-> System Properties
-> Advanced tab -> Environment Variables
-> System Variables -> Path. (Win7)

or,

r-clicking at "This PC" -> Advanced System Settings
-> System Properties
-> Advanced tab -> Environment Variables
-> System Variables -> Path. (Win10)

Ubuntu users should download ctags from the repository.

Download the code in a ZIP achieve from the main branch and extract the file "auto-tags-gen-main.zip" to any location
of your preference. This contains source code for the shared library and the
makefiles for different targets and compilers.

At this time, it supports 3 compilers on Windows:- MinGW, tiny C, Visual Studio.
This project relies on bakefile (http://www.bakefile.org). The project also includes bakefile scripts. If you want to create your own makefile then you can also use it but it is not required to build the project, since it already contains the required makefiles. The makefiles have been created using bakefile.

Extract "auto_tag_gen.zip" and put the fiiles in their respective
locations, e.g. 'auto_tags_gen.txt' to `%userprofile%\vimefiles\doc`, 'auto_tag_gen.dll' and 'auto_tags_gen.vim' to `%userprofile%\vimefiles\plugin`

or,

In Ubuntu Linux, extract and enter the directory from the terminal where the Makefile is contained, type `make`. Now copy the file 'auto_tags_gen_linux.vim' into `~/.vim/plugin` and 'libauto_tag_gen.so' into repective plugin directory.

Fire up gVim and at the Vim command-line do (windows):

`:helptags $VIMRUNTIME/doc`

then,

`:h auto_tags_gen`

or, in Ubuntu Linux,

`:helptags $HOME/.vim/doc`

Read the documentation carefully.

NOTE:: (Improvement):: From Version 0.0.06, this plugin no more kills any other
console window on Microsoft Windows Operating Systems. It kills only the previously running ctags.exe processes just to ensure you have the latest updated tags.
You can now run any other command-line jobs such as compilation etc.
The cmd.exe won't be terminated. Nothing will be harmed.

CAUTION:: On Windows, older version of this plugin (prior to Version 0.0.06)
used to kill all the running 'cmd.exe' at the background to prevent parallel ctags processes targeting the same 'tags'. This had some obvious advantages but a precaution is necessary. Means if you want to do other tasks which depend on the command-line via 'cmd.exe' such as compilation etc., then do not use any older version before 0.0.06, as it would interrupt your task by killing it midway. Older versions do not work with the console version of Vim, and you should not try to integrate any older version with the console version of Vim as it would kill Vim itself by killing the 'cmd.exe'. Only use GVim. Better use version 0.0.06 when you already have the option to upgrade.

On Linux, you don't have to worry about it even with the older versions.

GitHub repository of this plugin contains the latest codebase.
