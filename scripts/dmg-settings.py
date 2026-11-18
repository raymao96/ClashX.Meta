from pathlib import Path

app = Path(defines["app"])
files = [str(app)]
icon = str(app / "Contents/Resources/AppIcon.icns")
symlinks = {"Applications": "/Applications"}
background = defines["background"]
window_rect = ((200, 180), (660, 450))
icon_locations = {app.name: (175, 170), "Applications": (485, 170)}
icon_size = 128
show_status_bar = False
