local keymap = vim.keymap

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap.set("n", "<leader>hm", mark.add_file, { desc = "Add current file to harpoon" })
keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Open up harpoon menu" })
keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Go to previous harpoon mark" })

-- vim.keymap.set("n", "<C-h>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
