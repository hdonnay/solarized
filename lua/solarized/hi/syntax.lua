local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  Comment = { fmt('i'), p.fg('alt') },               -- italic comments

  Constant = { fmt(), p.fg('cyan'), p.bg() },        -- any constant
  Boolean = { link = 'Constant' },                   -- a boolean constant: TRUE, false
  Character = { link = 'Constant' },                 -- any character constant: 'c', '\n'
  Float = { link = 'Constant' },                     -- a floating point constant: 2.3e10
  Number = { link = 'Constant' },                    -- a number constant: 5
  String = { link = 'Constant' },                    -- Any string

  Identifier = { fmt(), p.fg('blue'), p.bg() },      -- any variable name
  Function = { link = 'Identifier' },                -- normal function names

  Statement = { fmt(), p.fg('green'), p.bg() },      -- any statement
  Conditional = { link = 'Statement' },              -- normal if, then, else, endif, switch, etc.
  Repeat = { link = 'Statement' },                   -- normal any other keyword
  Label = { link = 'Statement' },                    -- case, default, etc.
  Operator = { link = 'Statement' },                 -- 'sizeof', '+', '*', etc.
  Keyword = { link = 'Statement' },                  -- normal for, do, while, etc.
  Exception = { link = 'Statement' },                -- try, catch, throw

  PreProc = { fmt(), p.fg('orange'), p.bg() },       -- generic Preprocessor
  Include = { link = 'PreProc' },                    -- preprocessor #include
  Define = { link = 'PreProc' },                     -- preprocessor #define
  Macro = { link = 'PreProc' },                      -- same as Define
  PreCondit = { link = 'PreProc' },                  -- preprocessor #if, #else, #endif, etc.

  Type = { fmt(), p.fg('yellow'), p.bg() },          -- int, long, char, etc.
  StorageClass = { link = 'Type' },                  -- static, register, volatile, etc.
  Structure = { link = 'Type' },                     -- struct, union, enum, etc.
  Typedef = { link = 'Type' },                       -- A typedef

  Special = { fmt(), p.fg('red'), p.bg() },          -- any special symbol
  SpecialChar = { link = 'Special' },                -- special character in a constant
  Tag = { link = 'Special' },                        -- you can use CTRL-] on this
  Delimiter = { link = 'Special' },                  -- character that needs attention like , or .
  SpecialComment = { link = 'Special' },             -- special things inside a comment
  Debug = { link = 'Special' },                      -- debugging statements

  Underlined = { fmt('u'), p.fg('violet'), p.bg() }, -- text that stands out, HTML links

  Ignore = { fmt(), p.fg(), p.bg() },                -- left blank, hidden

  Error = { fmt('b'), p.fg('red'), p.bg() },         -- any erroneous construct

  Todo = { fmt('b', 'i'), p.fg('violet'), p.bg() },  -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
}
