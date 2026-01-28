# Neovim Config – Bitkay 🚀

Configuración de Neovim optimizada para desarrollo full-stack con experiencia de usuario limpia y rápida.

> **Enfoque**: JavaScript/TypeScript, React, Next.js, Node.js, Python, SQL
> **Portabilidad**: Windows (WSL), Linux, macOS
> **Base**: LazyVim + configuración personalizada

---

## 📋 Requisitos

- **Neovim**: 0.12+ (recomendado latest)
- **Git**: para clonar y plugins
- **Node.js**: 18+ (LSPs, formatters, tooling)
- **Ripgrep**: para búsqueda rápida
- **FD**: para búsqueda de archivos (opcional pero recomendado)
- **OpenCode**: AI assistant (opcional, para `<leader>o`)

### Instalación de dependencias

```bash
# Ubuntu/Debian
sudo apt install nodejs npm ripgrep fd-find curl

# macOS (Homebrew)
brew install neovim node ripgrep fd curl

# Windows (WSL)
sudo apt update && sudo apt install nodejs npm ripgrep fd-find curl

# Arch Linux
sudo pacman -S neovim nodejs npm ripgrep fd curl
```

---

## 🤖 OpenCode Installation (Opcional)

OpenCode es un asistente de IA que integra directamente con tu configuración de Neovim a través del atajo `<leader>o`.

### Instalación rápida

#### Método 1: Script automático (Recomendado)
```bash
curl -fsSL https://opencode.ai/install | bash
```

#### Método 2: npm/yarn/pnpm
```bash
# npm
npm install -g opencode-ai

# yarn
yarn global add opencode-ai

# pnpm
pnpm install -g opencode-ai

# bun
bun install -g opencode-ai
```

#### Método 3: Homebrew (macOS/Linux)
```bash
brew install anomalyco/tap/opencode
```

#### Método 4: Windows
```bash
# Chocolatey
choco install opencode

# Scoop
scoop install opencode
```

### Configuración inicial

1. **Verificar instalación**:
   ```bash
   opencode --version
   ```

2. **Configurar API key**:
   ```bash
   cd /path/to/project
   opencode
   # En la interfaz, ejecuta:
   /connect
   # Selecciona un proveedor y sigue las instrucciones
   ```

3. **Inicializar proyecto**:
   ```bash
   # Dentro del directorio del proyecto
   /init
   ```

### Uso con Neovim

- **Abrir OpenCode**: `<leader>o` (terminal flotante)
- **Salir**: `<Esc>` (vuelve al modo normal)
- **Comandos básicos**: `/help`, `/undo`, `/redo`, `/share`

> **Nota**: OpenCode es completamente opcional. Puedes usar esta configuración perfectamente sin él.

---

## 🚀 Instalación Rápida

```bash
# Backup config existente (opcional)
mv ~/.config/nvim ~/.config/nvim.backup

# Clonar configuración
git clone https://github.com/Bitkayx/nvim ~/.config/nvim

# Iniciar Neovim (instalará plugins automáticamente)
git clone https://github.com/Bitkayx/nvim ~/.config/nvim
nvim
```

> **Nota**: Lazy.nvim instalará todos los plugins automáticamente en el primer inicio.

---

## Dependencias Específicas

### Python Development
```bash
# Instalar Python y herramientas
sudo apt install python3 python3-pip
pip install black pylint mypy  # Formateo y linting

# O con uv (recomendado)
pip install uv
uv add black pylint mypy --dev
```

### SQL Development
```bash
# SQL Server (opcional)
sudo apt install sqls  # SQL Language Server
```

### Tailwind CSS (configurado automáticamente)
- Los proyectos con `tailwind.config.js` tendrán LSP automático
- Soporte para clases y autocompletado

---

## 📁 Estructura del Proyecto

