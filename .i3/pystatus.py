from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %X KW%V ",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load")

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format="{temp:.0f}°C ",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="{used}/{total}G [{avail}G] ",)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
    format="{title}| {artist} |{album} ",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.run()

