local M = {}

function M:init()

end

function M:dispose()

end

function M:plugins(package_manager)
  package_manager:add_packer_packages {
    "hrsh7th/cmp-path",
    requires = {
      "hrsh7th/nvim-cmp"
    },
  }
end


return M
