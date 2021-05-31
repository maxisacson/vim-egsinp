if exists("b:current_syntax")
    finish
end

" syn match egsNumber "\<\(\d\+\.\=\)\|\(\.\d\+\(e[+-]\=\d\+\)\=\)"
syn match egsNumbers transparent "\<\d\|\.\d" contains=egsNumber,egsFloat
syn match egsNumber contained "\d\+\>"
syn match egsFloat contained "\d\+\.\=\d*\(e[+-]\=\d\+\)\=\>"
syn match egsFloat contained "\.\=\d\+\(e[+-]\=\d\+\)\=\>"
syn match egsComment "\s*#.*"
syn match egsBlockDelim ":\(start\|stop\).*:"
syn match egsSubstitute "%.*%"

hi link egsNumbers Number
hi link egsNumber Number
hi link egsFloat Float
hi link egsComment Comment
hi link egsBlockDelim Structure
hi link egsSubstitute Special

let b:current_syntax = "egsinp"
