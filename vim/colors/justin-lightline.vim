" Color Definitions -----------------------------------------------------------
let s:black  = [ '#121212', 233 ]
let s:grey4  = [ '#1c1c1c', 234 ]
let s:grey3  = [ '#262626', 235 ]
let s:grey2  = [ '#767676', 243 ]
let s:grey1  = [ '#a8a8a8', 248 ]
let s:white  = [ '#ffffd7', 230 ]
let s:red    = [ '#d7005f', 161 ]
let s:orange = [ '#ffaf5f', 215 ]
let s:yellow = [ '#afaf87', 144 ]
let s:green  = [ '#afd787', 150 ]
let s:cyan   = [ '#87ffd7', 122 ]
let s:blue   = [ '#00afff', 39  ]
let s:purple = [ '#af5fff', 135 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:black, s:orange, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.normal.middle = [ [ s:white, s:grey3 ] ]
let s:p.normal.right = [ [ s:black, s:orange, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]
let s:p.insert.left = [ [ s:black, s:blue, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.insert.right = [ [ s:black, s:blue, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.visual.left = [ [ s:black, s:purple, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.visual.right = [ [ s:black, s:purple, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.replace.left = [ [ s:black, s:red, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.replace.right = [ [ s:black, s:red, 'bold' ], [ s:black, s:cyan, 'bold' ] ]
let s:p.inactive.left =  [ [ s:red, s:black ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:grey1, s:black ] ]
let s:p.inactive.right = [ [ s:white, s:red ], [ s:red, s:black ] ]
let s:p.tabline.left = [ [ s:red, s:black ] ]
let s:p.tabline.middle = [ [ s:red, s:black] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:black, s:red ] ]

let g:lightline#colorscheme#justin#palette = lightline#colorscheme#flatten(s:p)
