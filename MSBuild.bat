call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMManager/PCMManager.dproj /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMManager/PCMManager.dproj /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v E:\Projekte\Windows\PCMManager\Win32\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager"

echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v E:\Projekte\Windows\PCMManager\Win64\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager_x64"
copy /y /v E:\Projekte\Windows\PCMManager\Win64\Release\PCMManager.DE "e:\Inno\Setupfiles\Programme\PCMManager_x64"
copy /y /v E:\Projekte\Windows\PCMManager\Win64\Release\PCMManager.EN "e:\Inno\Setupfiles\Programme\PCMManager_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMManager\PCMManager.docx "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v E:\Projekte\Windows\PCMManager\PCMManager.pdf "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v E:\Projekte\Windows\PCMManager\PCMManager.htm "e:\Inno\Setupfiles\Programme\PCMManager"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Manager /1.6 /E:\Inno\Setupfiles\Programme\PCMManager_x64
