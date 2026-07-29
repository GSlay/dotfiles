#!/usr/bin/env bash

# Thoát ngay nếu gặp lỗi
set -e

# Lấy đường dẫn thư mục chứa script dotfiles
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "🚀 Bắt đầu cài đặt Dotfiles bằng GNU Stow..."
echo "Thư mục dotfiles: $DOTFILES_DIR"

# 1. Tạo trước ~/.config
# Mẹo quan trọng: Nếu ~/.config chưa tồn tại, Stow sẽ link NGUYÊN FOLDER .config vào repo.
# Tạo sẵn ~/.config sẽ giúp Stow chỉ link từng sub-folder bên trong (nvim, fish...).
mkdir -p "$HOME/.config"

# 2. Danh sách 3 package bạn muốn stow
STOW_FOLDERS=("fish" "tmux" "lazyvim")

# 3. Chuyển vào thư mục dotfiles và chạy stow
cd "$DOTFILES_DIR"

for folder in "${STOW_FOLDERS[@]}"; do
    if [ -d "$folder" ]; then
        echo "🔗 Linking $folder..."
        # -R (--restow): Tự động làm sạch symlink cũ và link lại (chạy lại script thoải mái không sợ lỗi)
        # -t ~ (--target=$HOME): Chỉ định đích đến là thư mục HOME
        stow -R -t "$HOME" "$folder"
    else
        echo "⚠️  Cảnh báo: Không tìm thấy thư mục '$folder', bỏ qua..."
    fi
done

echo "✅ Cài đặt hoàn tất! Các config fish, tmux, nvim đã sẵn sàng sử dụng."
