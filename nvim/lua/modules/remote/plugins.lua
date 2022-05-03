local remote = {}
local conf = require("modules.remote.config")

remote["chipsenkbeil/distant.nvim"] = {
    config = conf.distant,
}

return remote
