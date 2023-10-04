echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v Win64\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager_x64"
echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Manager /1.6 /E:\Inno\Setupfiles\Programme\PCMManager