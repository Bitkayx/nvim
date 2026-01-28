# Neovim config – Bitkay

Configuración de Neovim enfocada en:

- Full-stack (JS / TS / React / Next / Node / Python / SQL)
- UX limpia y rápida
- Portable entre Windows (WSL), Linux y macOS

---

## Requisitos

- Neovim **0.12+**
- Git
- Node.js (para LSPs y tooling)
- (Opcional) WSL / Linux / macOS

---

## Instalación

```bash
git clone https://github.com/Bitkay/nvim ~/.config/nvim
nvim
```

Lazy.nvim instalará todo automáticamente.

## Plugins clave

- LazyVim – base
- Bento.nvim – buffer manager (UX tipo post Reddit)
- blink.cmp – autocompletado moderno
- Treesitter – sintaxis
- LSP (tsserver, pyright, etc.)
- Telescope – búsqueda
- ToggleTerm – terminal
- Teide – colorscheme (darker)

## Keymaps importantes

Acción Tecla

| Acción          | Tecla          |
| --------------- | -------------- |
| Buffers (Bento) | ;              |
| Ultimo buffer   | ;;             |
| Toggle Bento    | <leader>bt     |
| Buscar archivos | <leader>ff     |
| Buscar plugins  | <leader>fp     |
| Terminal        | <leader>ft     |
| Opencode        | <leader>o      |

## Temas

Neovim: Teide darker
Terminal (WezTerm): Catppuccin (por ahora)
