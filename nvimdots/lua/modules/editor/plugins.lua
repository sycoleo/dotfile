local editor = {}
local conf = require("modules.editor.config")

editor["simrat39/symbols-outline.nvim"] = {
    opt = true,
    cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
    config = conf.symbols_outline
}
editor["nvim-treesitter/nvim-treesitter"] = {
    opt = true,
    run = ":TSUpdate",
    event = "BufRead",
    config = conf.nvim_treesitter
}
editor["vimlab/split-term.vim"] = {opt = true, cmd = {"Term", "VTerm"}}
editor["rmagatti/auto-session"] = {
    opt = true,
    cmd = {"SaveSession", "RestoreSession", "DeleteSession"},
    config = conf.auto_session
}
editor["tpope/vim-fugitive"] = {opt = true, cmd = {"Git", "G"}}
editor["SmiteshP/nvim-gps"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.nvim_gps
}
editor["numtostr/FTerm.nvim"] = { opt = true, event = "BufRead" }
return editor
