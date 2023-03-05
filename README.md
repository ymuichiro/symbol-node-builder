# symbol-bootstrap-builder

## create user

symbol-bootstrap 実行用のユーザーを作成し、作成したユーザーへ切替を行なって下さい。

```sh
adduser symbol
usermod -aG sudo symbol
su - symbol
```

## 環境構築

symbol-bootstrap のインストールを開始します。

```sh
curl
```

## 権限追加

最後に docker の実行権限を一般ユーザーへ付与します

```
sudo su
usermod -aG docker symbol
```
