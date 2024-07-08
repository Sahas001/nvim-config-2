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

-- neotest mapping

M.neotest = {

  n = {
    ["<leader>tt"] = {
      "<cmd> lua require('neotest').run.run() <CR>",
      "Run nearest test",
      opts = { noremap = true, silent = true },
    },
    ["<leader>tf"] = {
      "<cmd> lua require('neotest').run.run(vim.fn.expand('%')) <CR>",
      "Run tests in file",
      opts = { noremap = true, silent = true },
    },
    ["<leader>ts"] = {
      "<cmd> lua require('neotest').summary.toggle() <CR>",
      "Toggle test summary",
      opts = { noremap = true, silent = true },
    },
    ["<leader>to"] = {
      "<cmd> lua require('neotest').output.open({ enter = true }) <CR>",
      "Open test output",
      opts = { noremap = true, silent = true },
    },
    ["<leader>td"] = {
      "<cmd> lua require('neotest').run.run({ strategy = 'dap' }) <CR>",
      "Debug nearest test",
      opts = { noremap = true, silent = true },
    },
  },
}

M.undotree = {
  n = {
    ["<leader>u"] = {
      "<cmd> UndotreeToggle <CR>",
      "Toggle Undotree",
      opts = { noremap = true, silent = true },
    },
  },
}

return M
