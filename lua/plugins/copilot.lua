return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      prompts={
        prompt="Please rename the variable correctly in given selection based on context",
        selection=function(source)
          local select= require('CopilotChat.select')
        return select.visual(source)
        end,
      },
    },
    keys={
      {"<leader>zc",":CopilotChat<CR>",mode="n", desc="Chat with Copilot"},
      {"<leader>ze",":CopilotChatExplain<CR>",mode="v", desc="Explain Code"},
      {"<leader>zr",":CopilotChatReview<CR>",mode="v", desc="Review Code"},
      {"<leader>zf",":CopilotChatFix<CR>",mode="v", desc="Fix Code Issue"},
      {"<leader>zo",":CopilotChatOptimize<CR>",mode="v", desc="Optimize Code"},
      {"<leader>zd",":CopilotChatDocsDocs<CR>",mode="v", desc="Generate Docs"},
      {"<leader>zt",":CopilotChatDocsTests<CR>",mode="v", desc="Generate Tests"},
      {"<leader>zm",":CopilotChatCommit<CR>",mode="n", desc="Generate Commit Message"},
      {"<leader>zs",":CopilotChatCommit<CR>",mode="v", desc="Generate Commit For Selection"},
    },
  },
}
