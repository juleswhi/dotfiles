local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmta = require("luasnip.extras.fmt").fmta

return {
    s({ trig = "log" },
        fmta([[debug("<>", .{<>});]], { i(1), i(2)})
    )
}
