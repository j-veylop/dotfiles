-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Strudel keymaps
local strudel = require("strudel")
map("n", "<leader>ml", strudel.launch, { desc = "Strudel: Launch" })
map("n", "<leader>mq", strudel.quit, { desc = "Strudel: Quit" })
map("n", "<leader>mt", strudel.toggle, { desc = "Strudel: Toggle" })
map("n", "<leader>mu", strudel.update, { desc = "Strudel: Update" })
map("n", "<leader>ms", strudel.stop, { desc = "Strudel: Stop" })
map("n", "<leader>mb", strudel.set_buffer, { desc = "Strudel: Set buffer" })
map("n", "<leader>mx", strudel.execute, { desc = "Strudel: Execute" })

-- OpenCode keymaps
local opencode = require("opencode")
map({ "n", "x" }, "<leader>oa", function()
  opencode.ask("@this: ", { submit = true })
end, { desc = "OpenCode: Ask" })
map({ "n", "x" }, "<leader>os", opencode.select, { desc = "OpenCode: Select action" })
map({ "n", "t" }, "<leader>ot", opencode.toggle, { desc = "OpenCode: Toggle" })
map({ "n", "x" }, "<leader>or", function()
  return opencode.operator("@this ")
end, { desc = "OpenCode: Add range", expr = true })
map("n", "<leader>ol", function()
  return opencode.operator("@this ") .. "_"
end, { desc = "OpenCode: Add line", expr = true })
map("n", "<leader>ou", function()
  opencode.command("session.half.page.up")
end, { desc = "OpenCode: Scroll up" })
map("n", "<leader>od", function()
  opencode.command("session.half.page.down")
end, { desc = "OpenCode: Scroll down" })
