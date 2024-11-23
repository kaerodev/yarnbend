
# Copyright (c) 2010 Aldo Cortesi
            # Copyright (c) 2010, 2014 dequis
            # Copyright (c) 2012 Randall Ma
            # Copyright (c) 2012-2014 Tycho Andersen
            # Copyright (c) 2012 Craig Barnes
            # Copyright (c) 2013 horsik
            # Copyright (c) 2013 Tao Sauvage
            #
            # Permission is hereby granted, free of charge, to any person obtaining a copy
            # of this software and associated documentation files (the "Software"), to deal
            # in the Software without restriction, including without limitation the rights
            # to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
            # copies of the Software, and to permit persons to whom the Software is
            # furnished to do so, subject to the following conditions:
            #
            # The above copyright notice and this permission notice shall be included in
            # all copies or substantial portions of the Software.
            #
            # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
            # IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
            # FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
            # AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
            # LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
            # OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
            # SOFTWARE.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

#GRUVBOX colours
gruvbox_colours = [
        "#282828",# 0 bg
        "#CC241D",# 1 red
        "#98971A",# 2 green
        "#D78821",# 3 yellow
        "#458588",# 4 blue
        "#B16286",# 5 purple
        "#689D6A",# 6 aqua
        "#A89984",# 7 gray
        "#928374",# 8 gray 2
        "#FB4934",# 9 red
        "#B8BB26",# 10 green
        "#FABD2F",# 11 yellow
        "#83A598",# 12 blue
        "#D3869B",# 13 purple
        "#8EC07C",# 14 aqua
        "#EBDBB2",# 15 fg
        ]

nord_colours = [
        # I have changed the bg colour because the stock nord colour doesn't look right to me for the bar
        "#1C1C1C",# 0 bg
        "#3B4252",
        "#434C5E",
        "#4C566A",
        "#D8DEE9",
        "#E5E9F0",
        "#ECEFF4",
        "#8FBCBB",
        "#88C0D0",
        "#81A1C1",
        "#5E81AC",
        "#BF616A",
        "#D08770",
        "#EBCB8B",
        "#A3BE8C",
        "#B48EAD"
        ]

mod = "mod4"
terminal = guess_terminal()

keys = [
        # Switch between windows
        Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
        Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
        Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
        Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
        Key([mod], "space", lazy.layout.next(),
            desc="Move window focus to other window"),

        # Move windows between left/right columns or move up/down in current stack.
        # Moving out of range in Columns layout will create new column.
        Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
            desc="Move window to the left"),
        Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
            desc="Move window to the right"),
        Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
            desc="Move window down"),
        Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

        # Grow windows. If current window is on the edge of screen and direction
        # will be to screen edge - window would shrink.
        Key([mod, "control"], "h", lazy.layout.grow_left(),
            desc="Grow window to the left"),
        Key([mod, "control"], "l", lazy.layout.grow_right(),
            desc="Grow window to the right"),
        Key([mod, "control"], "j", lazy.layout.grow_down(),
            desc="Grow window down"),
        Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
        Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

        # Toggle between split and unsplit sides of stack.
        # Split = all windows displayed
        # Unsplit = 1 window displayed, like Max layout, but still with
        # multiple stack panes
        Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
            desc="Toggle between split and unsplit sides of stack"),
        Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

        # Toggle between different layouts as defined below
        Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
        Key([mod], "c", lazy.window.kill(), desc="Kill focused window"),

        Key([mod, "control"], "r", lazy.restart(),
            desc="Restart Qtile"),

        Key([mod, "control"], "q", 
            lazy.shutdown(), 
            desc="Shutdown Qtile"),

        Key([mod], "r", 
            lazy.spawncmd(),
            desc="Spawn a command using a prompt widget"),

# my own extra stuff 
Key([mod], "g", 
    lazy.spawn("rofi -show drun"),
    desc="Launch DMenu"),

Key([mod], "space", 
    lazy.spawn("rofi -show window"),
    desc=""),

Key([mod], "b",
    lazy.spawn("qutebrowser"),
    desc = "Launch qutebrowser"),

Key([mod], "v",
    lazy.spawn("pcmanfm"),
    desc = "Launch pcmanfm"),

Key([], "Print",
    lazy.spawn("scrot"),
    desc="Take Screenshot"),

# Print Screen
#Key([], "Print", lazy.spawn("gnome-screenshot -i")),
#Key([mod,], "Print", lazy.spawn("gnome-screenshot -a"))

# Meda Keys
#Key([])
]

groups = [Group("DEV"),# DEV
          Group("GAME"),# GAME
          Group("MISC"),# MISC
          Group("WWW", matches=[Match(wm_class=["qutebrowser"])]),# WWW
          Group("AUDIO", matches=[Match(wm_class=["Audacity"])]),# AUDIO
          Group("CHAT", matches=[Match(wm_class=["discord"])]),# CHAT
          Group("QUICK"),# QUICK
          Group("REC", matches=[Match(wm_class=["obs"])]),# RECORDING
          ]

