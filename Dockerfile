# Dockerfile

# 1. ベースとなる公式のNode.jsイメージを指定
FROM node:18-alpine

# 2. コンテナ内の作業場所を作成・指定
WORKDIR /usr/src/app

# 3. 依存関係のファイルを先にコピーしてインストール
# (ソースコードより変更が少ないので、キャッシュが効きやすい)
COPY app/package*.json ./
RUN npm install

# 4. アプリのソースコードをコピー
COPY app/ .

# 5. アプリが使用するポート番号を宣言
EXPOSE 3000

# 6. コンテナが起動したときに実行するコマンド
CMD [ "node", "server.js" ]