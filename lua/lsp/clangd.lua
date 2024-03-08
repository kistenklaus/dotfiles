local lspconfig = require("lspconfig")

return {
  cmd = {
    "clangd",
    "--query-driver="..
    -- "/usr/arm-none-eabi/include/**,"..
    -- "/usr/arm-none-eabi/include/c++/12.2.0/**,"..
    -- "/usr/arm-none-eabi/include/c++/12.2.0/arm-none-eabi/**,"..
    "/home/kistenklaus/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include/**,"..
    "/home/kistenklaus/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include/c++/12.3.1/**,"..
    "/home/kistenklaus/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include/c++/12.3.1/arm-none-eabi/**"
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = lspconfig.util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  )
}
