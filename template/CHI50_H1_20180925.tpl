<chart>
id=131764792449394336
symbol=CHI50Cash
period_type=1
period_size=1
digits=0
tick_size=1.000000
position_time=1537365600
scale_fix=0
scale_fixed_min=10868.000000
scale_fixed_max=11834.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=8
mode=1
fore=0
grid=1
volume=0
scroll=1
shift=1
shift_size=18.398967
fixed_pos=0.000000
ohlc=0
one_click=0
one_click_btn=1
bidline=1
askline=1
lastline=0
days=0
descriptions=0
tradelines=1
window_left=551
window_top=232
window_right=1102
window_bottom=464
window_type=1
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
objects=19

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

<indicator>
name=Custom Indicator
path=Indicators\Examples\ZigZag.ex5
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
name=ZigZag(12,5,3)
draw=4
style=0
width=2
color=255
</graph>
<inputs>
ExtDepth=12
ExtDeviation=5
ExtBackstep=3
</inputs>
</indicator>
<object>
type=1
name=H1 CHI50 R3
width=3
value1=12000.000000
</object>

<object>
type=1
name=H1 CHI50 R2
width=3
value1=11800.000000
</object>

<object>
type=1
name=H1 CHI50 R1
width=3
value1=11532.000000
</object>

<object>
type=1
name=H1 CHI50 S1
color=65280
width=3
value1=11169.270455
</object>

<object>
type=1
name=H1 CHI50 S2
color=65280
width=3
value1=11000.000000
</object>

<object>
type=1
name=H1 CHI50 S3
color=65280
width=3
value1=10800.000000
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
type=31
name=autotrade #41025147 buy 0.20 US30Cash at 25411.50
hidden=1
color=11296515
selectable=0
date1=1533122704
value1=25411.500000
</object>

<object>
type=31
name=autotrade #41027899 buy 0.10 US30Cash at 25406.00
hidden=1
color=11296515
selectable=0
date1=1533123714
value1=25406.000000
</object>

<object>
type=31
name=autotrade #41045194 buy 0.10 US30Cash at 25384.00
hidden=1
color=11296515
selectable=0
date1=1533131487
value1=25384.000000
</object>

<object>
type=32
name=autotrade #41058082 sell 0.10 US30Cash at 25389.50
hidden=1
color=1918177
selectable=0
date1=1533134230
value1=25389.500000
</object>

<object>
type=2
name=autotrade #41045194 -> #41058082
hidden=1
descr=25384.00 -> 25389.50
color=11296515
style=2
selectable=0
date1=1533131487
date2=1533134230
value1=25384.000000
value2=25389.500000
</object>

<object>
type=32
name=autotrade #44621693 sell 0.10 CHI50Cash at 11527
hidden=1
color=1918177
selectable=0
date1=1535386276
value1=11527.000000
</object>

<object>
type=31
name=autotrade #45107466 buy 0.10 CHI50Cash at 11389
hidden=1
color=11296515
selectable=0
date1=1535614787
value1=11389.000000
</object>

<object>
type=32
name=autotrade #45148818 sell 0.10 CHI50Cash at 11312
hidden=1
color=1918177
selectable=0
date1=1535631199
value1=11312.000000
</object>

<object>
type=2
name=autotrade #45107466 -> #45148818
hidden=1
descr=11389 -> 11312
color=11296515
style=2
selectable=0
date1=1535614787
date2=1535631199
value1=11389.000000
value2=11312.000000
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
scale_fix_max_val=1289.590000
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
scale_fix_min_val=-33.705500
scale_fix_max=0
scale_fix_max_val=123.935500
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