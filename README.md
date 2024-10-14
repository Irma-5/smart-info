# smart-info
получение smart-признаков

Инструкция по запуску

 -- run.sh
 -- main.py

 1. скрипт run.sh поместить в папку с main.py
 2. прописать права для run.sh и main.py:<\n>
        $ sudo chmod +x run.sh
        $ sudo chmod +x main.py
 3. при запуске ./main.py создается директория с файлами,
    содержащими smart-информацию о каждом устройстве, к которому подлючена
    утилита smartctl
