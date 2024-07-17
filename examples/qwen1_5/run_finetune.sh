sh run_finetune_megatron_qwen_withGA.sh  \
dsw  \
../../ \
7B     \
1      \
128     \
1e-5   \
1e-6   \
128   \
128     \
293      \
bf16   \
4      \
1      \
sel    \
true   \
false  \
false  \
false \
1000 \
/home/fuweiy/Pai-Megatron-Patch/cache/datasets/alpaca_zh-qwen-train.json \
/home/fuweiy/Pai-Megatron-Patch/cache/datasets/alpaca_zh-qwen-valid.json \
/home/fuweiy/Pai-Megatron-Patch/cache/models/megatron/Qwen1.5-7B-megatron-tp4-pp1  \
2000 \
10 \
/home/fuweiy/Pai-Megatron-Patch/cache/checkpoints/qwen7B-test_tp4pp1_variance \
2>&1 | tee alpaca_tp4pp1.log

