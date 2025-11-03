# Qwen Fine-tuning

Just a simple example of fine-tuning Qwen on WMT data.

## Environments
I use python=3.11 and the latest Huggingface, Pytorch.
```shell
conda create -n qwen_ft python=3.11
conda activate qwen_ft
pip install torch==2.9.0 transformers==4.57.1 datasets==4.3.0 accelerate==1.11.0
# for visualizing train/dev loss curves
pip install tensorboardX==2.6.4 tensorboard==2.20.0
```

## Files
- `demo.py`: for interaction. Load either the pre-trained model or the fine-tuned model, and 
let the model translate an input sentence.
- `train.py`: the actual fine-tuning code. Use `run.sh` to launch it.
