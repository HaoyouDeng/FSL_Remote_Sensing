SHOT=1
MODEL="ResNet10"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx":
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python train.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        --train_aug \
                        -g 0
done