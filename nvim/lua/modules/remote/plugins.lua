local remote = {}
local conf = require("modules.remote.config")

remote["chipsenkbeil/distant.nvim"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.distant,
}

return remote
