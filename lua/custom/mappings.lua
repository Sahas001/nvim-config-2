---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qo"] = { ":copen<CR>", "Open quickfix list", opts = { nowait = true } },
    ["<leader>qc"] = { ":cclose<CR>", "Open quickfix list", opts = { nowait = true } },
    ["<leader>qn"] = { ":cnext<CR>", "Open quickfix list", opts = { nowait = true } },
    ["<leader>qp"] = { ":cprev<CR>", "Open quickfix list", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

return M
