@echo off >nul 2>nul
chcp 65001 >nul 2>nul
color 2F
@title NanaNana制作-GTA断网软件
netsh advfirewall firewall delete rule name="GTA5duan" >nul 2>nul
                                                                                                     
echo         GGGGGGGGGGGGG     TTTTTTTTTTTTTTTTTTTTTTT                    AAA                    555555555555555555 
echo      GGG::::::::::::G     T:::::::::::::::::::::T                   A:::A                   5::::::::::::::::5 
echo    GG:::::::::::::::G     T:::::::::::::::::::::T                  A:::::A                  5::::::::::::::::5 
echo   G:::::GGGGGGGG::::G     T:::::TT:::::::TT:::::T                 A:::::::A                 5:::::555555555555 
echo  G:::::G       GGGGGG     TTTTTT  T:::::T  TTTTTT                A:::::::::A                5:::::5            
echo G:::::G                           T:::::T                       A:::::A:::::A               5:::::5            
echo G:::::G                           T:::::T                      A:::::A A:::::A              5:::::5555555555   
echo G:::::G    GGGGGGGGGG             T:::::T                     A:::::A   A:::::A             5:::::::::::::::5  
echo G:::::G    G::::::::G             T:::::T                    A:::::A     A:::::A            555555555555:::::5 
echo G:::::G    GGGGG::::G             T:::::T                   A:::::AAAAAAAAA:::::A                       5:::::5
echo G:::::G        G::::G             T:::::T                  A:::::::::::::::::::::A                      5:::::5
echo  G:::::G       G::::G             T:::::T                 A:::::AAAAAAAAAAAAA:::::A         5555555     5:::::5
echo   G:::::GGGGGGGG::::G           TT:::::::TT              A:::::A             A:::::A        5::::::55555::::::5
echo    GG:::::::::::::::G           T:::::::::T             A:::::A               A:::::A        55:::::::::::::55 
echo      GGG::::::GGG:::G           T:::::::::T            A:::::A                 A:::::A         55:::::::::55   
echo         GGGGGG   GGGG           TTTTTTTTTTT           AAAAAAA                   AAAAAAA          555555555   
echo>nul 2>nul
echo>nul 2>nul
echo>nul 2>nul
echo>nul 2>nul
echo>nul 2>nul
echo>nul 2>nul
echo                                           ***********************************
echo                                           *         GTA5一键断网软件        *
echo                                           *     正在启动自动查找路径系统    *
echo                                           *             请稍候              *
echo                                           ***********************************

:1detect
for %%a in ( D E F G H ) do (
    if exist %%a:\ (
        cd /d %%a:\
        for /f "delims=" %%b in ('dir /s /a-d /b GTA5.exe') do (
            if exist "%%b" (
				echo "%%b" >nul 2>nul
				echo "%%b" >nul 2>nul
				echo "%%b" >nul 2>nul
				echo                         **********************************************************************
                echo                         *                        自动查找路径系统                            *
                echo                         *   "%%b"   *
                echo                         *                        当前查找到的路径↑                          *
                echo                         **********************************************************************
				Netsh.exe advfirewall firewall add rule name="GTA5duan" program="%%b" protocol=any dir=out enable=yes action=block profile=Private,Public,Domain >nul 2>nul
                goto deal
				
            )
         )
      )
)

:deal
echo .....
echo .....
echo .....
echo 已成功断网，不过你可以按任意键恢复网络...
pause>nul
goto 2detect

:2detect
set a=
set /p a=你确定要恢复网络吗？是请输入y,不是则n，想要退出软件请输入q:
if /i "%a%"=="n" (
    echo 不恢复网络...
	goto 4detect
	)
if /i "%a%"=="y" (
	netsh advfirewall firewall delete rule name="GTA5duan" >nul 2>nul
	echo 恢复网络...
	echo 已恢复网络，按任意键重新断网...
	pause>nul
	goto 1detect
	)
if /i "%a%"=="q" (
	goto 3detect
	echo 已恢复网络...
	)

:3detect
echo 退出软件.... 
echo GTA断网软件-NanaNana制作
netsh advfirewall firewall delete rule name="GTA5duan" >nul 2>nul
echo 恢复网络...
echo #     #                                  #     #                               
echo ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 
echo>nul 2>nul
echo>nul 2>nul
echo>nul 2>nul
timeout /t 3 >nul 2>nul
netsh advfirewall firewall delete rule name="GTA5duan" 
exit


:4detect
echo 按任意键恢复网络...
pause>nul
goto 2detect 

