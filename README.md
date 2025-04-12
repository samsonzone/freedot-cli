# freedot-cli

**freedot** is a lightweight, fast, and scriptable CLI tool to check domain availability across hundreds of TLDs — with filters, progress bar, export formats, and optional exports. It supports Linux and macOS with a smooth UX and Bash/Zsh completions.

---

## 🚀 Features

- ✅ Check availability of a base domain (e.g., `mybrand`) across many TLDs
- ✅ Filter by:
  - Category (`--category`)
  - TLD length (`--tld-length`) using `=`, `>=`, or `<=`
- ✅ Live TLD list pulled directly from GitHub
- ✅ Export results to `json`, `csv`, `yaml`, or `toml`
- ✅ Real-time progress bar with color
- ✅ Bash + Zsh autocompletion support
- ✅ Man page included
- ✅ Works on Linux & macOS
- ✅ Install dependencies with `--install-deps`

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

## 🔗 TLD Source

`freedot` pulls the latest `ext.txt` from GitHub every time it's run:

📄 https://github.com/samsonzone/freedot-cli/blob/main/ref/ext.txt

Format:

```
tld,usage
com,general
net,general
io,tech
ai,tech
```

Use `--list` to view available usage categories.

---

## 🧩 Shell Autocompletion

### Bash
```bash
source completions/freedot.bash
```

Or install permanently:

```bash
sudo cp completions/freedot.bash /etc/bash_completion.d/
```

### Zsh

```bash
sudo cp completions/_freedot /usr/local/share/zsh/site-functions/
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
- `timeout` (from `coreutils` or `gtimeout` on macOS)

To install required tools:

```bash
freedot --install-deps
```

---

## 🆕 Changelog

### v1.0.1
- 🛠 Fixed TLD length filtering logic for Bash compatibility on Ubuntu/macOS
- 🌐 Automatically pulls `ext.txt` from GitHub instead of relying on local file
- 📦 Minor cleanup and help/UX updates

---

## 📃 License

MIT

---

## 🧑‍💻 Author

Made with ☕ and domain dreams by [@samsonzone](https://github.com/samsonzone)

---

## 🔄 Self-Update

To get the latest version of `freedot`, just run:

```bash
freedot self-update
```

This will:

- Download the latest script from GitHub
- Update `/usr/local/bin/freedot`, completions, and man page
- Confirm the version automatically
