bash hf2megatron_convertor.sh ../../../Megatron-LM ../../../cache/models/Qwen1.5-7B ../../../cache/models/megatron/Qwen1.5-7B-megatron-tp4-pp1 4 1 qwen1.5 0 false
#bash hf2megatron_convertor.sh ../../../Megatron-LM-231007 ../../../cache/models/megatron/Qwen1.5-7B-megatron-tp4-pp1/iter_0002000 ../../../cache/models/mg2hf/Qwen1.5-7B-megatron-tp4-pp1-iter2000 4 1 qwen1.5 0 true
#cp -r ../../../cache/models/Qwen1.5-7B/copy/* ../../../cache/models/mg2hf/Qwen1.5-7B-megatron-tp4-pp1-iter2000

#CUDA_VISIBLE_DEVICES="1,2,3,4" accelerate launch --main_process_port=29501 -m lm_eval --model hf --model_args pretrained=../../../cache/models/mg2hf/Qwen1.5-7B-megatron-tp4-pp1-iter2000/ --tasks gsm8k,hellaswag,arc_easy,winogrande,arc_challenge,mmlu --device cuda --batch_size 2

