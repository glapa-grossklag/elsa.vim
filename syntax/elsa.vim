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

" Multi-line comments
syntax cluster elsaCommentContained contains=elsaComment,elsaCommentEnd
syntax region elsaComment start="{-" end="-}" contains=@elsaCommentContained keepend
syntax match elsaCommentEnd "-}" contained
highlight link elsaComment Comment
highlight link elsaCommentEnd Comment

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

" Definitions
syntax match elsaConstant "\v[A-Z]+[A-Z_0-9]*"
highlight link elsaConstant Constant

let b:current_syntax = "elsa"
