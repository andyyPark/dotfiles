local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
    defaults = {
        file_ignore_patterns = {"node_modules", "Library"},
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next, -- move to next result
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
            }
        }
    }
})

telescope.load_extension("fzf")

local builtin = require('telescope.builtin')

-- set keymaps
local keymap = vim.keymap

keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files in cwd" })
keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Fuzzy find recent files" })
keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Find string in cwd" })
keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Fuzzy find in git repo" })
keymap.set('n', '<leader>fc', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
