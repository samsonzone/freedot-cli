# freedot-cli

**freedot** is a lightweight, fast, and scriptable CLI tool to check domain availability across hundreds of TLDs — with filters, progress bar, output formats, and optional exports.

---

## 🚀 Features

- ✅ Check availability of a base domain (e.g., `mybrand`) across many TLDs
- ✅ Filter by:
  - Category (`--category`)
  - TLD length (`--tld-length`)
- ✅ Export results as `json`, `csv`, `yaml`, or `toml`
- ✅ Progress bar + colored output
- ✅ Works on macOS and Linux
- ✅ Bash + Zsh completion support
- ✅ Includes a manual page (`man 1 freedot`)

---

## 📦 Installation

### 🔧 Clone and install manually

```bash
git clone https://github.com/samsonzone/freedot-cli.git
cd freedot-cli
make install
```

### 🧼 To uninstall:

```bash
make uninstall
```

---

## 💡 Usage

```bash
freedot <domain_base> [options]
```

### Examples

```bash
freedot mybrand
freedot mybrand -x "3"
freedot mybrand -x ">=3" -c general
freedot mybrand -o json
freedot --list
freedot --help
freedot --version
```

---

## 📁 `ext.txt` Format

This is a CSV file (included) used as the TLD source:

```
tld,usage
com,general
net,general
io,tech
ai,tech
...
```

Use `--list` to view all categories.

---

## 🧩 Shell Autocompletion

### Bash
```bash
source completions/freedot.bash
```

Or install permanently:

```bash
cp completions/freedot.bash /etc/bash_completion.d/
```

### Zsh

```bash
cp completions/_freedot /usr/local/share/zsh/site-functions/
autoload -Uz compinit && compinit
```

---

## 📖 Man Page

```bash
man freedot
```

If not installed:

```bash
gzip -c man/freedot.1 > /usr/share/man/man1/freedot.1.gz
```

---

## 🛠 Dependencies

- `whois`
- `dig` (from `dnsutils` / `bind-utils`)
- `timeout` (from `coreutils`)

To install required tools on Linux:

```bash
freedot --install-deps
```

---

## 📃 License

MIT

---

## 🧑‍💻 Author

Made with ☕ and domain dreams by [samsonzone](https://github.com/samsonzone).
