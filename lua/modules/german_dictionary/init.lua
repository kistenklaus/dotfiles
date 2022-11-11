local M = {}


local function dic_config()
  require("cmp_dictionary").setup{
    dic = {
      ["*"] = { "~/.dict/autocomplete.txt", "~/.dict/bigger_autocomplete.dic"}
    }
  }
end




function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages(
    {
      "uga-rosa/cmp-dictionary",
      config = dic_config,
    })
end

function M:init() end


return M