```
~/.config/nvim/
├── init.lua                    # Punto de entrada
├── README.md                   # Este archivo
├── .gitignore                  # Archivos ignorados
├── stylua.toml                 # Configuración de formatting
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Configuración de lazy.nvim
│   │   ├── options.lua        # Opciones de Neovim
│   │   ├── keymaps.lua        # Atajos personalizados
│   │   ├── autocmds.lua       # Comandos automáticos
│   │   └── ui.lua             # Configuración de UI
│   └── plugins/               # Configuración de plugins
│       ├── default.lua        # Overrides de LazyVim
│       ├── bento.lua          # Buffer manager
│       ├── bufferline.lua     # Buffer line
│       ├── telescope.lua      # Búsqueda
│       ├── lsp.lua            # LSP configuration
│       ├── lualine.lua        # Status line
│       ├── toggleterm.lua     # Terminal
│       ├── treesitter.lua     # Sintaxis
│       ├── theme_teide.lua    # Colorscheme principal
│       ├── theme_catppuccin.lua # Tema alternativo
│       ├── tailwind.lua       # Soporte Tailwind
│       ├── incline.lua        # Contexto de función
│       └── opencode.lua       # OpenCode integration
└── lazy-lock.json             # Lock file de plugins
```

---

## 🎨 Temas

### Colorescheme Principal

- **Neovim**: Teide Darker (dark theme)
- **Terminal**: Catppuccin (recomendado WezTerm)

---

## ⌨️ Atajos Principales

### Navegación y Buffers

| Acción | Tecla | Descripción |
|--------|-------|-------------|
| **Abrir Bento** | `;` | Buffer manager estilo Reddit |
| **Último buffer** | `;;` | Alternar al buffer anterior |
| **Toggle Bento** | `<leader>bt` | Mostrar/ocultar Bento |
| **Cerrar buffer** | `<leader>bd` | Cerrar buffer actual |

### Búsqueda y Archivos

| Acción | Tecla | Descripción |
|--------|-------|-------------|
| **Buscar archivos** | `<leader>ff` | Find files (Telescope) |
| **Buscar texto** | `<leader>fw` | Find word in project |
| **Buscar plugins** | `<leader>fp` | Find plugins |
| **Buscar reciente** | `<leader>fr` | Recent files |
| **Live grep** | `<leader>sg` | Búsqueda global |

### Terminal y Herramientas

| Acción | Tecla | Descripción |
|--------|-------|-------------|
| **Terminal** | `<leader>ft` | Toggle terminal flotante |
| **Salir terminal** | `<Esc>` (en modo terminal) | Volver a modo normal |
| **OpenCode** | `<leader>o` | Toggle OpenCode AI |
| **Redimensionar** | `Alt+Arrow keys` | Redimensionar splits |

### Navegación Avanzada

| Acción | Tecla | Descripción |
|--------|-------|-------------|
| **Centrar scroll** | `Ctrl+d/u` | Scroll centrado en cursor |
| **Splits** | `<leader>h/v` | Split horizontal/vertical |
| **Navegación** | `Ctrl+h/j/k/l` | Entre ventanas |

### LSP y Desarrollo

| Acción | Tecla | Descripción |
|--------|-------|-------------|
| **Definición** | `gd` | Go to definition |
| **Referencias** | `gr` | Find references |
| **Rename** | `<leader>cr` | Rename symbol |
| **Format** | `<leader>cf` | Format code |
| **Diagnostics** | `<leader>cd` | Show diagnostics |

---

## 🔧 Plugins Principales

### Base y Ecosistema

- **LazyVim**: Base de configuración pre-configurada
- **Lazy.nvim**: Plugin manager moderno
- **blink.cmp**: Autocompletado moderno y rápido

### UI y UX

- **Bento.nvim**: Buffer manager con UX tipo Reddit
- **Teide.nvim**: Colorscheme dark minimalista
- **Lualine**: Status line configurable
- **Incline**: Contexto de función
- **Bufferline**: Tabs visuales de buffers

### Desarrollo

- **Treesitter**: Resaltado de sintaxis y parsing
- **LSP**: tsserver, pyright, lua_ls, etc.
- **Telescope**: Fuzzy finder y búsqueda
- **ToggleTerm**: Terminal integrada
- **Tailwind**: Soporte para Tailwind CSS

### Herramientas

