# Niffler_AI
🦡 Niffler (Beta)  

**Niffler** is a local, offline, grounded knowledge assistant.  

It helps you search, extract, and answer questions based strictly on your own files — not the internet, not a remote API, and not hallucinated knowledge.

Niffler is designed to **respect your data, your ownership, and your file structure**.

> ⚠️ This project is currently in **Beta**.  
> Functionality is stable, but optimization, voice interaction, and UX polish are ongoing.

---

## What Niffler Is

Niffler is:

- 🖥️ **Fully local & offline**
- 📁 **Grounded in user-selected folders**
- 🔍 **Search-first, answer-second**
- 📚 **Designed for writers, researchers, and creators**
- 🔒 **Private by design — your files never leave your machine**
- 🧠 **Extractive, not speculative**

Niffler does **not** invent information.  
It answers only using what it can find in your files.

---

## What Niffler Is Not

Niffler is **not**:

- ChatGPT
- A general-purpose conversational AI
- An internet-connected assistant
- A hallucination-driven chatbot

If you ask Niffler something that isn’t present in its indexed files, it will (and should) say:

> *“I don’t have enough information.”*

That limitation is intentional.

---

## Core Architecture

Niffler is built as a modular system:

1. **Ingest**
   - Walks a user-selected root folder
   - Extracts text from supported file types
   - Builds a searchable index

2. **Search**
   - Performs vector + heuristic search
   - Returns relevant document chunks
   - Prioritizes precision over recall

3. **LLM Answering**
   - Uses a local GGUF model (via `llama.cpp`)
   - Answers strictly from retrieved context
   - Avoids hallucination by prompt design

4. **GUI**
   - Lightweight Tkinter interface
   - Manual and voice-based queries
   - Configurable root folder

5. **Voice (Beta)**
   - Local speech-to-text using Vosk
   - Wake-word based interaction
   - Still under active refinement

---

## Supported File Types

Currently supported:

- `.txt`
- `.md`
- `.pdf`
- `.docx`

(Additional formats welcome via pull requests.)

---

## Installation & Usage

### Option 1: Run the Prebuilt Executable (Recommended for Testers)

1. Download the `/dist` folder
2. Run `gui_app.exe`
3. On first launch, select a root folder to index
4. Ask questions based on the contents of that folder

### Option 2: Run from Source

```bash
python gui_app.py
