<chart>
id=131768084865206503
symbol=US30Cash
period_type=0
period_size=30
digits=2
tick_size=0.010000
position_time=1532485800
scale_fix=0
scale_fixed_min=23972.500000
scale_fixed_max=25627.270000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=1
mode=1
fore=0
grid=1
volume=0
scroll=1
shift=1
shift_size=19.698871
fixed_pos=0.000000
ohlc=0
one_click=0
one_click_btn=1
bidline=1
askline=0
lastline=0
days=0
descriptions=0
tradelines=1
window_left=156
window_top=156
window_right=1622
window_bottom=629
window_type=3
background_color=0
foreground_color=16777215
barup_color=65280
bardown_color=65280
bullcandle_color=0
bearcandle_color=16777215
chartline_color=65280
volumes_color=3329330
grid_color=10061943
bidline_color=10061943
askline_color=255
lastline_color=49152
stops_color=255
windows_total=3

<window>
height=151.467798
objects=12

<indicator>
name=Main
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1
</indicator>

<indicator>
name=Moving Average
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=129
style=0
width=1
arrow=251
color=255
</graph>
period=10
method=0
</indicator>

<indicator>
name=Fractals
path=
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=3
style=0
width=1
arrow=217
shift_y=-8
color=8421504
</graph>

<graph>
name=
draw=3
style=0
width=1
arrow=218
shift_y=8
color=8421504
</graph>
</indicator>

<indicator>
name=Bollinger Bands
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=131
style=0
width=1
arrow=251
color=7451452
</graph>

<graph>
name=
draw=131
style=0
width=1
arrow=251
color=7451452
</graph>

<graph>
name=
draw=131
style=0
width=1
arrow=251
color=7451452
</graph>
period=20
deviation=2.000000
</indicator>
<object>
type=1
name=H1 US30 R3
value1=25930.000000
</object>

<object>
type=1
name=H1 US30 R2
value1=25705.000000
</object>

<object>
type=1
name=H1 US30 R1
value1=25570.000000
</object>

<object>
type=1
name=H1 US30 S1
color=65280
value1=25340.000000
</object>

<object>
type=1
name=H1 US30 S2
color=65280
value1=25260.000000
</object>

<object>
type=1
name=H1 US30 S3
color=65280
value1=25150.000000
</object>

<object>
type=32
name=autotrade #40244055 sell 1.00 US30Cash at 25440.90
hidden=1
color=1918177
selectable=0
date1=1532573374
value1=25440.900000
</object>

<object>
type=31
name=autotrade #40315161 buy 1.00 US30Cash at 25458.50
hidden=1
color=11296515
selectable=0
date1=1532612102
value1=25458.500000
</object>

<object>
type=2
name=autotrade #40244055 -> #40315161
hidden=1
descr=25440.90 -> 25458.50
color=1918177
style=2
selectable=0
date1=1532573374
date2=1532612102
value1=25440.900000
value2=25458.500000
</object>

<object>
type=31
name=autotrade #40652353 buy 0.20 US30Cash at 25464.50
hidden=1
color=11296515
selectable=0
date1=1532960321
value1=25464.500000
</object>

<object>
type=108
name=H1 Arrowed Line 54561
color=65535
date1=1530764400
date2=1533772800
value1=24126.400000
value2=25919.477160
</object>

<object>
type=108
name=M30 Arrowed Line 45699
color=65535
date1=1530273060
date2=1533240000
value1=24419.500000
value2=26019.555030
</object>

</window>

<window>
height=26.444074
objects=0

<indicator>
name=Volumes
path=
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=1
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=7867.300000
expertmode=0
fixed_height=-1

<graph>
name=
draw=11
style=0
width=1
arrow=251
color=32768,255
</graph>
real_volumes=0
</indicator>
</window>

<window>
height=22.088128
objects=0

<indicator>
name=MACD
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=-93.450690
scale_fix_max=0
scale_fix_max_val=82.166290
expertmode=0
fixed_height=-1

<graph>
name=
draw=2
style=0
width=1
arrow=251
color=12632256
</graph>

<graph>
name=
draw=1
style=2
width=1
arrow=251
color=255
</graph>
fast_ema=12
slow_ema=26
macd_sma=9
</indicator>
</window>
</chart>