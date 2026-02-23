return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    cmd = "CopilotChat",
    opts = function()
      local user = vim.env.USER or "User"
      user = user:sub(1, 1):upper() .. user:sub(2)
      return {
        auto_insert_mode = true,
        question_header = " " .. user .. " ",
        answer_header = " Copilot ",
        window = {
          width = 0.4,
        },
      }
    end,
    keys = {
      {
        "<leader>aa",
        function()
          return require("CopilotChat").toggle()
        end,
        desc = "Toggle (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>aq",
        function()
          vim.ui.input({ prompt = "Quick Chat: " }, function(input)
            if input and input ~= "" then
              require("CopilotChat").ask(input, { selection = require("CopilotChat.select").get_visual() })
            end
          end)
        end,
        desc = "Quick Chat (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>ax",
        "<cmd>CopilotChatClear<cr>",
        desc = "Clear (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>ae",
        "<cmd>CopilotChatExplain<cr>",
        desc = "Explain code",
        mode = { "v" },
      },
      {
        "<leader>ar",
        "<cmd>CopilotChatReview<cr>",
        desc = "Review code",
        mode = { "v" },
      },
      {
        "<leader>at",
        "<cmd>CopilotChatTests<cr>",
        desc = "Generate tests",
        mode = { "v" },
      },
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "copilot-chat",
        callback = function()
          vim.opt_local.relativenumber = false
          vim.opt_local.number = false
        end,
      })
      chat.setup(opts)
    end,
  },
}
