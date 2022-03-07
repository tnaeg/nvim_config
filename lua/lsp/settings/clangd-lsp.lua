local clangd_flags = {
    "clangd",
  "--all-scopes-completion",
  "--suggest-missing-includes",
  "--background-index",
  "--pch-storage=disk",
  "--cross-file-rename",
  "--log=info",
  "--completion-style=detailed",
  "--enable-config", -- clangd 11+ supports reading from .clangd configuration file
  "--clang-tidy",
  "--offset-encoding=utf-8",
  "--fallback-style=Google",
}


return {
  --capabilities
  cmd = clangd_flags,
  filetypes = {"c", "cpp", "h", "hpp", "objc", "objcpp" },
  flags = {
        debounce_text_changes = 150
  }
}
