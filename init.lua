if vim.g.vscode then
  require "vscode.commands"
  require "vscode.options"
  require "vscode.keymap"
else
  require "options"
  require "keymap"
  require "commands"
  require "plugins"
end
