local ui = {}
local conf = require("modules.ui.config")

ui["kyazdani42/nvim-web-devicons"] = {opt = true}
ui["sainnhe/edge"] = {opt = false, config = conf.edge}
ui["hoob3rt/lualine.nvim"] = {
    opt = true,
    after = "lualine-lsp-progress",
    config = conf.lualine
}
ui["arkav/lualine-lsp-progress"] = {opt = true, after = "nvim-gps"}
ui["akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline
}
ui["glepnir/dashboard-nvim"] = { opt = true, event = "BufWinEnter" }
return ui
