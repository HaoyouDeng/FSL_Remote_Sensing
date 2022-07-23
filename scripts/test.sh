SHOT=1
MODEL="ResNet10"

for METHOD in "protonet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=5
MODEL="ResNet10"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=1
MODEL="ResNet12"

for METHOD in "protonet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=5
MODEL="ResNet12"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=1
MODEL="ResNet18"

for METHOD in "protonet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=5
MODEL="ResNet18"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=1
MODEL="Conv4"

for METHOD in "protonet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

SHOT=5
MODEL="Conv4"

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done

for METHOD in "protonet" "matchingnet" "relationnet" "maml_approx"
do
    NAME=$METHOD"_"$MODEL"_"$SHOT"s_not_warmup"
    time python test.py --model $MODEL \
                        --method $METHOD \
                        --n_shot $SHOT \
                        --name $NAME \
                        -g 3
done