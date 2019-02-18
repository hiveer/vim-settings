I suggest to install vim from the source code

### preparation
If you know what you should do before installation, that would be great
But if not, it would be ok and you can proceed and jump to next

like for Centos, the preparation work is:

`sudo yum install -y ruby ruby-devel lua lua-devel luajit luajit-devel ctags git python python-devel python3 python3-devel tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed`

`sudo ln -s /usr/bin/xsubpp /usr/share/perl5/ExtUtils/xsubpp`

### clone
`git clone https://github.com/vim/vim.git`

### configure
This step is very important, because by default vim won't install many useful features
so, here is the options

`cd .vim`

```
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python-config-dir=/usr/lib/python3.7/config-3.7m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
```

if you want to use python instead of python3, you should change the configure options
`--enable-pythoninterp=yes` and `--with-python-config-dir` will change to python config

here, the option "--with-python-config-dir" is special, you need to find out the config directory by yourself
you can use this command to try `find /usr -type d -name config`

or this command more directly `find /usr -name config.c`

### compile

`make && make install`

