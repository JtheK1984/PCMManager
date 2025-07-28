echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v Win32\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v Win32\Release\PCMManager.DE "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v Win32\Release\PCMManager.EN "e:\Inno\Setupfiles\Programme\PCMManager"
echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v Win64\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager_x64"
copy /y /v Win64\Release\PCMManager.DE "e:\Inno\Setupfiles\Programme\PCMManager_x64"
copy /y /v Win64\Release\PCMManager.EN "e:\Inno\Setupfiles\Programme\PCMManager_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v PCMManager.docx "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v PCMManager.pdf "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v PCMManager.htm "e:\Inno\Setupfiles\Programme\PCMManager"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Manager /1.0 /E:\Inno\Setupfiles\Programme\PCMManager
