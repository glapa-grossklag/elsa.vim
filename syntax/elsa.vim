if exists("b:current_syntax")
    finish
endif

" Keywords
syntax keyword elsaKeyword let eval
syntax match elsaKeyword "\v:"
highlight link elsaKeyword Keyword

" Comments
setlocal commentstring=--%s
syntax match elsaComment "\v--.*$"
highlight link elsaComment Comment

" Operators
syntax match elsaOperator "\v\="
syntax match elsaOperator "\v\=[abd*~]\>"
syntax match elsaOperator "\v-\>"
syntax match elsaOperator "\v\\"
highlight link elsaOperator Operator

let b:current_syntax = "elsa"
