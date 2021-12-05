local config = {}

function config.edge()
    vim.cmd [[set background=dark]]
    vim.g.edge_style = "aura"
    vim.g.edge_enable_italic = 1
    vim.g.edge_disable_italic_comment = 1
    vim.g.edge_show_eob = 1
    vim.g.edge_better_performance = 1
    vim.g.edge_transparent_background = 1
end

function config.lualine()
    local gps = require("nvim-gps")

    local function gps_content()
        if gps.is_available() then
            return gps.get_location()
        else
            return ""
        end
    end
    local symbols_outlines = {
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'filetype'},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {'location'}
        },
        filetypes = {'Outline'}
    }

    require("lualine").setup {
        options = {
            icons_enabled = true,
            theme = "onedark",
            disabled_filetypes = {},
            component_separators = "|",
            section_separators = {left = "", right = ""}
        },
        sections = {
            lualine_a = {"mode"},
            lualine_b = {{"branch"}, {"diff"}},
            lualine_c = {
                {"lsp_progress"}, {gps_content, cond = gps.is_available}
            },
            lualine_x = {
                {
                    "diagnostics",
                    sources = {"nvim_lsp"},
                    color_error = "#BF616A",
                    color_warn = "#EBCB8B",
                    color_info = "#81A1AC",
                    color_hint = "#88C0D0",
                    symbols = {error = " ", warn = " ", info = " "}
                }
            },
            lualine_y = {"filetype", "encoding", "fileformat"},
            lualine_z = {"progress", "location"}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {"filename"},
            lualine_x = {"location"},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {
            "quickfix", "nvim-tree", "toggleterm", "fugitive", symbols_outlines
        }
    }
end

function config.nvim_bufferline()
    require("bufferline").setup {
        options = {
            number = "none",
            modified_icon = "✥",
            buffer_close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            show_buffer_close_icons = true,
            show_buffer_icons = true,
            show_tab_indicators = true,
            diagnostics = "nvim_lsp",
            always_show_bufferline = true,
            separator_style = "thin",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    padding = 1
                }
            }
        }
    }
end

return config
