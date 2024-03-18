local actions = require("telescope.actions")
local builtin = require('telescope.builtin')
local set = vim.keymap.set

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}


set('n', '<C-g>', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
set('n', '<C-S-g>', builtin.git_files, {})
set('n', '<C-f>', builtin.find_files, {})

