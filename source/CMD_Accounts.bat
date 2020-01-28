@echo off
set asidjasdbjasdbjasndjasndjkasndj=%cd%
%homedrive%
:home
title CMD_Accounts 
color 0f
if exist "%userprofile%\desktop\cmdacoBin" attrib +s +h +a "%userprofile%\desktop\cmdacoBin"
cls
echo.
echo CMD_Accounts
echo =============
echo.
echo 1) Log In
echo 2) Sign Up
echo 3) Exit
echo.
set /p op=
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
goto error
:2
cls
echo Sign Up
echo ======================================
echo.
set /p newname="Enter new username:"
if "%newname%"=="%newname%" goto inputname
:inputname
cd "%userprofile%\desktop"
if exist "cmdacoBin" goto skip
if not exist "cmdacoBin" goto noskip
:noskip
md "cmdacoBin"
attrib +s +h +a "cmdacoBin"
goto skip
:skip
cd "%userprofile%\desktop\cmdacoBin"
if exist "%newname%.bat" goto namexist
if not exist "%newname%.bat" goto skip2
:skip2
echo set realusername=%newname%> "%newname%.bat"
attrib +s +h +a "%newname%".bat
goto next
:next
echo.
set lalalalalalalalalalalalalalalala=%cd%
%asidjasdbjasdbjasndjasndjkasndj:~0,2%
data\et.dll -m -p "Enter new Password:" pswd
%homedrive%
cd "%lalalalalalalalalalalalalalalala%"
if "%pswd%"=="%pswd%" goto inputpass
:inputpass
cd "%userprofile%\desktop\cmdacoBin"
echo set password=%pswd%>> "%newname%.bat"
attrib +s +h +a "%newname%.bat"
goto next1
:namexist
echo.
echo The entered username already exists.
echo Press any key to return. . .
pause >nul
goto 2
:next1
cls
echo CMD_Accounts
echo ============
echo.
echo Your account has been successfully created!
echo.
pause
goto home
:1
color 07
cls
echo CMD_Accounts Log In
echo ================================
echo.
Set /p logname=Username:
if "%logname%"=="%logname%" goto 2.1
:2.1
echo.
set lalalalalalalalalalalalalalalala=%cd%
%asidjasdbjasdbjasndjasndjkasndj:~0,2%
data\et.dll -m -p "Password:" logpass
%homedrive%
cd "%lalalalalalalalalalalalalalalala%"
if "%logpass%"=="%logpass%" goto login
:login
cd "%userprofile%\desktop\cmdacoBin"
if exist "%logname%.bat" goto call
if not exist "%logname%.bat" goto errorlog
:call
call "%logname%.bat"
if "%password%"=="%logpass%" goto logdone
goto errorlog
:errorlog
color 0c
echo.
echo Username or Password incorrect.
echo Access denied.
pause >nul
goto home
:logdone
cls
echo CMD_Accounts
echo ============
echo.
echo Successfully logged in!
echo.
pause
goto account
:account
cls 
cd "%userprofile%\desktop\cmdacoBin" 
call "%realusername%color.bat"
call "%realusername%.bat" 
color %colorcode% 
cls
echo.
echo -------------------------------------------------------------------------------
echo %realusername%
echo -------------------------------------------------------------------------------
echo.
echo 0) User Control Panel
echo 1) Net Send Messenger
echo 2) Program Launcher
echo 3) Notepad
echo 4) Pop-up Maker
echo 5) Folder Factory
echo 6) Remote Shutdown (For computer networks)
echo 7) Log Out
echo.
set /p opcao=
if %opcao%==0 goto aco1
if %opcao%==1 goto netmenu
if %opcao%==2 goto programs
if %opcao%==3 goto aco4
if %opcao%==4 goto aco5
if %opcao%==5 goto aco6
if %opcao%==6 goto aco7
if %opcao%==7 goto home
goto erroraco
:erroraco
cls
echo Error.
echo Option you chose does not exist.
echo.
echo Press any key to return. . .
pause >nul
goto account
:aco1
cls
echo.
echo -------------------------------------------------------------------------------
echo %realusername% Control Panel
echo -------------------------------------------------------------------------------
echo.
echo 1) Change Interface Colours
echo 2) Change Username
echo 3) Change Password
echo 4) Start/Stop Messenger Service
echo 5) Start Sc.exe
echo 6) Return to previous page
echo.
set /p ucp=
if %ucp%==1 goto ucp1
if %ucp%==2 goto ucp3
if %ucp%==3 goto ucp2
if %ucp%==4 goto ucp4
if %ucp%==5 goto ucp5
if %ucp%==6 goto account
:ucp1
cls
cls
echo.
echo -------------------------------------------------------------------------------
echo %realusername% Control Panel
echo -------------------------------------------------------------------------------
echo.
echo Two digit number: 1st digit = Background Colour
echo                   2nd digit = Font Colour
echo.
echo ----------------------------------------------------
echo Colour Values
echo ----------------------------------------------------
echo 0 = Black     8 = Gray
echo 1 = Blue      9 = Light Blue
echo 2 = Green     A = Light Green
echo 3 = Aqua      B = Light Aqua
echo 4 = Red       C = Light Red
echo 5 = Purple    D = Light Purple
echo 6 = Yellow    E = Light Yellow
echo 7 = White     F = Brite White
echo -----------------------------------------------------
echo Example: "02" produces Green Text on Black Background
set /p coloraco=Enter Colour Code:
if %coloraco%==%coloraco% goto applycolor
:applycolor
color %coloraco%
cd "%userprofile%\desktop\cmdacoBin"
echo set colorcode=%coloraco% > "%realusername%color.bat"
attrib +h +s +a "%realusername%color.bat"
echo.
echo Color Applied.
pause
goto account
:3
exit
:ucp2
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername% Control Panel: Change Passwords
echo -------------------------------------------------------------------------------
echo.
echo Enter Credidentials
echo -------------------
echo.
set /p cpu=Enter Username:
if "%cpu%"=="%realusername%" goto chgpassnext
echo.
color 0C
echo Wrong username!
echo.
echo Access denied!
echo.
pause
if defined colorcode color %colorcode%
if not defined colorcode color 07
goto ucp2
:chgpassnext
cd "%userprofile%\desktop\cmdacoBin"
if not exist "%cpu%".bat (
echo.
color 0C
echo Username not found!
echo.
echo Access denied!
echo.
pause
if defined colorcode color %colorcode%
if not defined colorcode color 07
goto ucp2
)
echo.
set lalalalalalalalalalalalalalalala=%cd%
%asidjasdbjasdbjasndjasndjkasndj:~0,2%
data\et.dll -m -p "Enter current password for this account:" chgpscon
%homedrive%
cd "%lalalalalalalalalalalalalalalala%"
if "%chgpscon%"=="%chgpscon%" goto ucp2.1
:ucp2.1
cd "%userprofile%\desktop\cmdacoBin"
call "%cpu%".bat
if "%chgpscon%"=="%password%" goto conpassdone
if not "%chgpscon%"=="%password%" (
color 0C
echo.
echo Password Invalid!
echo.
echo Access Denied!
echo.
pause
if defined colorcode color %colorcode%
if not defined colorcode color 07
goto ucp2
)
:conpassdone
echo.
set lalalalalalalalalalalalalalalala=%cd%
%asidjasdbjasdbjasndjasndjkasndj:~0,2%
data\et.dll -m -p "Enter new password:" newpass
%homedrive%
cd "%lalalalalalalalalalalalalalalala%"
if "%newpass%"=="%newpass%" goto appnp
:appnp
cd "%userprofile%\desktop\cmdacoBin"
attrib -s -h -a "%cpu%".bat
del /f /q "%cpu%".bat
echo set realusername=%realusername%> "%realusername%".bat
echo set password=%newpass%>> "%realusername%".bat
attrib +s +h +a "%realusername%".bat
call "%realusername%".bat
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername% Control Panel: Change Passwords
echo -------------------------------------------------------------------------------
echo.
echo You have successfully changed the password for %cpu%
echo.
pause
goto account
:ucp3
set oldusername=%realusername%
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername% Control Panel
echo -------------------------------------------------------------------------------
echo.
echo Your current username is %realusername%
echo.
set /p chgname=Change username:
if "%chgname%"=="%chgname%" goto ucp3.1
:ucp3.1
cd "%userprofile%\desktop\cmdacoBin"
if exist "%chgname%".bat (
color 0C
echo.
echo Username already exists.
echo.
pause
if defined coloraco color %coloraco%
if not defined coloraco color 07
goto ucp3
)
attrib -h -s -a "%realusername%".bat
del /f /q "%realusername%".bat
echo set realusername=%chgname%> "%chgname%".bat
echo set password=%logpass%>> "%chgname%".bat
attrib +h +s +a "%chgname%".bat
call "%chgname%".bat
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername% Control Panel
echo -------------------------------------------------------------------------------
echo.
echo Your previous username: %oldusername%
echo has been changed to: %chgname%
echo.
echo Press any key to return to your account. . .
pause >nul
goto account
:ucp4
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername% Control Panel: Start/Stop Messenger
echo -------------------------------------------------------------------------------
echo.
echo String Values   Payload
echo =============   ========================  
echo.
echo Start           Starts Messenger Service
echo Stop            Stops Messenger Service
echo Continue        Continues/Resumes Messenger
echo Pause           Pauses Messenger Service
echo Back            Back to previous page
echo ========================================
echo.
set /p mval=Enter String Value:
if "%mval%"=="start" goto stm
if "%mval%"=="stop" goto spm
if "%mval%"=="continue" goto ctm
if "%mval%"=="pause" goto pm
if "%mval%"=="back" goto aco1
goto ucp4error
:stm
echo.
Net Start "Messenger"
pause
goto account
:spm
echo.
Net Stop "Messenger"
pause
goto account
:ctm
net continue "Messenger"
pause
goto account
:pm
net pause "Messenger"
pause
goto account
:ucp4error
echo.
echo Command not valid.
echo Press any key to go back to your account. . .
pause >nul
goto account
:ucp5
if exist ucp5.bat goto skip
if not exist ucp5.bat goto next
:next
cd "%userprofile%\desktop\cmdacoBin"
echo @echo off > "ucp5.bat"
echo title Sc.exe >> "ucp5.bat"
echo cd "%userprofile%\desktop\cmdacoBin" >> "ucp5.bat"
echo call "%realusername%color.bat" >> "ucp5.bat"
echo color %colorcode% >> "ucp5.bat"
echo cls >> "ucp5.bat"
echo sc.exe >> "ucp5.bat"
attrib +a +s +h "ucp5.bat"
:skip
cd "%userprofile%\desktop\cmdacoBin"
start ucp5.bat
echo.
pause
goto account
:netmenu
cls
echo -------------------------------------------------------------------------------
echo  %realusername%: Net Send Messenger
echo -------------------------------------------------------------------------------
echo.
echo 1) Send via this network
echo 2) Send in this computer
echo 3) Read messages
set /p parlakchaptan=Option:
if %parlakchaptan%==1 goto netmenu.1
if %parlakchaptan%==2 goto netmenu.2
if %parlakchaptan%==3 goto netmenu.3
:netmenu.3
cls
echo -------------------------------------------------------------------------------
echo  %realusername%: Net Send Messenger
echo -------------------------------------------------------------------------------
echo.
cd "%userprofile%\desktop\cmdacoBin"
if not exist %logname%messages.txt goto nopethere
:itisallrightheretogothereinthewholeworldinindia
type %logname%messages.txt
pause >nul
goto account
:nopethere
echo There are no messages.
pause >nul
goto account
:netmenu.2
cls
cd %userprofile%\desktop\cmdacoBin
echo -------------------------------------------------------------------------------
echo  %realusername%: Net Send Messenger
echo -------------------------------------------------------------------------------
echo.
echo %logname%: Net Send Messenger
echo Enter Account name to send message to
echo.
set /p hjklgotmfidnvifnriufnfgk=Account:
set /p hjklgotmfidnvifnriufnfgk45=Message:
echo Press any key to send message...
pause >nul
echo %logname%:%hjklgotmfidnvifnriufnfgk45% >>%hjklgotmfidnvifnriufnfgk%messages.txt
cls
goto account
:netmenu.1
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername%: Net Send Messenger
echo -------------------------------------------------------------------------------
echo.
echo Enter computer name to send message to
echo.
set /p comname=Computer:
if "%comname%"=="%comname%" goto aco2next
:aco2next
echo.
set /p comm=Message:
if "%comm%"=="%comm%" goto confirmsend
:aco2next2
echo.
set /p spamop=Send Message?(Y/N):
if %spamop%==%spamop% goto confirmsend
:confirmsend
echo.
echo Press any key to send message. . .
pause >nul
goto aco2payload
:aco2payload
if %spamop%==y goto makemess
if %spamop%==n goto account
:makemess
net send "%comname%" "%comm%"
echo.
pause
goto account
:programs
cls
echo.
echo -------------------------------------------------------------------------------
echo  %realusername%: Program Launcher
echo -------------------------------------------------------------------------------
echo.
echo Program Launcher Menu
echo =====================
echo.
echo 1) Launch an Application
echo 2) Launch from 'My Applications'
echo 3) Add new program to 'My Applications'
echo 4) Return to previous page
echo.
set /p promenu=
if %promenu%==1 goto aco3.1
if %promenu%==2 goto aco3.2
if %promenu%==3 goto aco3.3
if %promenu%==4 goto account
:aco3.1
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo Program Launcher
echo ------------------------------------------------------------------------------- 
echo.
echo Select an application to open 
echo ============================= 
echo. 
echo 1) Internet Explorer 
echo 2) InstallShield Update Manager
echo 3) RealPlayer 
echo 4) Safari Web Browser 
echo 5) Windows Calendar
echo 6) Windows Contacts
echo 7) Windows Defender
echo 8) Windows DVD Maker 
echo 9) Windows Mail 
echo 10) Windows Media Center 
echo 11) Windows Media Player 
echo 12) Windows Meeting Space 
echo 13) Windows Movie Maker 
echo 14) Windows Photo Gallery 
echo 15) Windows Update 
echo 16) Calculator 
echo 17) Command Prompt 
echo 18) Connect to a Network Projector 
echo 19) Notepad 
echo 20) Paint 
echo 21) Remote Desktop Connection 
echo 22) Snipping Tool 
echo 23) Sound Recorder 
echo 24) Windows Firewall
echo 25) Sync Center 
echo 26) Welcome Center 
echo 27) Windows Explorer 
echo 28) Windows Sidebar 
echo 29) Wordpad 
echo 30) Backup Status and Configuration 
echo 31) Character Map 
echo 32) Computer 
echo 33) Control Panel 
echo 34) Disk Cleanup 
echo 35) Disk Defragmenter 
echo 36) System Information 
echo 37) System Restore 
echo 38) Task Scheduler 
echo 39) Windows Easy Transfer 
echo 40) Windows MarketPlace 
echo 41) Windows Web Site 
echo 42) Chess Titans 
echo 43) FreeCell 
echo 44) Hearts 
echo 45) InkBall 
echo 46) Mahjong Titans 
echo 47) Minesweeper 
echo 48) Pinball 
echo 49) Purble Place 
echo 50) Solitaire 
echo 51) Spider Solitaire 
echo 52) HyperCam2 
echo 53) Mozilla Firefox 
echo 54) Startup Folder 
echo 55) Microsoft Visual Basic Express Edition 2008 
echo 56) %username% Folder 
echo 57) My Documents 
echo 58) My Music 
echo 59) My Pictures 
echo 60) Launch Custom File (Run) 
echo ============================= 
echo. 
set /p var=Enter Numeral Option: 
if %var%==1 start internetexplorer.exe 
if %var%==2 start ISUSPM.exe 
if %var%==3 start realplayer.exe 
if %var%==4 start Safari.exe 
if %var%==5 start WinCal.exe 
if %var%==6 start wab.exe 
if %var%==7 start "C:\Program Files\Windows Defender\MSASCui.exe"
if %var%==8 start DVDMaker.exe 
if %var%==9 start WinMail.exe 
if %var%==10 start "C:\Windows\ehome\eshell.exe" 
if %var%==11 start wmplayer.exe 
if %var%==12 start "C:\Program Files\Windows Collaboration\WinCollab.exe" 
if %var%==13 start MOVIEMK.exe
if %var%==14 start "C:\Program Files\Windows Photo Gallery\WindowsPhotoGallery.exe" 
if %var%==15 start "C:\Windows\System32\wuapp.exe" 
if %var%==16 start calc.exe 
if %var%==17 start cmd.exe 
if %var%==18 start netproj.exe 
if %var%==19 start notepad.exe 
if %var%==20 start mspaint.exe 
if %var%==21 start mstsc.exe 
if %var%==22 start snippingtool.exe 
if %var%==23 start SoundRecorder.exe 
if %var%==24 start firewallcontrolpanel.exe 
if %var%==25 start mobsync.exe 
if %var%==26 start control.exe 
if %var%==27 start explorer.exe 
if %var%==28 start sidebar.exe 
if %var%==29 start wordpad.exe 
if %var%==30 start sdclt.exe
if %VAR%==31 start charmap.exe
if %var%==32 start "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories\System Tools\computer.lnk"
if %var%==33 start control.exe
if %var%==34 start cleanmgr.exe
if %var%==35 start dfrgui.exe
if %var%==36 start msinfo32.exe
if %var%==37 start rstrui.exe
if %var%==38 start taskschd.exe
if %var%==39 start migwiz.exe
if %var%==40 start http://www.windowsmarketplace.com/?WT.mc_id=0806_271
if %var%==41 start http://www.microsoft.com/windows/
if %var%==42 start C:\Program Files\Microsoft Games\Chess.exe
if %var%==43 start freecell.exe
if %var%==44 start hearts.exe
if %var%==45 start inkball.exe
if %var%==46 start mahjong.exe
if %var%==47 start minesweeper.exe
if %var%==48 start pinball.exe
if %var%==49 start purbleplace.exe
if %var%==50 start solitaire.exe
if %var%==51 start spidersolitaire.exe
if %var%==52 start "C:\Program Files\HyCam2\HyCam2.exe"
if %var%==53 start firefox.exe
if %var%==54 start "C:\Users\%username%\Start Menu\Programs\Startup"
if %var%==55 start vbexpress.exe
if %var%==56 start "%userprofile%"
if %var%==57 start "%userprofile%\My desktop"
if %var%==58 start "%userprofile%\My Music"
if %var%==59 start "%userprofile%\My Pictures"
if %var%==60 goto runcustom
goto account
:runcustom
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo Program Launcher
echo ------------------------------------------------------------------------------- 
echo.
set /p runfile=Run //
if "%runfile%"=="%runfile%" start %runfile%
goto account
:aco3.2
cd "%userprofile%\desktop\cmdacoBin"
cls
call "myprograms%logname%.bat"
if errorlevel 1 goto mypronotexist
goto acoooonext
:mypronotexist
cls
echo You currently do not have any programs in this list.
echo To add programs select 'Add new program to my applications'
echo from the Program Launcher Menu.
echo.
pause
goto programs
:acoooonext
echo.
echo ===============================================================================
set /p clpl=Type filename option:
if "%clpl%"=="%clpl%" start %clpl%
goto account
:aco3.3
if exist "%userprofile%\desktop\cmdacoBin\myprograms%logname%" goto skip111
if not exist "%userprofile%\desktop\cmdacoBin\myprograms%logname%" goto noskip111
:noskip111
cd "%userprofile%\desktop\cmdacoBin"
echo @echo off >> "myprograms%logname%.bat"
echo echo Filename options                      File Nicknames >> "myprograms%logname%.bat"
echo echo ==================================================== >> "myprograms%logname%.bat"
echo echo. >> "myprograms%logname%.bat"
:skip111
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo Program Launcher
echo ------------------------------------------------------------------------------- 
echo.
echo NOTE : The file should be present in the
echo %homedrive%\Windows\System32 folder.
echo.
echo Follow instructions to add custom launch file:
echo ----------------------------------------------
echo.
set /p cfne=Enter filename of custom file:
if "%cfne%"=="%cfne%" goto aco3.3next
:aco3.3next
echo.
set /p cnfcf=Enter custom string nickname for file:
if "%cnfcf%"=="%cnfcf%" goto aco3.3next1
:aco3.3next1
goto addfiletolist
:addfiletolist
echo echo %cfne%                                %cnfcf% >> "%userprofile%\desktop\cmdacoBin\myprograms%logname%.bat"
echo.
set /p addfprompt=Would you like to add another filep(Y/N)?
if %addfprompt%==y goto skip111
if %addfprompt%==n goto account
:aco4
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Notepad
echo ------------------------------------------------------------------------------- 
echo.
set /p notesave=Save text document as (no extensions):
if "%notesave%"=="%notesave%" goto aco4next
:aco4next
echo.
echo %notesave% will be saved to:
echo ---------------------------
echo.
echo 1) Desktop
echo 2) Documents
echo 3) Custom Location
echo.
set /p noteloc=
if %noteloc%==1 goto makenote
if %noteloc%==2 goto makenote
if %noteloc%==3 goto clnote
:clnote
echo.
set /p variable=Enter custom location filepath:
if "%variable%"=="%variable%" goto makenote
:makenote
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Notepad
echo ------------------------------------------------------------------------------- 
echo.
echo Begin typing. Press enter after each line to be saved to %notesave%
echo Exit when you are done
echo -------------------------------------------------------------------
echo.
set /p notetxt=
if %noteloc%==1 cd "%userprofile%\desktop"
if %noteloc%==2 cd "%userprofile%\documents"
if %noteloc%==3 cd "%variable%"
if "%notetxt%"=="%notetxt%" echo %notetxt% > "%notesave%.txt"
goto noteloop
:noteloop
set /p notetxt2=
if "%notetxt2%"=="%notetxt2%" echo %notetxt2% >> "%notesave%.txt"
goto noteloop
:aco5
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Pop-up Maker
echo ------------------------------------------------------------------------------- 
echo.
set /p popupfil=Enter filename for Pop-up(no extensions):
if "%popupfil%"=="%popupfil%" goto aco5next
:aco5next
echo.
set /p poptitle=Enter titlebar name for your pop-up:
if "%poptitle%"=="%poptitle%" goto aco5next1
:aco5next1
echo.
set /p poptext=Enter Text for your pop-up:
if "%poptext%"=="%poptext%" goto aco5next2
:aco5next2
echo.
echo Select Buttons
echo ==============
echo.
echo 0) OK button
echo 1) OK and CANCEL
echo 2) ABORT, RETRY, and IGNORE
echo 3) YES, NO, and CANCEL
echo 4) YES and NO
echo 5) RETRY and CANCEL
set /p butpop=Type 1/2/3/4:
if %butpop%==%butpop% goto aco5next3
:aco5next3
echo.
echo Select Icon
echo ===========
echo.
echo 16) Critical Message Icon
echo 48) Warning Message Icon
echo 32) Question Mark Icon
echo 64) Information Icon
echo.
set /p popicon=Type 16/48/32/64:
if %popicon%==%popicon% goto aco5next4
:aco5next4
echo.
echo Your Pop-up is being created on your desktop...
ping localhost -n 3 >nul
cd "%userprofile%\desktop"
echo x=msgbox("%poptext%",%butpop%+%popicon%,"%poptitle%") > "%popupfil%.vbs"
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Pop-up Maker
echo ------------------------------------------------------------------------------- 
echo.
echo Your Pop-up was successfully created on your desktop.
echo.
pause
goto account

