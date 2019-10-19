current=`pwd`
LOGDIR=$current
export PYTORCH_TEST_WITH_ROCM=1 

echo "========================= py-cuda====================="
python /root/pytorch/test/test_cuda.py -v 2>&1 | tee $LOGDIR/py-cuda.log	
echo "========================= py-autograd====================="
python /root/pytorch/test/test_autograd.py -v 2>&1 | tee $LOGDIR/py-autograd.log
echo "========================= py-dataloader ====================="
python /root/pytorch/test/test_dataloader.py	-v 2>&1 | tee $LOGDIR/py-dataloader.log
echo "========================= py-distributions====================="
python /root/pytorch/test/test_distributions.py -v 2>&1 | tee $LOGDIR/py-distributions.log
echo "========================= py-indexing====================="
python /root/pytorch/test/test_indexing.py -v 2>&1 | tee $LOGDIR/py-indexing.log
echo "========================= py-jit====================="
python /root/pytorch/test/test_jit.py -v 2>&1 | tee $LOGDIR/py-jit.log	
echo "========================= py-nn====================="
python /root/pytorch/test/test_nn.py	-v 2>&1 | tee $LOGDIR/py-nn.log	
echo "========================= py-optim===================="
python /root/pytorch/test/test_optim.py	-v 2>&1 | tee $LOGDIR/py-optim.log
echo "========================= py-sparse====================="
python /root/pytorch/test/test_sparse.py	-v 2>&1 | tee $LOGDIR/py-sparse.log	
echo "========================= py-torch====================="
python /root/pytorch/test/test_torch.py -v 2>&1 | tee $LOGDIR/py-torch.log
echo "========================= py-utils====================="
python /root/pytorch/test/test_utils.py -v 2>&1 | tee $LOGDIR/py-utils.log
echo "========================= py-test_cuda_primary_ctx====================="
python /root/pytorch/test/test_cuda_primary_ctx.py -v 2>&1 | tee $LOGDIR/test_cuda_primary_ctx.log
echo "========================py-test_indexing_cuda====================="
python /root/pytorch/test/test_indexing_cuda.py -v 2>&1 | tee $LOGDIR/test_indexing_cuda.log	
echo "========================= py-test_numba_integration ====================="
python /root/pytorch/test/test_numba_integration.py	-v 2>&1 | tee $LOGDIR/py-test_numba_integration.log
echo "========================= py-test_type_info====================="
python /root/pytorch/test/test_type_info.py -v 2>&1 | tee $LOGDIR/py-test_type_info.log
echo "========================= py-test_type_hints====================="
python /root/pytorch/test/test_type_hints.py -v 2>&1 | tee $LOGDIR/py-test_type_hints.log
echo "========================= py-test_expecttest====================="
python /root/pytorch/test/test_expecttest.py -v 2>&1 | tee $LOGDIR/py-test_expecttest.log	
echo "========================= py-test_docs_coverage====================="
python /root/pytorch/test/test_docs_coverage.py -v 2>&1 | tee $LOGDIR/py-test_docs_coverage.log	
echo "========================= py-dist_autograd====================="
python /root/pytorch/test/test_dist_autograd.py -v 2>&1 | tee $LOGDIR/py-dist_autograd.log	
echo "========================= py-fake_quant====================="
python /root/pytorch/test/test_fake_quant.py -v 2>&1 | tee $LOGDIR/py-fake_quant.log	
echo "========================= py-logging====================="
python /root/pytorch/test/test_logging.py -v 2>&1 | tee $LOGDIR/py-logging.log	
echo "========================= py-mkldnn====================="
python /root/pytorch/test/test_mkldnn.py -v 2>&1 | tee $LOGDIR/py-mkldnn.log	
echo "========================= py-qat===================="
python /root/pytorch/test/test_qat.py -v 2>&1 | tee $LOGDIR/py-qat.log	
echo "========================= py-quantization===================="
python /root/pytorch/test/test_quantization.py -v 2>&1 | tee $LOGDIR/py-quantization.log	
echo "========================= py-quantized===================="
python /root/pytorch/test/test_quantized.py -v 2>&1 | tee $LOGDIR/py-quantized.log	
echo "========================= py-quantized_tensor===================="
python /root/pytorch/test/test_quantized_tensor.py -v 2>&1 | tee $LOGDIR/py-quantized_tensor.log	
echo "========================= py-quantized_nn_mods===================="
python /root/pytorch/test/test_quantized_nn_mods.py -v 2>&1 | tee $LOGDIR/py-quantized_nn_mods.log	
echo "========================= py-quantizer===================="
python /root/pytorch/test/test_quantizer.py -v 2>&1 | tee $LOGDIR/py-quantizer.log	
echo "========================= py-rpc===================="
python /root/pytorch/test/test_rpc.py -v 2>&1 | tee $LOGDIR/py-rpc.log	
echo "========================= py-namedtuple_return_api===================="
python /root/pytorch/test/test_namedtuple_return_api.py -v 2>&1 | tee $LOGDIR/py-namedtuple_return_api.log	
echo "========================= py-jit_fuser===================="
python /root/pytorch/test/test_jit_fuser.py -v 2>&1 | tee $LOGDIR/py-jit_fuser.log	
echo "========================= py-tensorboard===================="
python /root/pytorch/test/test_tensorboard.py -v 2>&1 | tee $LOGDIR/py-tensorboard.log	
echo "========================= py-namedtensor===================="
python /root/pytorch/test/test_namedtensor.py -v 2>&1 | tee $LOGDIR/py-namedtensor.log	
echo "========================= py-jit_disabledr===================="
python /root/pytorch/test/test_jit_disabled.py -v 2>&1 | tee $LOGDIR/py-jit_disabled.log	

