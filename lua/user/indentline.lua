local status_ok, indentline = pcall(require, 'indent_blankline')
if not status_ok then
  print("No identline")
  return
end

indentline.setup {
  show_current_context=true,
  show_current_context_start = true,
}
