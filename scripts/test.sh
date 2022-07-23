for SHOT in 1 5
do
for MODEL in "Conv4" "ResNet10" "ResNet12" "ResNet18"
do
for METHOD in "matchingnet" "protonet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 0

    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 0
done
done
done