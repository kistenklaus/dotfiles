local M = {}

function M:init()
  --check if .vim directory exists
  --create .vim directory with command
  --determine build type [cmake, make, gcc]
  --write to compile.sh / run.sh / clean.sh
  --create compile_commands.json
  --command that updates compile_commands based on build_config
  --.vim scripts will be executed in a terminal window
end

function M:dispose()
end

function M:packer(use)
end

function M:lsp_on_server_ready(server)
end

return M
