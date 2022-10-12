local ls = require 'luasnip'

ls.config.set_config{
  history = true,
  updateevent = "TextChanged,TextChangedI",
  enable_autosnippets = true
}

local s = ls.add_snippet
local t = ls.text_node
local i = ls.insert_node
