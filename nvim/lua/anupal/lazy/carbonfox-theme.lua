return {
    "EdenEast/nightfox.nvim",
    config = function()
        local nightfox = require("nightfox")
        nightfox.setup({
            options = {
                transparent = true,
                styles = {
                  comments = "italic",
                  keywords = "bold",
                  types = "italic,bold",
                }
            }
        })
    end,
}
