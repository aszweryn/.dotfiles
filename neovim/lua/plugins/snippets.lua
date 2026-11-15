local M = {}

function M.setup()
  local luasnip = require("luasnip")
  
  -- Load VSCode-style snippets from friendly-snippets 
  require("luasnip.loaders.from_vscode").lazy_load()
  
  -- Configure luasnip for specific filetypes
  luasnip.filetype_extend("python", {})  -- Add custom Python snippets if needed
  luasnip.filetype_extend("lua", {})     -- Add custom Lua snippets if needed
  luasnip.filetype_extend("bash", {})    -- Add custom Bash snippets if needed
  luasnip.filetype_extend("sh", {})      -- Add custom Shell script snippets if needed
  
  -- Add ability to use snippets from other languages (useful for embedded languages)
  luasnip.filetype_extend("markdown", { "python", "lua", "bash", "sh" })
end

return M
