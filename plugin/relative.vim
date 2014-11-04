function! relative:go_to_spec()
  let file_path = substitute(expand('%p'), "app", "spec", "")
  let file_path = substitute(file_path, ".rb", "_spec.rb", "")
  execute 'vsplit' . file_path
endfunction


" Commands
command! Spec call relative:go_to_spec()
