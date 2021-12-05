local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
    -- Vim map
    ["n|<A-h>"] = map_cmd("<C-w>h"):with_noremap(),
    ["n|<A-l>"] = map_cmd("<C-w>l"):with_noremap(),
    ["n|<A-j>"] = map_cmd("<C-w>j"):with_noremap(),
    ["n|<A-k>"] = map_cmd("<C-w>k"):with_noremap(),
    ["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
    ["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
    ["n|<A-;>"] = map_cr("resize -2"):with_silent(),
    ["n|<A-'>"] = map_cr("resize +2"):with_silent(),
    ["n|<C-j>"] = map_cmd(":bprevious<CR>"):with_noremap(),
    ["n|<C-k>"] = map_cmd(":bnext<CR>"):with_noremap(),
    -- Visual
    ["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
    ["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
    ["v|<"] = map_cmd("<gv"),
    ["v|>"] = map_cmd(">gv"),
    -- Insert
    ["i|<C-l>"] = map_cmd("<Right>"):with_noremap(),
    ["i|<C-h>"] = map_cmd("<Left>"):with_noremap(),
}

bind.nvim_load_mapping(def_map)
