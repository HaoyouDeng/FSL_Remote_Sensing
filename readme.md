# Few-Shot Learning for Remote Sensing Image

Haoyou Deng (haoyoudeng@gmail.com)

An implement for remote sensing image few-shot learning, including some classical methods (such as MatchingNet, ProtoNet, RelationNet and MAML).

## Datasets
For fremote sensing image few-shot learning, we use NWPU-RESISC45 and EuroSAT datasets.

## Pretrain
To get a pretrain backbone model.
```
python train.py --dataset miniImagenet --model [backbone] --method baseline --train_aug --not_warmup --name pretrain_[backbone] -g [GPU]
```
## Train & Test
- Baseline or Baseline++ (pretrain & fine-tune)
```
# Train
python train.py --dataset miniImagenet --model [backbone] --method baseline --name baseline --train_aug -g [GPU]

python train.py --dataset miniImagenet --model [backbone] --method baseline++ --name baseline++ --train_aug -g [GPU]

# Test
python test.py --testset [target_dataset] --model [backbone] --method baseline --n_shot [1/5] --name baseline --train_aug -g [GPU]

python test.py --testset [target_dataset] --model [backbone] --method baseline++ --n_shot [1/5] --name baseline --train_aug -g [GPU]
```

- Meta-learning method(MatchingNet, ProtoNet and MAML)
```
# Train
python train.py --model [backbone] --method [method] --n_shot 1 --name [method]_1s --train_aug -g [GPU]

python train.py --model [backbone] --method [method] --n_shot 5 --name [method]_5s --train_aug -g [GPU]

# Test
python test.py --testset [target_dataset] --model [backbone] --method [method] --n_shot 1 --name [method]_1s -g [GPU]

python test.py --testset [target_dataset] --model [backbone] --method [method] --n_shot 5 --name [method]_5s -g [GPU]
```

## Note
- This code is built upon the implementation from [CloserLookFewShot](https://github.com/wyharveychen/CloserLookFewShot) and [CDFSL-ATA](https://github.com/Haoqing-Wang/CDFSL-ATA).