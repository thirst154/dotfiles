vim.g.mapleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end


-- File Explorer
map("n", "<leader>fe", vim.cmd.Ex)

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit

-- map("n", "<leader>q", "<CMD>q<CR>")

