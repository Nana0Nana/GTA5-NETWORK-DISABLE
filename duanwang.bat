@echo off
chcp 65001
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
echo 已成功断网，不过你可以按任意键手动恢复网络
pause>nul
::恢复网络，删除防火墙
netsh advfirewall firewall delete rule name="GTA5duan" 
echo 网络已恢复
goto 3detect

:2detect
Netsh.exe advfirewall firewall add rule name="GTA5duan" program="%a%" protocol=any dir=out enable=yes action=block profile=Private,Public,Domain
echo 断网成功，按任意键恢复联网
pause 1>nul
goto 3detect

:3detect
set a=
set /p a=你确定要退出吗？是请输入y,不是则n :
if /i "%a%"=="y" (
	goto 4detect
	)
if /i "%a%"=="n" echo 重新断网....
goto 1detect

:4detect
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




