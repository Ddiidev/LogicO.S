@Echo off
::SERVE PARA TESTA SE TEM CONEXÃO COM A INTERNET.
ping www.google.com.br -n 2 -w 300 1>Nul 2>Nul
if %errorlevel% == 1 (
	echo.False:%errorlevel%>"%~dp0\Error.txt"
) else (
	echo.True:%errorlevel%>"%~dp0\Error.txt"
)
Exit /b %errorlevel%