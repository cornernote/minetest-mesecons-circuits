if (event.type=="on") then digiline_send("rtc", "GET") end

if (event.type=="digiline" and event.channel=="rtc") then
    time = {}
    time.hour = math.floor(event.msg * 24)
    time.hour1 = math.floor(time.hour / 10)
    time.hour2 = math.floor(time.hour - time.hour1 * 10)
    time.minute = math.floor((event.msg * 24 - time.hour) * 60)
    time.minute1 = math.floor(time.minute / 10)
    time.minute2 = math.floor(time.minute - time.minute1 * 10)
    digiline_send("time", time)
end
