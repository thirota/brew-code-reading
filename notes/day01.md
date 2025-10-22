# Day 01 — Homebrew Code Reading Log

> Date: October 22, 2025  
> Focus: `brew` スクリプトの冒頭（〜11行目まで）

---

## 今日学んだこと

- **Homebrew 本体リポジトリ**
  - URL: [https://github.com/Homebrew/brew](https://github.com/Homebrew/brew)
  - `/opt/homebrew/bin/brew` は Homebrew CLI のエントリーポイントであり、Bash スクリプト。

- **コードリーディングの進め方**
  - `head -n 10 /opt/homebrew/bin/brew | nl -ba` で行番号付きの出力を確認。
  - macOS の `nl` コマンドは空行をカウントしないが、`-ba` オプションで Vim と一致させられる。
  - 本日は **11行目まで** を読み、Bash の起動設定と前処理を確認。

- **`#!/bin/bash -pu` の意味**
  - `-p`：シェルを「privileged mode」で起動。`$ENV` や `$BASH_ENV` の読み込みを抑止し、安全な環境を確保する。  
    → sudo 経由などで実行される可能性を考慮した防御策。
  - `-u`：未定義変数参照時にエラーとする。  
    → 意図しない変数参照を防ぎ、スクリプトを堅牢にする。

- **`set -u` の確認**
  - 実際に `undefined-test.sh` を作成して挙動を検証。
  - `${VAR:-default}` 形式で安全なデフォルト値参照ができることを確認。
  - Homebrew でも同様の「防御的 Bash 設定」を採用している。

- **リポジトリ運用**
  - GitHub: `brew-code-reading`（Private）
  - `tests/` ディレクトリを追加し、実験スクリプトを格納。
  - `git mv` により履歴を保ったままファイル移動を実施。

- **README.md メタ情報**
  - `> Started: August 2025` を記載（開始時期の記録用）。

---

## 次の一歩

- `brew` スクリプトの 12〜20 行目を読む。  
- `set +o posix` の意味とその副作用を調査。  
- Bash から Ruby コードへ処理が移る箇所を特定。

---

## 所感

- `-p` や `set -u` のような安全設定が、Homebrew のスクリプト品質を支えていると感じた。  
- 「最初の数行だけでこんなに深い意味がある」と再確認。  
- 次回からは、スクリプト全体の「初期化フロー」に着目していきたい。
