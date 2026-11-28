
# SeqKitによるFASTA配列の操作

本書で使用する配列ファイル `input.fa` を用いて、SeqKitの基本操作を試す。

## 1. ファイルを確認する

```bash
ls -l
```

## 2. FASTAファイルの内容を表示する

```bash
cat input.fa
```

## 3. 配列の統計情報を表示する

```bash
seqkit stats input.fa
```

## 4. 逆相補配列を取得する

```bash
seqkit seq -r -p input.fa
```
