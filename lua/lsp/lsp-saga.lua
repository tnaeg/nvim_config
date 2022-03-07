local status, saga = pcall(require, "lspsaga")
if not status then
  print("No lspsaga plugin found")
  return
end

saga.setup({
  lightbulb = {
    enable = true,
    enable_in_insert = false,
    sign = true,
    sign_priority = 40,
    vitual_text = true,
  },
})
