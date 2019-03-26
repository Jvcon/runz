; RunZ:Codetool
Codetool:
    ; 第一个参数为标签名
    ; 第二个为搜索项，即该功能的表述，内容随意
    ; 第三个参数为 true 时，当搜索无结果也会显示，默认为 false
    ; 第四个参数为绑定的全局热键，默认无
    @("UrlEncode", "URL编码")
	@("UrlDecode", "URL反编码")
	@("DateParse", "Date -> YYYYMMDDHH24MISS")
	@("Unix2Human", "Unix Timestamp -> Human Time")
	@("Human2Unix", "Human Time -> Unix Timestamp")
return

UrlEncode:
    text := Arg == "" ? clipboard : Arg
    clipboard := UrlEncode(text)
    DisplayResult(clipboard)
return

UrlDecode:
    text := Arg == "" ? clipboard : Arg
    clipboard := LC_UrlDecode(text)
    DisplayResult(clipboard)
return

DateParse:
	text := Arg == "" ? clipboard : Arg
    clipboard := DateParse(text)
    DisplayResult(clipboard)
return

Unix2Human:
	text := Arg == "" ? clipboard : Arg
	clipboard := Time_unix2human(text)
	DisplayResult(clipboard)
return

Human2Unix:
	text := Arg == "" ? clipboard : Arg
	clipboard := Time_human2unix(text)
	DisplayResult(clipboard)
return

#Include %A_ScriptDir%\Lib\URI.ahk
#Include %A_ScriptDir%\Lib\DateParse.ahk
#Include %A_ScriptDir%\Lib\unixtimestamp.ahk