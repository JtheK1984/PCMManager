call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMManager/PCMManager.dproj /t:Clean;Build;Compress /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMManager/PCMManager.dproj /t:Clean;Build;Compress /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMManager\Win32\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v E:\Projekte\Windows\PCMManager\Win64\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager_x64"

echo "Git aktualisieren"
cd "E:\Projekte\Windows\PCMManager"
git commit -am 'Release'
git push origin 

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Manager /1.6 /E:\Inno\Setupfiles\Programme\PCMManager

pause