if exists("b:current_syntax")
    finish
endif

if !exists('g:elsa_conceal') || !has('conceal')
    let g:elsa_conceal = v:false
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
if g:elsa_conceal == v:true
	syntax match elsaOperator "\v\\" conceal cchar=λ
else
	syntax match elsaOperator "\v\\"
end
highlight link elsaOperator Operator

let b:current_syntax = "elsa"
