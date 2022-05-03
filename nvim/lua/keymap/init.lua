local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cr_esc = bind.map_cr_esc
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args

local base_map = {
    -- base key map
    ["t|<Esc>"] = map_cmd("<C-\\><C-N>"):with_noremap(),
    ["n|<leader><CR>"] = map_cr("nohlsearch"):with_noremap(),
    ["i|<leader><CR>"] = map_cr_esc("nohlsearch"):with_noremap(),
    ["n|<leader>w"] = map_cr("w"):with_noremap(),
    ["i|<leader>w"] = map_cr_esc("w"):with_noremap(),
    ["n|<leader>q"] = map_cr("q"):with_noremap(),
    ["i|<leader>q"] = map_cr_esc("q"):with_noremap(),
    ["t|<leader>q"] = map_cr_esc("q"),
    ["n|<leader>l"] = map_cr("qa"):with_noremap(),
    ["i|<leader>l"] = map_cr_esc("qa"):with_noremap(),
    ["n|<leader>a"] = map_cmd("^"):with_noremap(),
    ["i|<leader>a"] = map_cmd("<Esc>^"):with_noremap(),
    ["n|<leader>d"] = map_cmd("$"):with_noremap(),
    ["i|<leader>d"] = map_cmd("<Esc>$"):with_noremap(),
    ["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap(),
    ["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap(),
    ["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap(),
    ["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap(),
    ["v|<TAB>"] = map_cmd(">gv"):with_noremap();
    ["v|<S-TAB>"] = map_cmd("<gv"):with_noremap();

    -- quick start a terminal
    --["n|<leader>t"] = map_cmd("<Esc>:vs<CR>:set nonumber<CR>:terminal<CR>i"):with_noremap(),
    -- quick new a file
    ["n|<F3>"] = map_cr("tabnew"):with_noremap();

    -- plug key map
    -- nvim-tree
    ["i|<F1>"] = map_cr_esc("NvimTreeToggle"):with_noremap(),
    ["n|<F1>"] = map_cr_esc("NvimTreeToggle"):with_noremap(),
    ["v|<F1>"] = map_cr_esc("NvimTreeToggle"):with_noremap(),

    -- tagbar
    ["i|<F2>"] = map_cr_esc("SymbolsOutline"):with_noremap(),
    ["n|<F2>"] = map_cr_esc("SymbolsOutline"):with_noremap(),
    ["v|<F2>"] = map_cr_esc("SymbolsOutline"):with_noremap(),

    -- buffer manager
    ["n|<leader>1"] = map_cr_esc("BufferLineCloseLeft"):with_noremap(),
    ["n|<leader>2"] = map_cr_esc("BufferLineCloseRight"):with_noremap(),

    -- buffer
    ["n|<leader>z"] = map_cr_esc("bn"):with_noremap(),
    ["n|<leader>x"] = map_cr_esc("bp"):with_noremap(),
    ["n|<leader>c"] = map_cr_esc("bd"):with_noremap(),

    -- telescopion
    ["n|<leader>fd"] = map_cr_esc("Telescope live_grep theme=dropdown"):with_noremap(),
    ["n|<leader>ff"] = map_cr_esc("Telescope find_files theme=dropdown"):with_noremap(),
    ["n|<leader>fb"] = map_cr_esc("Telescope buffers theme=dropdown"):with_noremap(),

    -- notify
    ["n|<leader>e"] = map_cr_esc("lua require('telescope').extensions.notify.notify()"):with_noremap(),

    -- undo tree
    ["n|<leader>t"] = map_cr_esc("UndotreeToggle"):with_noremap(),

    -- packer
    ["n|<leader>ins"] = map_cr_esc("PackerSync"):with_noremap(),
    ["n|<leader>com"] = map_cr_esc("PackerCompile"):with_noremap(),

    -- change themes
    ["n|<leader>ct"] = map_cr_esc("Telescope colorscheme theme=dropdown"):with_noremap(),

};

bind.nvim_load_mapping(base_map)
