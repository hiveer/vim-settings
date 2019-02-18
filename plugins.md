I suggest to use 'vim-plug', the minimalist Vim plugin manager

Github: https://github.com/junegunn/vim-plug

### Download
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`


### Create the dir to put the plugins

`mkdir ~/.vim/bundle/`


### Register plugins in .vimrc

```
" Notice here, we will use the dir create in previous step
call plug#begin('~/.vim/bundle')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

call plug#end()
```

### Run 'PlugInstall'

open vim and run command

`:PlugInstall`
