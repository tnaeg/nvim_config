lua << EOF
    require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        sync_install = false,
        ignore_isntall = { },
        highlight = {
            enable = true,
            disable = {},
            additional_vim_regex_highlighting = false,
        },
    }
EOF

set foldmethod=expr
set foldexpr=nvim_tressitter#foldexpr()
