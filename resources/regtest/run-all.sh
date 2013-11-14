#!/bin/bash
if ($(dirname $0)/regtest_fs.sh &&
    $(dirname $0)/regtest_stdout.sh &&
    $(dirname $0)/regtest_interpreters.sh &&
    $(dirname $0)/regtest_inline_shell.sh &&
    $(dirname $0)/regtest_async.sh &&
    $(dirname $0)/regtest_splitvars.sh &&
    $(dirname $0)/regtest_inputs_outputs.sh &&
    $(dirname $0)/regtest_methods.sh &&
    $(dirname $0)/regtest_protocol_eval.sh &&
    $(dirname $0)/regtest_s3.sh &&
    $(dirname $0)/regtest_temp.sh); then
  echo "run-all: ALL TESTS PASSED"
else
  echo "run-all: SOME TESTS FAILED"
  exit 1
fi
