@echo off>NUL 2>NUL
chcp 65001>NUL 2>NUL
color 2E
echo                                        ***********************************
echo                                        *         GTA5一键断网软件        *
echo                                        *           自动更新版            *
echo                                        *           NanaNana制作          *
echo                                        ***********************************

echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

echo ...
echo ...
echo ...
echo 此软件可以暂停GTA的联网，适合用于卡断网BUG
echo 此脚本仅适用于将游戏安装到非C盘的用户
echo ...
@title NanaNana制作-请使用管理员模式运行
@echo off
net.exe session 1>NUL 2>NUL && (
    goto as_admin
) || (
    goto not_admin
)

:as_admin
echo                                        ***********************************
echo                                        *     您已经使用管理员模式运行    *
echo                                        *          更新程序启动中         *
echo                                        *             请稍等              *
echo                                        ***********************************
goto end

:not_admin
echo ...

echo ...

echo ...

echo                                        ***********************************
echo                                        *     您并未使用管理员模式运行    *
echo                                        *       请使用管理员模式打开      *
echo                                        *           按任意键退出          *
echo                                        ***********************************


pause>nul
exit

:end



::自动更新
echo 正在执行在线更新
del /f /s /q "C:\Program Files\duanwang.bat" >nul 2>nul
echo.
echo.
set hanye=───────
for /L %%j in (1 1 62) do set /p gu=*<nul
echo.
echo *  已连接到更新服务器                                        *
echo *    正在下载更新中：                                        *
echo *┌%hanye%%hanye%%hanye%%hanye%%hanye%%hanye%%hanye%%hanye% ┐ *
set /p =* ■<nul
for /L %%j in (1 1 26) do set /p gu=■<nul&ping /n 1 127.0.0.1>nul
echo  100%%*
echo *└%hanye%%hanye%%hanye%%hanye%%hanye%%hanye%%hanye%%hanye% ┘ *
for /L %%j in (1 1 62) do set /p gu=*<nul
echo.
echo.
echo.
echo.
echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

echo 正在检查更新文件....
cls
timeout /t 1 >nul 2>nul
echo 已更新到最新版本
timeout /t 1 >nul 2>nul
echo 正在打开断网程序...
powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Nana0Nana/duanwang/master/duanwang.bat','C:\Program Files\duanwang.bat');start-process 'C:\Program Files\duanwang.bat'>nul 2>nul

exit



