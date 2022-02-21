require'lspconfig'.clangd.setup{}

local C = {}

C.setup = function()


  local gCPP = {
    cpp_class_scope_highlight = 1,
    cpp_member_variable_highlight = 1,
    cpp_class_decl_highlight = 1,
    syntastic_cpp_checkers = vim.fn('cpplint'),
    syntastic_cpp_checkers = vim.fn('cpplint'),
    syntastic_cpp_cpplint_exec = 'cpplint',
    syntastic_check_on_open = 1,
  }

  for k,v in pairs(gCPP) do
    vim.g[k] = v
  end

vim.api.nvim_set_keymap(
  "n",
  "<leader>f",
  ":<C-u>ClangFormat<CR>",
  {noremap = true }
)
end
return C
