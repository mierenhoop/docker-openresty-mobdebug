require "mobdebug".start "172.17.0.1"

ngx.say "Greetings from the index page"

for i = 1, 20 do
  local value = i * i
  local message = string.format("The square of %d is %d", i, value)
  ngx.say(message)  -- try adding a breakpoint here
end

ngx.say("Your ip address is " .. ngx.var.remote_addr)

require "mobdebug".done()
