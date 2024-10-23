
# プロジェクト README

このプロジェクトは、Dockerを使用して機械学習環境をセットアップし、Jupyter notebookを実行するためのものです。

## 目次
1. [Dockerのセットアップと使用方法](#dockerのセットアップと使用方法)
2. [プロジェクトの構造](#プロジェクトの構造)
3. [Jupyter Notebookの使用方法](#jupyter-notebookの使用方法)


# dockerのセットアップと使用方法

## 前提条件

- Remote Explorer で計算機に接続できること
- Dockerが利用可能であること（利用できない場合は先輩に相談してください）

Dockerが使用可能かどうかを確認するには、以下のコマンドを実行します：
```bash
docker
```
コマンドが認識されない場合は、Dockerのインストールが必要です。

## Dockerコンテナの作成と起動
1. docker-compose.ymlのcontainer_nameを自分で分かる名前に変更してください。

2. プロジェクトのルートディレクトリ（pytorch_intro）に移動します。

3. 以下のコマンドを実行して、Dockerコンテナをビルドし起動します：
   ```bash
   docker-compose up -d --build
   ```
   - `-d`：バックグラウンドでコンテナを実行します
   - `--build`：コンテナ起動前にイメージを再ビルドします
   - 初回実行時は必要なイメージのダウンロードとビルドが行われるため、時間がかかる場合があります

## Dockerコンテナへの接続方法

### VSCode拡張機能での接続
1. VSCodeのRemoteタブを開きます
2. Remotes (Tunnels/SSH)からDev Containersを選択します
3. ビルドしたコンテナを選択して接続します
   - この方法では、VSCodeの機能をそのままコンテナ内で使用できます
   - 拡張機能もコンテナ内にインストールして使用可能です

## 主要なDockerコマンド

### コマンドラインからの接続
```bash
docker exec -it <コンテナ名> bash
```
- コンテナ名は`docker ps`で確認できます

### コンテナの状態確認
```bash
# 起動中のコンテナのみ表示
docker ps

# すべてのコンテナを表示（停止中含む）
docker ps -a
```

### コンテナのライフサイクル管理
```bash
# コンテナの起動
docker start <コンテナ名>

# コンテナの停止
docker stop <コンテナ名>

# コンテナの再起動
docker restart <コンテナ名>

# コンテナの削除（要停止状態）
docker rm <コンテナ名>
```
- 使用しないと思ったコンテナは削除してください

### docker-composeコマンド
```bash
# カレントディレクトリのコンテナを停止・削除
docker-compose down
```
- コンテナだけでなく、ネットワークも削除されます
- ボリュームは保持されます（削除する場合は`-v`オプションを追加）

## トラブルシューティング

- コンテナが正常に起動しない場合：
   ```bash
   # コンテナのログを確認
   docker logs <コンテナ名>
   ```

## プロジェクトの構造

- `Dockerfile`: Dockerイメージの設定ファイル
- `docker-compose.yml`: Docker Composeの設定ファイル
- `README.md`: このファイル
- `basic.ipynb`: Pythonの基本的な文法とよく使うライブラリの説明
- `code/`: ソースコードディレクトリ
- `dataset/`: データセットディレクトリ
- `demo.ipynb`: データセット読み込みとNNの学習デモ


## Jupyter Notebookの使用方法


1. `.ipynb`ファイル（`basic.ipynb`または`demo.ipynb`）を開きます。

2. VSCodeの右上にある「カーネルを選択」をクリックし、`PyTorch`を選択します。

3. これで、Jupyter Notebookのセルを実行できるようになります。セルの左側にある実行ボタンをクリックするか、`Shift + Enter`キーを押してセルを実行します。

### 参考
- https://lilaboc.work/archives/29143610.html

### データセット
- https://www.kaggle.com/c/titanic
>>>>>>> Initial commit
