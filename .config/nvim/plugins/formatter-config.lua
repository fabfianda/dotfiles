function prettier_formatter()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
    stdin = true
  }
end

require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = {
        prettier_formatter
      },
      javascriptreact = {
        prettier_formatter
      },
      typescript = {
        prettier_formatter
      },
      typescriptreact = {
        prettier_formatter
      },
      vue = {
        prettier_formatter
      },
      css = {
        prettier_formatter
      },
      scss = {
        prettier_formatter
      },
      json = {
        prettier_formatter
      },
      yml = {
        prettier_formatter
      },
      yaml = {
        prettier_formatter
      },
      dhall = {
        -- dhall format
        function()
          return {
            exe = "dhall",
            args = {"format"},
            stdin = true
          }
        end
      },
      haskell = {
        -- stylish haskell
        function()
          return {
            exe = "stylish-haskell",
            stdin = true
          }
        end
      },
      rust = {
        -- Rustfmt
        function()
          return {
            exe = "rustfmt",
            args = {"--emit=stdout"},
            stdin = true
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      python = {
        -- luafmt
        function()
          return {
            exe = "black",
            args = {"-"},
            stdin = true
          }
        end
      }
    }
  }
)
