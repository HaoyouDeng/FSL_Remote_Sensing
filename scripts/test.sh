SHOT=1
MODEL="ResNet10"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 0
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 0
done