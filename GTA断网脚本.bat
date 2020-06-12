@echo off >nul 2>nul
chcp 65001 >nul 2>nul
color 2E
echo         GGGGGGGGGGGGG     TTTTTTTTTTTTTTTTTTTTTTT               AAA                    555555555555555555 
echo      GGG::::::::::::G     T:::::::::::::::::::::T              A:::A                   5::::::::::::::::5 
echo    GG:::::::::::::::G     T:::::::::::::::::::::T             A:::::A                  5::::::::::::::::5 
echo   G:::::GGGGGGGG::::G     T:::::TT:::::::TT:::::T            A:::::::A                 5:::::555555555555 
echo  G:::::G       GGGGGG     TTTTTT  T:::::T  TTTTTT           A:::::::::A                5:::::5            
echo G:::::G                           T:::::T                  A:::::A:::::A               5:::::5            
echo G:::::G                           T:::::T                 A:::::A A:::::A              5:::::5555555555   
echo G:::::G    GGGGGGGGGG             T:::::T                A:::::A   A:::::A             5:::::::::::::::5  
echo G:::::G    G::::::::G             T:::::T               A:::::A     A:::::A            555555555555:::::5 
echo G:::::G    GGGGG::::G             T:::::T              A:::::AAAAAAAAA:::::A                       5:::::5
echo G:::::G        G::::G             T:::::T             A:::::::::::::::::::::A                      5:::::5
echo  G:::::G       G::::G             T:::::T            A:::::AAAAAAAAAAAAA:::::A         5555555     5:::::5
echo   G:::::GGGGGGGG::::G           TT:::::::TT         A:::::A             A:::::A        5::::::55555::::::5
echo    GG:::::::::::::::G           T:::::::::T        A:::::A               A:::::A        55:::::::::::::55 
echo      GGG::::::GGG:::G           T:::::::::T       A:::::A                 A:::::A         55:::::::::55   
echo         GGGGGG   GGGG           TTTTTTTTTTT      AAAAAAA                   AAAAAAA          555555555    

del /f /s /q "%USERPROFILE%\Desktop\GTA5断网工具.bat" >nul 2>nul
echo 正在下载最新版本的断网工具
powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Nana0Nana/duanwang/master/duanwang.bat','%USERPROFILE%\Desktop\GTA5断网工具.bat')
timeout /t 2 >nul 2>nul
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
cls
echo 最新版本的断网工具已经下载到您的桌面，请查看。
timeout /t 2 >nul 2>nul
echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

echo                       #     #                                  #     #                               
echo                       ##    #      ##      #    #      ##      ##    #      ##      #    #      ##   
echo                       # #   #     #  #     ##   #     #  #     # #   #     #  #     ##   #     #  #  
echo                       #  #  #    #    #    # #  #    #    #    #  #  #    #    #    # #  #    #    # 
echo                       #   # #    ######    #  # #    ######    #   # #    ######    #  # #    ###### 
echo                       #    ##    #    #    #   ##    #    #    #    ##    #    #    #   ##    #    # 
echo                       #     #    #    #    #    #    #    #    #     #    #    #    #    #    #    # 

exit
