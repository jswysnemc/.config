local Util = require("lazyvim.util")
local opt = {noremap = true, silent = true }
local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

map('i','jj','<Esc>',opt)
map('n',' t',':FloatermNew<CR>',opt)
