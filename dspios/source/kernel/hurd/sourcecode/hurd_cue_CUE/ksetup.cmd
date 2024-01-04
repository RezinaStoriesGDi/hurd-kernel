@echo off
title Setup �Hurd�

@echo off
title Boot Hurd
color 9F

            echo Enter to '/st' command, in to start boot Hurd
            echo.
            echo Loading configuration Hurd
            echo.
		    echo.
		    echo [hurd@boot]>$
			echo $
:G

set /p x=
if %x%==st( echo Hurd load boot files
            echo.
		    echo.
		    echo [Hurd] compiling kernel:
		    echo [Hurd] kernel compiled
		    echo.
		    echo Compiler: Compilation completed with code 0."=true";
		    echo Driver's Successfully loaded. "=true";
		    echo. 
		    echo Hurd Starting...
		   
		    echo.
		    echo.
		    echo.
		    echo.
		    echo kernel version: 1.0.6.2
		   
 ) ELSE ( echo Command Not Found. Boot Hurd is enter to 'st')

:G

 if %x%==stload_d(a) ( echo Hurd load boot files on Disk :A
            echo.
		    echo.
		    echo [Hurd] Generating directory
		    echo [Hurd] Kernel compiled
			echo [Hurd] Source saved
		    echo.
		    echo Compiler: Source code loaded in Disk :A
		    echo Driver's Successfully loaded. "=true";
		    echo. 
		    echo Hurd Starting...
		   
		    echo.
		    echo.
		    echo.
		    echo.
		    echo kernel version: 1.0.6.2
		   
 ) ELSE ( echo Command Not Found. Boot Hurd is enter to 'st')

 goto :G