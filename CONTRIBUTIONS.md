# Contributing to Niffler

First off — thank you for your interest in contributing to **Niffler**.  
This project exists to explore what **grounded, local-first AI** can look like when accuracy, ownership, and privacy come first.

We welcome contributions that respect that vision.

---

## Project Philosophy (Please Read First)

Niffler is intentionally:

- **Local-first**
- **Offline**
- **Grounded in user-owned files**
- **Resistant to hallucination**
- **Transparent in limitations**

Contributions that push Niffler toward:
- cloud dependency,
- uncontrolled hallucination,
- or opaque “magic” behavior  

will likely not be accepted.

This is not a general-purpose chatbot — it is a **knowledge assistant**.

---

## Ways to Contribute

### 🐞 Bug Reports
If you find a bug:
- Include your OS
- Include whether you are using the EXE or source
- Include steps to reproduce
- Include any relevant console output

Please check existing issues before filing a new one.

---

### 🚀 Feature Suggestions
Feature ideas are welcome, especially in these areas:

- Search accuracy or performance
- Voice interaction improvements
- Additional file format support
- UI/UX enhancements
- Indexing or ingestion improvements
- Testing and validation tools

When proposing a feature:
- Explain **why** it fits Niffler’s grounded model
- Avoid “make it more like ChatGPT” framing

---

### 🧠 Architecture Contributions

Niffler is modular by design. Areas that benefit from deeper work:

| Module        | Focus |
|--------------|-------|
| `ingest.py`  | Text extraction, chunking, indexing |
| `searcher.py`| Retrieval accuracy & performance |
| `llm_answer.py` | Prompting, grounding, context control |
| `voice.py`   | Wake-word handling, transcription stability |
| `gui_app.py`| Usability, state handling |

Changes should be:
- Minimal
- Explicit
- Easy to reason about

---

## Code Guidelines

### General Rules
- Prefer clarity over cleverness
- Avoid hidden global state
- Log errors explicitly
- Keep defaults conservative

### Prompting Rules (Very Important)
LLM prompts **must**:
- Restrict answers to provided context
- Explicitly forbid hallucination
- Fail safely when information is missing

Any change that increases hallucination risk will be rejected.

---

## Voice Contributions

Voice support is currently **Beta**.

If you contribute here:
- Do not assume constant wake-word reliability
- Expect partial and noisy input
- Favor predictable behavior over “smart” guessing

Voice-triggered actions must be explicit and intentional.

---

## Performance Contributions

Performance improvements are welcome, but:

- Do not sacrifice correctness for speed
- Avoid aggressive caching without invalidation
- Avoid “clever” heuristics without explanation

Document *why* a change improves performance.

---

## Submitting Changes

1. Fork the repository
2. Create a feature or fix branch
3. Make your changes
4. Test locally (EXE and/or source)
5. Open a Pull Request

In your PR description:
- Explain the problem
- Explain your solution
- Note any tradeoffs

Small, focused PRs are preferred.

---

## What Will Likely Be Rejected

- Internet-dependent features
- Cloud API integrations (unless optional & clearly isolated)
- Silent failures
- Hidden prompt manipulation
- “It sounds smarter now” changes without grounding improvements

---

## License & Attribution

By contributing, you agree that your contributions will be licensed under the project’s open-source license.

You retain authorship credit.

---

## Final Thought

Niffler isn’t trying to be everything.

It’s trying to be **reliable**, **honest**, and **useful**.

If that excites you — welcome aboard.
