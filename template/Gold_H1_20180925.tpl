<chart>
id=131768084627173383
symbol=GOLD_micro
period_type=1
period_size=1
digits=2
tick_size=0.010000
position_time=1537470000
scale_fix=0
scale_fixed_min=1187.200000
scale_fixed_max=1213.140000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=4
mode=1
fore=0
grid=1
volume=0
scroll=1
shift=1
shift_size=19.170984
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
window_left=399
window_top=163
window_right=798
window_bottom=326
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
objects=43

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
name=H1 US30 R3
width=3
value1=1214.000000
</object>

<object>
type=1
name=H1 US30 R2
width=3
value1=1208.000000
</object>

<object>
type=1
name=H1 US30 R1
width=3
value1=1204.000000
</object>

<object>
type=1
name=H1 US30 S1
color=65280
width=3
value1=1196.000000
</object>

<object>
type=1
name=H1 US30 S2
color=65280
width=3
value1=1191.000000
</object>

<object>
type=1
name=H1 US30 S3
color=65280
width=3
value1=1183.000000
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
name=autotrade #41931566 sell 5.00 GOLD_micro at 1212.87
hidden=1
color=1918177
selectable=0
date1=1533704699
value1=1212.870000
</object>

<object>
type=31
name=autotrade #41969729 buy 5.00 GOLD_micro at 1215.57
hidden=1
color=11296515
selectable=0
date1=1533723314
value1=1215.570000
</object>

<object>
type=2
name=autotrade #41931566 -> #41969729
hidden=1
descr=1212.87 -> 1215.57
color=1918177
style=2
selectable=0
date1=1533704699
date2=1533723314
value1=1212.870000
value2=1215.570000
</object>

<object>
type=32
name=autotrade #42135292 sell 5.00 GOLD_micro at 1214.62
hidden=1
color=1918177
selectable=0
date1=1533792096
value1=1214.620000
</object>

<object>
type=32
name=autotrade #42192508 sell 5.00 GOLD_micro at 1212.75
hidden=1
color=1918177
selectable=0
date1=1533816503
value1=1212.750000
</object>

<object>
type=31
name=autotrade #42331701 buy 5.00 GOLD_micro at 1212.72
hidden=1
color=11296515
selectable=0
date1=1533879244
value1=1212.720000
</object>

<object>
type=2
name=autotrade #42192508 -> #42331701
hidden=1
descr=1212.75 -> 1212.72
color=1918177
style=2
selectable=0
date1=1533816503
date2=1533879244
value1=1212.750000
value2=1212.720000
</object>

<object>
type=31
name=autotrade #42331703 buy 5.00 GOLD_micro at 1212.72
hidden=1
color=11296515
selectable=0
date1=1533879248
value1=1212.720000
</object>

<object>
type=2
name=autotrade #42135292 -> #42331703
hidden=1
descr=1214.62 -> 1212.72
color=1918177
style=2
selectable=0
date1=1533792096
date2=1533879248
value1=1214.620000
value2=1212.720000
</object>

<object>
type=31
name=autotrade #42659749 buy 5.00 GOLD_micro at 1206.44
hidden=1
color=11296515
selectable=0
date1=1534156053
value1=1206.440000
</object>

<object>
type=32
name=autotrade #42687277 sell 5.00 GOLD_micro at 1203.04
hidden=1
color=1918177
selectable=0
date1=1534164749
value1=1203.040000
</object>

<object>
type=2
name=autotrade #42659749 -> #42687277
hidden=1
descr=1206.44 -> 1203.04
color=11296515
style=2
selectable=0
date1=1534156053
date2=1534164749
value1=1206.440000
value2=1203.040000
</object>

<object>
type=32
name=autotrade #42687825 sell 5.00 GOLD_micro at 1202.01
hidden=1
color=1918177
selectable=0
date1=1534164977
value1=1202.010000
</object>

<object>
type=32
name=autotrade #43268896 sell 2.00 GOLD_micro at 1172.02
hidden=1
color=1918177
selectable=0
date1=1534398546
value1=1172.020000
</object>

<object>
type=32
name=autotrade #44212867 sell 1.00 GOLD_micro at 1188.19
hidden=1
color=1918177
selectable=0
date1=1535018817
value1=1188.190000
</object>

<object>
type=31
name=autotrade #44247441 buy 1.00 GOLD_micro at 1191.11
hidden=1
color=11296515
selectable=0
date1=1535032703
value1=1191.110000
</object>

<object>
type=2
name=autotrade #44212867 -> #44247441
hidden=1
descr=1188.19 -> 1191.11
color=1918177
style=2
selectable=0
date1=1535018817
date2=1535032703
value1=1188.190000
value2=1191.110000
</object>

<object>
type=31
name=autotrade #44759728 buy 1.00 GOLD_micro at 1213.42
hidden=1
color=11296515
selectable=0
date1=1535456749
value1=1213.420000
</object>

<object>
type=32
name=autotrade #44970640 sell 0.50 GOLD_micro at 1203.42
hidden=1
color=1918177
selectable=0
date1=1535556634
value1=1203.420000
</object>

<object>
type=32
name=autotrade #45385421 sell 1.00 GOLD_micro at 1201.74
hidden=1
color=1918177
selectable=0
date1=1535731399
value1=1201.740000
</object>

<object>
type=32
name=autotrade #45386233 sell 1.00 GOLD_micro at 1202.86
hidden=1
color=1918177
selectable=0
date1=1535731559
value1=1202.860000
</object>

<object>
type=31
name=autotrade #45675818 buy 1.00 GOLD_micro at 1195.71
hidden=1
color=11296515
selectable=0
date1=1536055007
value1=1195.710000
</object>

<object>
type=32
name=autotrade #45697110 sell 1.00 GOLD_micro at 1193.97
hidden=1
color=1918177
selectable=0
date1=1536059513
value1=1193.970000
</object>

<object>
type=2
name=autotrade #45675818 -> #45697110
hidden=1
descr=1195.71 -> 1193.97
color=11296515
style=2
selectable=0
date1=1536055007
date2=1536059513
value1=1195.710000
value2=1193.970000
</object>

<object>
type=31
name=autotrade #45713312 buy 1.00 GOLD_micro at 1196.26
hidden=1
color=11296515
selectable=0
date1=1536063006
value1=1196.260000
</object>

<object>
type=32
name=autotrade #45736606 sell 1.00 GOLD_micro at 1191.94
hidden=1
descr=[sl 1192.00]
color=1918177
selectable=0
date1=1536070477
value1=1191.940000
</object>

<object>
type=2
name=autotrade #45713312 -> #45736606
hidden=1
descr=1196.26 -> 1191.94
color=11296515
style=2
selectable=0
date1=1536063006
date2=1536070477
value1=1196.260000
value2=1191.940000
</object>

<object>
type=32
name=autotrade #45737197 sell 1.00 GOLD_micro at 1192.23
hidden=1
color=1918177
selectable=0
date1=1536070596
value1=1192.230000
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
scale_fix_max_val=11739.460000
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
scale_fix_min_val=-3.454505
scale_fix_max=0
scale_fix_max_val=3.719805
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