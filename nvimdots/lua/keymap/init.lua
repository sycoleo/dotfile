local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
require("keymap.config")

local plug_map = {
    -- Packer
    ["n|<leader>ps"] = map_cr("PackerSync"):with_silent():with_noremap()
        :with_nowait(),
    ["n|<leader>pu"] = map_cr("PackerUpdate"):with_silent():with_noremap()
        :with_nowait(),
    ["n|<leader>pi"] = map_cr("PackerInstall"):with_silent():with_noremap()
        :with_nowait(),
    ["n|<leader>pc"] = map_cr("PackerClean"):with_silent():with_noremap()
        :with_nowait(),
    -- Plugin Telescope
    ["n|<Leader>fb"] = map_cu("Telescope file_browser"):with_noremap()
        :with_silent(),
    ["n|<Leader>fg"] = map_cu("Telescope git_files"):with_noremap()
        :with_silent(),
    ["n|<C-f>"] = map_cr("Telescope find_files"):with_noremap(),
    ["n|<Leader>fp"] = map_cr("Telescope live_grep"):with_noremap(),
    -- Lsp mapp work when insertenter and lsp start
    ["n|g["] = map_cr("Lspsaga diagnostic_jump_next"):with_noremap()
        :with_silent(),
    ["n|g]"] = map_cr("Lspsaga diagnostic_jump_prev"):with_noremap()
        :with_silent(),
    -- Plugin trouble
    ["n|<leader>cd"] = map_cr("TroubleToggle lsp_document_diagnostics"):with_noremap()
        :with_silent(),
    ["n|<leader>cw"] = map_cr("TroubleToggle lsp_workspace_diagnostics"):with_noremap()
        :with_silent(),
    ["n|<leader>cq"] = map_cr("TroubleToggle quickfix"):with_noremap()
        :with_silent(),
    ["n|<leader>cl"] = map_cr("TroubleToggle loclist"):with_noremap()
        :with_silent(),
    -- Plugin SymbolsOutline
    ["n|<A-t>"] = map_cr("SymbolsOutline"):with_noremap():with_silent(),
    ["n|<C-m>"] = map_cu('lua require("FTerm").toggle()'):with_noremap():with_silent(),
    ["n|<Leader>g"] = map_cu("lua require('FTerm').run('gitui')"):with_noremap():with_silent(),
}

bind.nvim_load_mapping(plug_map)
