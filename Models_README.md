## Language Model Setup (Required)

Niffler does not include a language model by default.

Due to licensing and file size constraints, users must download a compatible
GGUF model separately.

### Recommended Model

- Meta-Llama-3-8B-Instruct (Q4_0)

- ## Supported Models

Niffler has been tested with:

- Meta-Llama-3-8B-Instruct (Q4_0 or Q5_K_M recommended)
- Any GGUF model compatible with `llama.cpp`

### Installation Steps

1. Download a GGUF model from a trusted source:
   - https://huggingface.co
   - https://github.com/ggerganov/llama.cpp
2. Place it into the `models/` folder
3. Launch Niffler

Niffler will automatically detect the model on startup.

## License Notice

Models are subject to their own licenses.
Users are responsible for complying with the model’s terms of use.
