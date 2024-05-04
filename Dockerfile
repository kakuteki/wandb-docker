# ベースイメージとしてPythonを使用
FROM python:3.9

# タイムゾーンの自動設定に必要な環境変数
ENV DEBIAN_FRONTEND=noninteractive

# 必要なツールとライブラリをインストール
RUN apt-get update && \
    apt-get install -y \
    tzdata \
    vim \
    less && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# タイムゾーンの設定
ENV TZ=Etc/UTC

# W&Bを含むPythonパッケージをインストール
RUN pip install wandb

# W&BのAPIキーを環境変数として設定（必要なら）
# ENV WANDB_API_KEY=<Your_WandB_API_Key>

# デフォルトのコマンド（シェル）を設定
CMD ["bash"]
