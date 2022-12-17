require 'mp.msg'

local function take_screenshot()
  print(mp.get_property("playback-time"))
  mp.commandv("screenshot", "video")
end

mp.register_event("end-file", take_screenshot)
