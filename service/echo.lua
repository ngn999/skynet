local skynet = require "skynet"

skynet.start(function()
	skynet.dispatch("text", function(session, address, message)
                       print("echo",message, skynet.address(address), session)
                       -- local cmd, key , value = string.match(message, "(%w+) (%w+) ?(.*)")
                       skynet.ret(message)
    end)
	skynet.register "ECHO"
end)
