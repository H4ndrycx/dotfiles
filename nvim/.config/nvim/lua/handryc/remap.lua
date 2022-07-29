local nnoremap = require('handryc.keymap').nnoremap

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>a",  "<cmd>lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>h",  "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
nnoremap("<leader>n",  "<cmd>lua require('harpoon.ui').nav_next()<CR>")
nnoremap("<leader>p",  "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
nnoremap("<leader>pv", "<cmd>Ex<CR>")