keys.extend([

    Key([mod], "a", lazy.group["DEV"].toscreen()),# DEV
    Key([mod], "s", lazy.group["GAME"].toscreen()),# GAME
    Key([mod], "d", lazy.group["MISC"].toscreen()),# MISC
    Key([mod], "f", lazy.group["WWW"].toscreen()),# WWW
    Key([mod], "1", lazy.group["AUDIO"].toscreen()),# AUDIO
    Key([mod], "2", lazy.group["CHAT"].toscreen()),# CHAT
    Key([mod], "3", lazy.group["QUICK"].toscreen()),# QUICK
    Key([mod], "4", lazy.group["REC"].toscreen()),# RECORDING

    Key([mod, "shift"], "a", lazy.window.togroup("DEV", switch_group=True),
        desc="Switch to & move focused window to group {}".format("DEV")),

    Key([mod, "shift"], "s", lazy.window.togroup("GAME", switch_group=True),
        desc="Switch to & move focused window to group {}".format("GAME")),

    Key([mod, "shift"], "d", lazy.window.togroup("MISC", switch_group=True),
        desc="Switch to & move focused window to group {}".format("MISC")),

    Key([mod, "shift"], "f", lazy.window.togroup("WWW", switch_group=True),
        desc="Switch to & move focused window to group {}".format("WWW")),

    Key([mod, "shift"], "1", lazy.window.togroup("AUDIO", switch_group=True),
        desc="Switch to & move focused window to group {}".format("AUDIO")),

    Key([mod, "shift"], "2", lazy.window.togroup("CHAT", switch_group=True),
        desc="Switch to & move focused window to group {}".format("CHAT")),

    Key([mod, "shift"], "3", lazy.window.togroup("QUICK", switch_group=True),
        desc="Switch to & move focused window to group {}".format("QUICK")),

    Key([mod, "shift"], "4", lazy.window.togroup("REC", switch_group=True),
        desc="Switch to & move focused window to group {}".format("REC"))

    ])

print(groups[0])

'''
for i in groups:
keys.extend([
# mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

# mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
# Or, use below if you prefer not to switch to that group.
# # mod1 + shift + letter of group = move focused window to group
# Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
#     desc="move focused window to group {}".format(i.name)),
])
    '''
layout_theme = {
        "border_width": 2,
        "border_focus": "689D6A"
        }

layouts = [
    layout.Columns(border_focus_stack=['#689D6A', '#689D6A'], margin=8, border_width=2),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(margin=5, border_width=1),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
    ]

widget_defaults = dict(
    font='Hack',
    fontsize=13,
    padding=3,
    )
extension_defaults = widget_defaults.copy()

screens = [
        Screen(
            top=bar.Bar(
                [
                    widget.Spacer(length=6, background=nord_colours[0]),
                    widget.CurrentLayout(background=nord_colours[0]),
                    widget.Spacer(length=6, background=nord_colours[0]),

                    widget.GroupBox(background=nord_colours[0], highlight_method="line", highlight_color=nord_colours[2], foreground=nord_colours[2]),
                    widget.Prompt(),
                    #widget.WindowName(background="#434C5E"),
                    widget.Moc(background="BF616A", padding=100),
                    widget.Chord(
                        chords_colors={
                            'launch': ("#ff0000", "#ffffff"),
                            },
                        name_transform=lambda name: name.upper(),
                        ),
                    widget.Systray(background=nord_colours[0] + "00"),

                    widget.Spacer(),

                    widget.NetGraph(background=nord_colours[0], foreground=nord_colours[6], graph_color=nord_colours[6], line_width=2, border_width=1, border_color=nord_colours[6]),
                    widget.TextBox("|", background=nord_colours[0], foreground=nord_colours[6]),

                    widget.PulseVolume(background=nord_colours[0], foreground=nord_colours[15]),
                    widget.TextBox("|", background=nord_colours[0], foreground=nord_colours[6]),

                    widget.CPU(format="CPU[{freq_current}GHz {load_percent}%]", background=nord_colours[0], foreground=nord_colours[14]),
                    widget.Memory(measure_mem="G", background=nord_colours[0], format='[{MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}]', foreground=nord_colours[13]),
                    widget.TextBox("|", background=nord_colours[0], foreground=nord_colours[6]),

                    widget.Clock(format='%Y-%m-%d %a %I:%M %p', background=nord_colours[0], foreground=nord_colours[12]),
                    widget.TextBox("|", background=nord_colours[0], foreground=nord_colours[6]),

                    widget.QuickExit(background=nord_colours[0], foreground=nord_colours[11]),
                    widget.Spacer(length=6, background=nord_colours[0]),
                    ],
                28, margin=[0, 0, 0, 0], border_width=0, background="#434C5E00"
                ),
            ),
        ]

# Drag floating layouts.
mouse = [
        Drag([mod], "Button1", lazy.window.set_position_floating(),
             start=lazy.window.get_position()),
        Drag([mod], "Button3", lazy.window.set_size_floating(),
             start=lazy.window.get_size()),
        Click([mod], "Button2", lazy.window.bring_to_front())
        ]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
    ])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
