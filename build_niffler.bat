@echo off
SETLOCAL

echo ================================
echo      Building Niffler (GUI)
echo ================================

REM Activate venv
call venv\Scripts\activate

echo Ensure pip tools...
python -m pip install --upgrade pip
pip install --upgrade pyinstaller
pip install faiss-cpu 2>nul
pip install pipwin
pip install pyaudio

echo Cleaning old build/dist...
rmdir /s /q build 2>nul
rmdir /s /q dist 2>nul

echo Running PyInstaller...
pyinstaller ^
  --noconsole ^
  --onedir ^
  --clean ^
  --log-level=WARN ^
  --name gui_app ^
  gui_app.py ^
  --hidden-import ingest ^
  --hidden-import watcher ^
  --hidden-import searcher ^
  --hidden-import voice ^
  --hidden-import llm_answer ^
  --add-data "ingest.py;." ^
  --add-data "watcher.py;." ^
  --add-data "searcher.py;." ^
  --add-data "voice.py;." ^
  --add-data "llm_answer.py;." ^
  --add-data "vector.index;." ^
  --add-data "metadata.json;." ^
  --add-data "models;models" ^
  --add-data "vosk-model-small-en-us-0.15;vosk-model-small-en-us-0.15" ^
  --add-binary "venv\Lib\site-packages\llama_cpp\lib\*.dll;."


echo ================================
echo Build complete. EXE at: dist\gui_app\gui_app.exe
echo ================================

ENDLOCAL
pause
