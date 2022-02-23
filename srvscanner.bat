@ECHO OFF
FOR /F %%i IN (srv-records.txt) DO NSLOOKUP -type=srv %%i.%1|find /v "Server:"|find /v "Address:"| findstr /v "^$" >> srv-records-%1.log