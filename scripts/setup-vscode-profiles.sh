#!/bin/bash
set -e

# VS Code CLI must be available as `code`
# Check if installed
if ! command -v code &> /dev/null; then
    echo "VS Code CLI not found. Install VS Code first."
    exit 1
fi

# ---------- Create Python Profile ----------
code --profile python --install-extension ms-python.python \
                           --install-extension ms-python.black-formatter

# Optional: set config for Python profile (JSON file)
PYTHON_PROFILE_DIR="$HOME/.config/Code/User/profiles/python"
mkdir -p "$PYTHON_PROFILE_DIR"
cat > "$PYTHON_PROFILE_DIR/settings.json" <<'EOF'
{
    "python.pythonPath": "/usr/bin/python3",
    "editor.formatOnSave": true,
    "python.formatting.provider": "black"
}
EOF

# ---------- Create Web Profile ----------
code --profile web --install-extension ritwickdey.LiveServer \
                        --install-extension esbenp.prettier-vscode

WEB_PROFILE_DIR="$HOME/.config/Code/User/profiles/web"
mkdir -p "$WEB_PROFILE_DIR"
cat > "$WEB_PROFILE_DIR/settings.json" <<'EOF'
{
    "editor.formatOnSave": true,
    "prettier.singleQuote": true,
    "prettier.semi": true
}
EOF

echo "VS Code profiles and extensions installed successfully!"

