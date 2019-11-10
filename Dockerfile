FROM continuumio/anaconda3:latest

# spleeterをダウンロードするため、gitを入れる
RUN apt-get update \
 && apt-get install -y git

WORKDIR /work

# docker run時にspleeter-cpuをデフォルトの環境にするために、.bashrcに追加する。
RUN git clone https://github.com/Deezer/spleeter \
 && conda env create -f spleeter/conda/spleeter-cpu.yaml \
 && echo "conda activate spleeter-cpu" >> ~/.bashrc
