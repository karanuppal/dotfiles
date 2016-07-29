"" ============================================================================
""                                Environment
"" ============================================================================
" May be useful if you wish to conditionally enable a plugin on Linux, b for
" example"
function! GetPlatform()
    if has('win32') || has('win64')
        return "Windows"
    elseif has("unix")
        return substitute(system("uname"), "\n", "", "g")
    else
        return "Unknown"
    endif
endfunction
