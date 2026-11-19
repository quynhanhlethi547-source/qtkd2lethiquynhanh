#!/bin/bash
# Script khởi chạy ứng dụng QuynhAnhAI301

APP_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$APP_DIR"

echo "Đang khởi động ứng dụng QuynhAnhAI301..."

# Kiểm tra runtime Node.js có sẵn qua Electron hoặc hệ thống
if [ -f "/Applications/Antigravity IDE.app/Contents/MacOS/Electron" ]; then
  ELECTRON_RUN_AS_NODE=1 "/Applications/Antigravity IDE.app/Contents/MacOS/Electron" server.js
elif which node >/dev/null 2>&1; then
  node server.js
else
  echo "Mở trực tiếp file index.html trên trình duyệt mặc định..."
  open index.html
fi

