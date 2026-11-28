
# 1.1.2 配列操作の練習

本書で使用する配列ファイル `input.fa` を用いて、SeqKitの基本操作を試す。

## 1. FASTAファイルの内容を表示する

```bash
cat input.fa
```

## 2. 配列の統計情報を表示する

```bash
seqkit stats input.fa
```

## 3. 逆相補配列を取得する

```bash
seqkit seq -r -p input.fa
```
