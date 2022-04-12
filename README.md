# elsa.vim

This plugin implements syntax highlighting for [Elsa](https://github.com/ucsd-progsys/elsa), a lambda calculus evaluator.

Install using your plugin manager of choice. For example, using
[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'glapa-grossklag/elsa.vim'
```

# Concealing

If you'd like to conceal `\x -> x` as `λx -> x`, add the following lines to your Vim configuration file.

```vim
let g:elsa_conceal = v:true
set conceallevel=2
```

# Screenshots

![A screenshot of the plugin in use](./screenshot.png)
