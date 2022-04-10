if exists("b:current_syntax")
    finish
endif

" Adjust conceal settings
set conceallevel=1
set concealcursor=ni

" Keywords
syntax keyword elsaKeyword let eval
syntax match elsaKeyword "\v:"
highlight link elsaKeyword Keyword

" Comments
syntax match elsaComment "\v--.*$"
highlight link elsaComment Comment

" Operators
syntax match elsaOperator "\v\="
syntax match elsaOperator "\v\=[abd*~]\>"
syntax match elsaOperator "\v-\>"
syntax match elsaOperator "\v\\" conceal cchar=λ
highlight link elsaOperator Operator

let b:current_syntax = "elsa"
