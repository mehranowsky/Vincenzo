# Vincenzo — Narrow Recon Tool (Bash)

A lightweight and fast Bash tool for narrow web reconnaissance:
- Passive & active URL crawling
- Parameter extraction
- Simple CLI

---

## 📌 Setup

Make the script executable:
```
chmod +x ./vini.sh

Show help:
./vini.sh -h
```

Example help output:
```
----- GO AHEAD MR. PIPINO -----
Usage: [-u] URLs mode [-p] Params mode [-d] Target domain [-a] All [-c] Cookie
```

---

## 🚀 Usage

Always provide the domain **without** `http://` or `https://`.

✅ Crawl URLs (active + passive):
```bash
./vini.sh -d example.com -u
```

✅ Extract parameters:
```bash
./vini.sh -d example.com -p
```

✅ Run URLs + Params together:
```bash
./vini.sh -d example.com -a
```

✅ Authenticated crawling:
```bash
./vini.sh -d example.com -u -c "session=abc123"
```

---

## ⚙️ Requirements

- Linux/macOS terminal

---

## 🎯 Notes

- Designed for bug bounty / recon workflows
