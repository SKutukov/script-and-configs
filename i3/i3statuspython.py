from i3pystatus import Status, Module

status = Status(standalone=True)
# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
     format="%a %-d %b %X KW%V",)

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format="{temp:.0f}°C",)

# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="eno1",
    format_up="{v4cidr}",)

# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="eno2",
    format_up="{v4cidr}",)

# Note: the network module requires PyPI package netifaces
#status.register("network",
#    interface="wlx503eaaa2c704",
#    format_up="{v4cidr}",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="{used}/{total}G [{avail}G]",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
#status.register("pulseaudio",
#    format="♪{volume}",)


status.run()
