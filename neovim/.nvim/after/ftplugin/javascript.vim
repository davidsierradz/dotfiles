set path=.,src
set suffixesadd=.js,.jsx
set includeexpr=LoadMainNodeModule(v:fname)
set foldmethod=syntax
set foldlevel=5

function! LoadMainNodeModule(fname)
  let nodeModules = "./node_modules/"
  let packageJsonPath = nodeModules . a:fname . "/package.json"

  if filereadable(packageJsonPath)
    return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
  else
    return nodeModules . a:fname
  endif
endfunction

let b:pear_tree_pairs = extend(deepcopy(g:pear_tree_pairs), {
      \ '`': {'closer': '`'},
      \ '/\*\*': {'closer': '\*/'},
      \ '<*>': {'closer': '</*>',
      \         'not_if': ['br', 'hr', 'img', 'input', 'link', 'meta',
      \                    'area', 'base', 'col', 'command', 'embed',
      \                    'keygen', 'param', 'source', 'track', 'wbr'],
      \         'not_like': '/$'
      \        }
      \ }, 'keep')
