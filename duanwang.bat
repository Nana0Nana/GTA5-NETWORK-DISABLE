@echo off
chcp 65001
@title NanaNana制作-GTA断网软件
netsh advfirewall firewall delete rule name="GTA5duan" 

:1detect

echo 正在自动查找GTA5路径...
::文件为GTA5.exe，找到一个就停止.
::A B C D E这些字母代表盘符
for %%a in ( D E F G H ) do (
    if exist %%a:\ (
        cd /d %%a:\
        for /f "delims=" %%b in ('dir /s /a-d /b GTA5.exe') do (
            if exist "%%b" (
                echo 路径查找成功
				echo "%%b"
				Netsh.exe advfirewall firewall add rule name="GTA5duan" program="%%b" protocol=any dir=out enable=yes action=block profile=Private,Public,Domain
                goto deal
				
            )
         )
      )
)

:deal
echo .....
echo .....
echo .....
echo 已成功断网，不过你可以按任意键恢复网络
pause>nul
goto 2detect

:2detect
set a=
set /p a=你确定要退出吗？是请输入y,不是则n :
if /i "%a%"=="n" (
    echo 重新断网.... 
	goto 1detect
	)
if /i "%a%"=="y"  echo 退出软件
goto 3detect

:3detect
netsh advfirewall firewall delete rule name="GTA5duan" 
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作
echo GTA一键断网软件-NanaNana制作


timeout /t 3
netsh advfirewall firewall delete rule name="GTA5duan" 


exit




