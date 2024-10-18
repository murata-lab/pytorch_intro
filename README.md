
# プロジェクト README

このプロジェクトは、Dockerを使用して機械学習環境をセットアップし、Jupyter notebookを実行するためのものです。

## 目次
1. [Dockerのセットアップと使用方法](#dockerのセットアップと使用方法)
2. [プロジェクトの構造](#プロジェクトの構造)
3. [Jupyter Notebookの使用方法](#jupyter-notebookの使用方法)

## Dockerのセットアップと使用方法

### 前提条件
- Dockerを使えること (使えない場合は先輩に聞いて下さい)

### Dockerコンテナの作成と起動

1. プロジェクトのルートディレクトリに移動します。

2. 以下のコマンドを実行して、Dockerコンテナをビルドし起動します:

   ```
   docker-compose up -d --build
   ```

   このコマンドは、Dockerfileに基づいてイメージをビルドし、バックグラウンドでコンテナを起動します。

### Dockerコンテナへの接続

コンテナが起動したら、以下のコマンドで接続します：

```
docker-compose exec iris_null /bin/bash
```

これにより、コンテナ内のbashシェルが起動します。

### Dockerコンテナからの退出

コンテナ内での作業が終わったら、以下のコマンドで退出します：

```
exit
```

### Dockerコンテナの停止

作業が完全に終了したら、以下のコマンドでコンテナを停止します：

```
docker-compose down
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

1. VSCodeを開き、プロジェクトのディレクトリを開きます。

2. `.ipynb`ファイル（`basic.ipynb`または`demo.ipynb`）を開きます。

3. VSCodeの右上にある「カーネルを選択」をクリックし、`Python 3 (ipykernel)`を選択します。

4. これで、Jupyter Notebookのセルを実行できるようになります。セルの左側にある実行ボタンをクリックするか、`Shift + Enter`キーを押してセルを実行します。

### basic.ipynb

このノートブックには、以下の内容が含まれています：
- Pythonの基本的な文法
- よく使用するライブラリ（NumPy, Pandas, Matplotlib等）の使用例

### demo.ipynb

このノートブックでは、以下の内容を実行できます：
- データセットの読み込み
- ニューラルネットワーク（NN）モデルの定義
- モデルの学習プロセス
- 学習結果の評価

各ノートブックのセルを順番に実行し、コメントを読みながら理解を深めてください。


### 参考
- https://lilaboc.work/archives/29143610.html

### データセット
- https://www.kaggle.com/c/titanic
>>>>>>> Initial commit
