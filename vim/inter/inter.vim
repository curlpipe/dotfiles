" Inter - The intergrated interpreter and compiler for vim
" Automatically saves and triggers compilation process

function Inter()
    let browser = g:inter_browser
    " Get the file name of the file that is currently in the buffer
    let file_name = buffer_name("%")
    " Get the directory where the current file is located
    let folder_name = fnamemodify(file_name, ':p:h')
    " Get the directory of the directory where the current file is located
    let parent_folder_name = fnamemodify(folder_name, ':h')
    " Detect if the filename ends in a python extension
    if file_name =~ '\.py$' || file_name =~ '\.pyw$'
        " Open up a new terminal vertically and run the file in python
        " The terminal will also close once completed due to the '++close' option
        execute(":vert term ++close python -i %")
    elseif file_name =~ '\.rb$'
        " Open up a new terminal vertically and run the file in ruby
        execute(":term ++close sh ~/.vim/inter/ruby.sh ".expand("%:p"))
    " Detect whether the file is a C source file
    elseif file_name =~ '\.c$'
        " Attempt to find a makefile
        if filereadable(folder_name."/Makefile") 
            " Makefile is in the current directory
            echo "Makefile was found in ".folder_name
            " Open a new terminal and run the program runner script
            execute(":vert term ++close sh ~/.vim/inter/c.sh ".folder_name)
        elseif filereadable(parent_folder_name."/Makefile")
            " The Makefile is in the parent directory
            echo "Makefile was found in ".parent_folder_name
            execute(":vert term ++close sh ~/.vim/inter/c.sh ".parent_folder_name)
        else
            " No makefile could be found, display warning
            echo "No Makefile was found, compilation may fail"
            " Instead, use gcc to compile it by itself
            execute(":vert term ++close sh ~/.vim/inter/c.sh ".folder_name." ".file_name)
        endif
    elseif file_name =~ '\.sh$'
        execute(":vert term ++close sh -c \"sh %; read\"")
    elseif file_name =~ '\.html$'
        execute(":vert term ++close ".browser." %")
    elseif file_name =~ '\.vim$'
        execute(":source ".file_name)
    elseif file_name =~ '\.rs$'
        " Open up a new terminal vertically and run the file in ruby
        execute(":term ++close sh ~/.vim/inter/rust.sh ".expand("%:p"))
    else
        echo "Inter was unable to recognise this file format"
    endif
endfunction

