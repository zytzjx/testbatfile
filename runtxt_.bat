@echo off
FOR /F "tokens=* delims=" %%x in (uuid.txt) DO (
start C:\ProgramData\Futuredial\CMC\phonedll\PST_APE_UNIVERSAL_USB_FD\resource\ideviceutil.exe -active -udid=%%x
)

timeout /t 120

FOR /F "tokens=* delims=" %%x in (uuid.txt) DO (
start C:\ProgramData\Futuredial\CMC\phonedll\PST_APE_UNIVERSAL_USB_FD\resource\iDeviceUtilCore.exe --factoryreset -u %%x
)

timeout /t 120

FOR /F "tokens=* delims=" %%x in (uuid.txt) DO (
start C:\ProgramData\Futuredial\CMC\phonedll\PST_APE_UNIVERSAL_USB_FD\resource\iDeviceUtilCore.exe --info -u %%x
)

