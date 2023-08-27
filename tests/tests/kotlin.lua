--- This test file run all supported cases of use.
--- @usage :luafile ~/.local/share/nvim/lazy/compiler.nvim/tests/tests/kotlin.lua

local ms = 1000 -- wait time
local language = require("compiler.languages.kotlin")
local example = vim.fn.stdpath "data" .. "/lazy/compiler.nvim/tests/examples/kotlin/"

-- Build and run
vim.api.nvim_set_current_dir(example .. "build-and-run/")
language.action("option1")
vim.wait(ms)

-- Build
vim.api.nvim_set_current_dir(example .. "build/")
language.action("option2")
vim.wait(ms)

-- Build and package
vim.api.nvim_set_current_dir(example .. "build/")
language.action("option3")
vim.wait(ms)

-- Run
language.action("option4")
vim.wait(ms)

-- Build solution (without .solution file)
vim.api.nvim_set_current_dir(example .. "solution-nofile/")
language.action("option5")
vim.wait(ms)

-- Build solution
vim.api.nvim_set_current_dir(example .. "solution/")
language.action("option5")
vim.wait(ms)
