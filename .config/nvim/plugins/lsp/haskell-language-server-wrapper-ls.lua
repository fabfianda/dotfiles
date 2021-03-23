-- ghcup install hls
require'lspconfig'.hls.setup{
	cmd = { "haskell-language-server-wrapper", "--lsp" };
  filetypes = { "haskell", "lhaskell" };
  settings = {
    languageServerHaskell = { formattingProvider = "stylish-haskell" }
  };
}
