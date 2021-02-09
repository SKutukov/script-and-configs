from i3pystatus import Status, Module
from i3pystatus import IntervalModule
from currency_module.i3statuspython import CurrencyStatus

status = Status(standalone=True)
# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.modules.append(CurrencyStatus())

#status.register("clock",
#     format="%a %-d %b %X KW%V",)

# Shows your CPU temperature, if you have a Intel CPU
#status.register("temp",
#   format="{temp:.0f}°C",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
#status.register("disk",
#    path="/",
#    format="{used}/{total}G [{avail}G]",)

#status.register("disk",
#    path="/HDD/",
#    format="{used}/{total}G [{avail}G]",)


# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
#status.register("pulseaudio",
#    format="♪{volume}",)

#status.register("",
#    format="♪{volume}",)

status.run()