- **OpenCode**: AI assistant integrado
- **Git**: Git signs y fusión
- **Formatting**: Stylua, Prettier, etc.

---

## 🛠️ Lenguajes Soportados

### Full Stack

- **JavaScript/TypeScript**: tsserver, ESLint, Prettier
- **React/Next.js**: Soporte completo con snippets
- **Node.js**: Depuración y desarrollo
- **Python**: pyright, black, debugging
- **SQL**: Sintaxis y formateo

### Otros Lenguajes

- **Lua**: LSP nativo y formateo
- **JSON/YAML**: Validación y formateo
- **HTML/CSS**: Emmet, Tailwind CSS
- **Markdown**: Vista previa y edición
- **Git**: Configuración integrada

---

## ⚙️ Personalización

### Modificar Colorscheme

Edita `lua/plugins/theme_teide.lua` o crea tu propio theme:

```lua
-- Para cambiar a catppuccin
vim.cmd.colorscheme("catppuccin-mocha")
```

### Agregar Plugins

Crea nuevo archivo en `lua/plugins/`:

```lua
return {
  "usuario/plugin",
  opts = {
    -- configuración
  },
}
```

### Custom Keymaps

Edita `lua/config/keymaps.lua`:

```lua
vim.keymap.set("n", "<leader>tecla", "<comando>", { desc = "Descripción" })
```

---

## 🔍 Verificación y Troubleshooting

### Verificar Instalación

```bash
# Ver versión de Neovim
nvim --version

# Ver plugins instalados
nvim +Lazy

# Verificar LSP
nvim +checkhealth
```

### Comandos Útiles

```vim
:Lazy                 # Gestionar plugins
:checkhealth         # Verificar salud del sistema
:Mason                # Gestión de herramientas LSP
:Telescope commands  # Buscar comandos disponibles
```

### Problemas Comunes

**Plugins no instalan:**

```bash
rm -rf ~/.local/share/nvim/lazy
nvim +Lazy sync
```

**LSP no funciona:**

```vim
:Mason    # Instalar servidores LSP
:LspInfo  # Verificar estado
```

**Colorscheme no carga:**

```vim
:Telescope colorscheme  # Seleccionar theme
```

---

## 📝 Formato y Linting

### Configuración Stylua (stylua.toml)

```toml
indent_type = "Spaces"
indent_width = 2
column_width = 120
```

### Formateo Automático

- **Lua**: Stylua
- **JS/TS**: Prettier
- **Python**: Black (requiere instalación: `pip install black`)
- **JSON/YAML**: Prettier

Trigger: `<leader>cf` o al guardar (configurable)

---

## 🚀 Performance

### Optimizaciones Incluidas

- **Lazy loading**: Plugins cargados bajo demanda
- **RTP optimization**: Plugins nativos deshabilitados
- **Autocommands**: Configuración eficiente
- **Memory management**: Configuración optimizada para bajo uso de RAM

### Inicio Rápido

- **Plugins**: Lazy loading con cache
- **Colorscheme**: Carga temprana
- **UI**: Componentes optimizados

---

## 📚 Recursos y Referencias

- **LazyVim**: [Documentación oficial](https://www.lazyvim.org/)
- **Neovim**: [Neovim docs](https://neovim.io/doc/)
- **Bento.nvim**: [Plugin GitHub](https://github.com/serhez/bento.nvim)
- **Teide Theme**: [Theme GitHub](https://github.com/serhez/teide.nvim)

---

## 🤝 Contribuir

Esta configuración está en constante evolución. Para contribuir:

1. Fork del repositorio
2. Crear feature branch: `git checkout -b feature/mejora`
3. Commit cambios: `git commit -m 'Add: nueva funcionalidad'`
4. Push: `git push origin feature/mejora`
5. Pull request

---

## 📄 Licencia

MIT License - puedes usar, modificar y distribuir libremente.

---

**Creado y mantenido por**: [@Bitkayx](https://github.com/Bitkayx)
**Última actualización**: 2026-01-27

---

> 💡 **Tip**: Explora `<leader>` + `?` para ver todos los atajos disponibles o usa `:Telescope keymaps`
