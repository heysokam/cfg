return {
  { "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      settings = {
        -- tsserver_format_options = {
        --   insertSpaceAfterCommaDelimiter = false, -- insertSpaceAfterCommaDelimiter?: boolean;
        --   insertSpaceAfterSemicolonInForStatements = false, -- insertSpaceAfterSemicolonInForStatements?: boolean;
        --   insertSpaceBeforeAndAfterBinaryOperators = false, -- insertSpaceBeforeAndAfterBinaryOperators?: boolean;
        --   insertSpaceAfterConstructor = false, -- insertSpaceAfterConstructor?: boolean;
        --   insertSpaceAfterKeywordsInControlFlowStatements = false, -- insertSpaceAfterKeywordsInControlFlowStatements?: boolean;
        --   insertSpaceAfterFunctionKeywordForAnonymousFunctions = false, -- insertSpaceAfterFunctionKeywordForAnonymousFunctions?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false, -- insertSpaceAfterOpeningAndBeforeClosingEmptyBraces?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis = false, -- insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets = false, -- insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = false, -- insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces = false, -- insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces?: boolean;
        --   insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces = false, -- insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces?: boolean;
        --   insertSpaceAfterTypeAssertion = false, -- insertSpaceAfterTypeAssertion?: boolean;
        --   insertSpaceBeforeFunctionParenthesis = false, -- insertSpaceBeforeFunctionParenthesis?: boolean;
        --   placeOpenBraceOnNewLineForFunctions = false, -- placeOpenBraceOnNewLineForFunctions?: boolean;
        --   placeOpenBraceOnNewLineForControlBlocks = false, -- placeOpenBraceOnNewLineForControlBlocks?: boolean;
        --   insertSpaceBeforeTypeAnnotation = false, -- insertSpaceBeforeTypeAnnotation?: boolean;
        --   semicolons = 'ignore', -- semicolons?: SemicolonPreference;
        -- }
      }
    },
  }
}
