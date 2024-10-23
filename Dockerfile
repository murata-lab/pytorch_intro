FROM pytorch/pytorch:latest

ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Tokyo 

RUN apt-get update && apt-get install -y \
    tzdata \
    libopencv-dev \
    libgl1-mesa-dev \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.340/quarto-1.3.340-linux-amd64.deb \
    && dpkg -i quarto-1.3.340-linux-amd64.deb \
    && apt-get install -f \
    && rm quarto-1.3.340-linux-amd64.deb

RUN pip install pandas numpy scipy Pillow matplotlib seaborn ipykernel jupyter

# 現在のConda環境（base）をJupyterのカーネルとして登録
RUN python -m ipykernel install --user --name=base --display-name="PyTorch"