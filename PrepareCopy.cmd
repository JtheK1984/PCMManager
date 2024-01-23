echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v Win64\Release\PCMManager.exe "e:\Inno\Setupfiles\Programme\PCMManager_x64"

copy /y /v Win64\Release\PCMManager.DE "e:\Inno\Setupfiles\Programme\PCMManager_x64"
copy /y /v Win64\Release\PCMManager.EN "e:\Inno\Setupfiles\Programme\PCMManager_x64"

copy /y /v PCMManager.docx "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v PCMManager.pdf "e:\Inno\Setupfiles\Programme\PCMManager"
copy /y /v PCMManager.htm "e:\Inno\Setupfiles\Programme\PCMManager"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Manager /1.6 /E:\Inno\Setupfiles\Programme\PCMManager