:aco6
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Folder Factory
echo ------------------------------------------------------------------------------- 
echo.
echo Folder Factory
echo ==============
echo.
echo 1) Create a new folder
echo 2) Go back because you were just wondering what 'Folder Factory' was.
echo.
set /p ffconfirm=
if %ffconfirm%==1 goto aco6.1
if %ffconfirm%==2 goto account
:aco6.1
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Folder Factory
echo ------------------------------------------------------------------------------- 
echo.
set /p newfold=Type name for new folder:
if "%newfold%"=="%newfold%" goto aco6.1next
:aco6.1next
echo.
echo Select location for folder
echo ==========================
echo.
echo 1) Desktop
echo 2) Documents
echo 3) Custom
echo.
set /p newfoldloc=
if %newfoldloc%==1 goto makenfd
if %newfoldloc%==2 goto makenfdoc
if %newfoldloc%==3 goto prtnfl
:prtnfl
echo.
set /p nflprt=Type filepath for location of %newfold%:
if "%nflprt%"=="%nflprt%" goto mncfl
:mncfl
cd %nflprt%
md "%newfold%"
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Folder Factory
echo ------------------------------------------------------------------------------- 
echo.
echo %newfold% folder was created in %nflprt%
echo.
echo Press any key to return to your account. . .
pause >nul
goto account
:makenfd
cd "%userprofile%\desktop"
md "%newfold%"
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Folder Factory
echo ------------------------------------------------------------------------------- 
echo.
echo %newfold% folder was created on your desktop.
echo.
echo Press any key to return to your account. . .
pause >nul
goto account
:makenfdoc
cd "%userprofile%\documents"
md "%newfold%"
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Folder Factory
echo ------------------------------------------------------------------------------- 
echo.
echo %newfold% folder was created in your desktop.
echo.
echo Press any key to return to your account. . .
pause >nul
goto account
:aco7
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Remote Shutdown
echo ------------------------------------------------------------------------------- 
echo.
echo To see a list of computers on the network goto Start Menu + Run + Type: cmd
echo + Type: net view + Press enter.
echo --------------------------------
echo.
set /p rscm=Enter computername to remote shutdown:
if "%rscm%"=="%rscm%" goto aco7next
:aco7next
echo.
set /p plrs=Enter Seconds until shutdown:
if %plrs%==%plrs% goto aco7next1
:aco7next1
echo.
set /p 7crs=Enter comment:
if "%7crs%"=="%7crs%" goto aco7next2
:aco7next2
echo.
echo Press any key to begin remote shutdown. . .
pause >nul
shutdown /s /m \\%rscm% /t %plrs% /c "%7crs%"
cls 
echo. 
echo ------------------------------------------------------------------------------- 
echo %logname% Remote Shutdown
echo ------------------------------------------------------------------------------- 
echo.
echo Shutdown Launched.
echo.
pause
goto account