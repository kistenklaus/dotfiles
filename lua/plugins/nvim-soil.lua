
local function configure()
  require'soil'.setup{
    -- If you want to use Plant UML jar version instead of the install version
    puml_jar = "/path/to/plantuml.jar",
    -- If you want to customize the image showed when running this plugin
    image = {
        darkmode = false, -- Enable or disable darkmode 
        format = "png", -- Choose between png or svg
    }
}
end

return {
 'javiorfo/nvim-soil',
 config = configure
}
