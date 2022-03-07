local status_ok, outline = pcall(require, "symbols-outline")
if not status_ok then
  vim.notify("No plugin called symbols-outline", vim.log.levels.ERROR)
  return
end

outline.setup()
