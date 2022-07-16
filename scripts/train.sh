SHOT=1
MODEL="ResNet10"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python train.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        --train_aug \
                        -g 0
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python train.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        --stop_epoch 800 \
                        --train_aug \
                        --not_warmup \
                        -g 0
done