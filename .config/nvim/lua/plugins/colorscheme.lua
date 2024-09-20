return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
      highlight_groups = {
        --- Keyword
        Keyword = { fg = "pine", italic = false, bold = false },

        --- Identifiers
        Identifier = { fg = "text", italic = false, bold = false },
        IdentifierBuiltin = { fg = "text", italic = false, bold = true },
        ["@parameter"] = { link = "Identifier" },
        ["@property"] = { link = "Identifier" },
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { link = "IdentifierBuiltin" },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.member"] = { link = "Identifier" },
        ["@tag.attribute"] = { link = "Identifier" },

        --- Literals
        Literal = { fg = "rose", italic = false, bold = false },
        Boolean = { link = "Literal" },
        Number = { link = "Literal" },
        Character = { link = "Literal" },
        String = { link = "Literal" },
        ["@string.regexp"] = { link = "String" },
        ["@string.escape"] = { link = "String" },

        --- Functions
        Function = { fg = "foam", italic = false, bold = false },
        FunctionBuiltin = { fg = "foam", italic = false, bold = true },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "FunctionBuiltin" },
        ["@function.macro"] = { link = "Function" },
        ["@function.method"] = { link = "Function" },
        ["@function.method.call"] = { link = "Function" },
        ["@tag"] = { link = "Function" },
        ["@tag.builtin"] = { link = "FunctionBuiltin" },

        --- Types
        Type = { fg = "iris", italic = false, bold = false },
        TypeBuiltin = { fg = "iris", italic = false, bold = true },
        ["@constructor"] = { link = "Type" },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "TypeBuiltin" },
        ["@type.definition"] = { link = "Type" },
        ["@type.qualifier"] = { link = "Type" },

        --- Punctuation
        Punctuation = { fg = "subtle" },
        ["@constructor.lua"] = { link = "Punctuation" },

        ---lukas-reineke/indent-blankline.nvim and virt-column.nvim
        IblIndent = { fg = "overlay" },
        IblScope = { fg = "overlay" },
        IblWhiteSpace = { fg = "overlay" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "rose-pine" },
  },
}
