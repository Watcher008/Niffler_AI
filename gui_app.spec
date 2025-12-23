# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['gui_app.py'],
    pathex=[],
    binaries=[('venv\\Lib\\site-packages\\llama_cpp\\lib\\*.dll', '.')],
    datas=[('ingest.py', '.'), ('watcher.py', '.'), ('searcher.py', '.'), ('voice.py', '.'), ('llm_answer.py', '.'), ('vector.index', '.'), ('metadata.json', '.'), ('models', 'models'), ('vosk-model-small-en-us-0.15', 'vosk-model-small-en-us-0.15')],
    hiddenimports=['ingest', 'watcher', 'searcher', 'voice', 'llm_answer'],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='gui_app',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='gui_app',
)
