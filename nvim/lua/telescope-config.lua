require('telescope').load_extension('fzf')

require('telescope').load_extension('zoxide')

require('telescope').load_extension('neoclip')

local key_map = vim.api.nvim_set_keymap

-- open zoxide list
key_map(
  "n",
  "<leader>z",
  ":lua require'telescope'.extensions.zoxide.list{results_title='Z Directories', prompt_title='Z Prompt'}<CR>",
  { noremap = true, silent = true }
)

-- telescope-repo
key_map("n", "<leader>rl", [[<Cmd>lua require'joel.telescope'.repo_list()<CR>]], { noremap = true, silent = true })


-- neoclip
key_map(
  "n",
  "<leader>y",
  [[<Cmd>lua require('telescope').extensions.neoclip.default()<CR>]],
  { noremap = true, silent = true }
)
