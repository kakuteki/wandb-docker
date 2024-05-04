# 1. Build Docker Image
Please build the Docker image using the following command:
```cmd:
docker build -t wandb .
```
# 2. Run Docker Container
You can run the container using the following command. Replace <Your_WandB_API_Key> with your actual W&B API key. https://wandb.ai/authorize
```cmd:
docker run -it -e WANDB_API_KEY=<Your_WandB_API_Key> wandb
```

# 1.Dockerイメージをビルド
以下のコマンドでDockerイメージをビルドしてください。
```cmd:
docker build -t wandb .
```
# 2.Dockerコンテナを実行
以下のコマンドで実行する事ができます。<Your_WandB_API_Key>は実際のW&BのAPIキーに置き換えてください。https://wandb.ai/authorize 
```cmd:
docker run -it -e WANDB_API_KEY=<Your_WandB_API_Key> wandb
```