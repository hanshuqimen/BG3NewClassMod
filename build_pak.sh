#!/usr/bin/env bash
# =====================================================================
# 符剑道士 Mod 打包脚本（macOS / Linux，需 mono 运行 divine.exe）
# 用法：
#   1. 下载 lslib: https://github.com/Norbyte/lslib/releases
#   2. 安装 mono:  brew install mono  (macOS)  或  sudo apt install mono-complete (Linux)
#   3. 把 divine.exe 路径填入下方 DIVINE，或放到与本脚本同级目录
#   4. chmod +x build_pak.sh && ./build_pak.sh
#   5. 生成的 FuJianTaoist.pak 拖入 BG3 Mod Manager 导入
# =====================================================================
set -e

# --- 配置 ---
DIVINE="${DIVINE:-divine.exe}"   # 可用环境变量覆盖: DIVINE=/path/to/divine.exe ./build_pak.sh
SRC="$(cd "$(dirname "$0")" && pwd)"
OUT="$SRC/FuJianTaoist.pak"

echo ""
echo "[符剑道士 Mod 打包]"
echo "源目录: $SRC"
echo "输出:   $OUT"
echo "工具:   $DIVINE"
echo ""

# 删除旧 pak
rm -f "$OUT"

# 调用 divine（macOS/Linux 需通过 mono 运行 .exe）
if command -v mono >/dev/null 2>&1; then
    mono "$DIVINE" -g bg3 -a create-package -s "$SRC" -d "$OUT" -c lz4
else
    "$DIVINE" -g bg3 -a create-package -s "$SRC" -d "$OUT" -c lz4
fi

if [ -f "$OUT" ]; then
    echo ""
    echo "[成功] 已生成 $OUT"
    echo "下一步: 把 FuJianTaoist.pak 拖入 BG3 Mod Manager 导入。"
else
    echo ""
    echo "[失败] 未生成 pak，请检查 DIVINE 路径与 mono 安装。"
    exit 1
fi
