return {
  cmd = {"lua-language-server"},
  filetypes = { "lua" },
  log_level = 2,
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
  },
}
