# Security Policy

## Supported Versions

Niffler is currently in **Beta**.

Security fixes will be applied to:
- The latest tagged release
- The current `main` branch

Older builds and experimental forks may not receive updates.

---

## Security Philosophy

Niffler is designed to be:

- **Offline-first**
- **Local-only**
- **User-owned data**
- **Minimal attack surface**

By design, Niffler:
- Does not send data to the internet
- Does not collect telemetry
- Does not require cloud services

This significantly reduces risk, but does not eliminate it.

---

## Reporting a Vulnerability

If you discover a security issue, **please do NOT open a public GitHub issue**.

Instead:
- Contact the project maintainer privately (via GitHub profile or listed contact)
- Include:
  - A clear description of the issue
  - Steps to reproduce
  - Potential impact
  - Your environment (OS, EXE or source)

You will receive acknowledgment as soon as possible.

---

## Responsible Disclosure

We ask that you:
- Allow time for the issue to be investigated and addressed
- Avoid public disclosure until a fix or mitigation is available

If the issue is accepted and fixed, you will be credited unless you request otherwise.

---

## Known Limitations (Beta)

Because Niffler is local and experimental, users should be aware:

- Running arbitrary files always carries risk
- Indexing untrusted documents is discouraged
- Voice input may be unpredictable
- Model outputs should not be treated as authoritative truth

Niffler is a **research and productivity tool**, not a security-hardened system.

---

## Hardening Recommendations (For Users)

- Only index folders you trust
- Keep models and dependencies updated
- Run Niffler as a standard user (not administrator)
- Do not expose Niffler to the internet
- Review open-source dependencies if distributing modified builds

---

## Scope Exclusions

The following are **out of scope** for security reporting:

- Hallucinated model output
- Incorrect answers
- Performance issues
- Design limitations documented in the README

These should be reported as bugs or feature discussions instead.

---

## Final Note

Security is a shared responsibility.

If something feels wrong — say something.

Thank you for helping keep Niffler safe.
