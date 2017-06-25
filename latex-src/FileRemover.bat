For /r . %%f IN (*.ptd) do del "%%f"
For /r . %%f IN (*.aux) do del "%%f"
For /r . %%f IN (*.log) do del "%%f"
For /r . %%f IN (*.bak) do del "%%f"
For /r . %%f IN (*.bbl) do del "%%f"
For /r . %%f IN (*.blg) do del "%%f"
For /r . %%f IN (*.gz) do del "%%f"
For /r . %%f IN (*.synctex) do del "%%f"
For /r . %%f IN (*.lof) do del "%%f"
For /r . %%f IN (*.lot) do del "%%f"
For /r . %%f IN (*.toc) do del "%%f"
For /r . %%f IN (*.out) do del "%%f"

cls
@echo off
echo.
echo.
echo               ========================================================
echo.              
echo    =====^>^>    File Remover ver 1.3   updated @ 03/24/2014
echo.
echo                 Written by ----- Afrand Dini
echo.    
echo                                  afrand67d@yahoo.com
echo. 
echo. 
echo                                               All rights are reserved.
echo.
echo               ========================================================
echo.
echo    =====^>^>    This Program delete all auxiliary (unwanted) files ... 
echo.
echo               ========================================================
echo.
echo    =====^>^>    Before executing this file:
echo.
echo                 ^*^*^* Quick builds and bibtex runs must be done! ^*^*^*
echo. 
echo               ========================================================
echo.
pause