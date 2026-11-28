
# 第１章：Hello ゲノム!

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

[seqkit](seqkit)