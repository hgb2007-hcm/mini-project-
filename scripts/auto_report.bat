@echo off
chcp 65001 > nul
echo ==================================================
echo       GREEN-TECH SYSTEM - LOG AUTOMATION REPORT
echo ==================================================
echo Thoi gian chay: %date% %time%
echo Dang loc cac loi CRITICAL va ERROR tu file log...

if not exist "..\backup" mkdir "..\backup"

findstr /i "CRITICAL ERROR" "..\data\log-he-thong.log" >> "..\backup\bao-cao-su-co.txt"

echo Hoan tat! Ket qua da duoc luu tai backup\bao-cao-su-co.txt
echo ==================================================
pause
