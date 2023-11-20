#!/bin/zsh

# yes, this is bad practice, no i won't rewrite it because that would take
# longer than writing this once

echo "Smith experiments..."
python3 sim.py smith 1 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_1.txt
python3 sim.py smith 2 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_2.txt
python3 sim.py smith 3 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_3.txt
python3 sim.py smith 4 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_4.txt
python3 sim.py smith 5 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_5.txt
python3 sim.py smith 6 ./provided/traces/gcc_trace.txt > ./out/exp/smith/gcc_6.txt

python3 sim.py smith 1 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_1.txt
python3 sim.py smith 2 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_2.txt
python3 sim.py smith 3 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_3.txt
python3 sim.py smith 4 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_4.txt
python3 sim.py smith 5 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_5.txt
python3 sim.py smith 6 ./provided/traces/jpeg_trace.txt > ./out/exp/smith/jpeg_6.txt

python3 sim.py smith 1 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_1.txt
python3 sim.py smith 2 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_2.txt
python3 sim.py smith 3 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_3.txt
python3 sim.py smith 4 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_4.txt
python3 sim.py smith 5 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_5.txt
python3 sim.py smith 6 ./provided/traces/perl_trace.txt > ./out/exp/smith/perl_6.txt

echo "Bimodal experiments..."
python3 sim.py bimodal 7 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_1.txt
python3 sim.py bimodal 8 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_2.txt
python3 sim.py bimodal 9 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_3.txt
python3 sim.py bimodal 10 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_4.txt
python3 sim.py bimodal 11 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_5.txt
python3 sim.py bimodal 12 ./provided/traces/gcc_trace.txt > ./out/exp/bimodal/gcc_6.txt

python3 sim.py bimodal 7 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_1.txt
python3 sim.py bimodal 8 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_2.txt
python3 sim.py bimodal 9 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_3.txt
python3 sim.py bimodal 10 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_4.txt
python3 sim.py bimodal 11 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_5.txt
python3 sim.py bimodal 12 ./provided/traces/jpeg_trace.txt > ./out/exp/bimodal/jpeg_6.txt

python3 sim.py bimodal 7 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_1.txt
python3 sim.py bimodal 8 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_2.txt
python3 sim.py bimodal 9 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_3.txt
python3 sim.py bimodal 10 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_4.txt
python3 sim.py bimodal 11 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_5.txt
python3 sim.py bimodal 12 ./provided/traces/perl_trace.txt > ./out/exp/bimodal/perl_6.txt

echo "Gshare experiments..."
python3 sim.py gshare 7 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_2.txt
python3 sim.py gshare 7 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_3.txt
python3 sim.py gshare 7 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_4.txt
python3 sim.py gshare 7 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_5.txt
python3 sim.py gshare 7 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_6.txt
python3 sim.py gshare 7 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_7_7.txt

python3 sim.py gshare 8 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_2.txt
python3 sim.py gshare 8 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_3.txt
python3 sim.py gshare 8 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_4.txt
python3 sim.py gshare 8 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_5.txt
python3 sim.py gshare 8 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_6.txt
python3 sim.py gshare 8 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_7.txt
python3 sim.py gshare 8 8 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_8_8.txt

python3 sim.py gshare 9 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_2.txt
python3 sim.py gshare 9 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_3.txt
python3 sim.py gshare 9 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_4.txt
python3 sim.py gshare 9 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_5.txt
python3 sim.py gshare 9 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_6.txt
python3 sim.py gshare 9 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_7.txt
python3 sim.py gshare 9 8 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_8.txt
python3 sim.py gshare 9 9 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_9_9.txt

python3 sim.py gshare 10 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_2.txt
python3 sim.py gshare 10 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_3.txt
python3 sim.py gshare 10 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_4.txt
python3 sim.py gshare 10 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_5.txt
python3 sim.py gshare 10 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_6.txt
python3 sim.py gshare 10 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_7.txt
python3 sim.py gshare 10 8 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_8.txt
python3 sim.py gshare 10 9 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_9.txt
python3 sim.py gshare 10 10 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_10_10.txt

python3 sim.py gshare 11 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_2.txt
python3 sim.py gshare 11 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_3.txt
python3 sim.py gshare 11 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_4.txt
python3 sim.py gshare 11 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_5.txt
python3 sim.py gshare 11 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_6.txt
python3 sim.py gshare 11 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_7.txt
python3 sim.py gshare 11 8 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_8.txt
python3 sim.py gshare 11 9 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_9.txt
python3 sim.py gshare 11 10 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_10.txt
python3 sim.py gshare 11 11 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_11_11.txt

python3 sim.py gshare 12 2 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_2.txt
python3 sim.py gshare 12 3 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_3.txt
python3 sim.py gshare 12 4 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_4.txt
python3 sim.py gshare 12 5 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_5.txt
python3 sim.py gshare 12 6 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_6.txt
python3 sim.py gshare 12 7 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_7.txt
python3 sim.py gshare 12 8 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_8.txt
python3 sim.py gshare 12 9 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_9.txt
python3 sim.py gshare 12 10 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_10.txt
python3 sim.py gshare 12 11 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_11.txt
python3 sim.py gshare 12 12 ./provided/traces/gcc_trace.txt > ./out/exp/gshare/gcc_12_12.txt

python3 sim.py gshare 7 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_2.txt
python3 sim.py gshare 7 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_3.txt
python3 sim.py gshare 7 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_4.txt
python3 sim.py gshare 7 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_5.txt
python3 sim.py gshare 7 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_6.txt
python3 sim.py gshare 7 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_7_7.txt

python3 sim.py gshare 8 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_2.txt
python3 sim.py gshare 8 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_3.txt
python3 sim.py gshare 8 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_4.txt
python3 sim.py gshare 8 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_5.txt
python3 sim.py gshare 8 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_6.txt
python3 sim.py gshare 8 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_7.txt
python3 sim.py gshare 8 8 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_8_8.txt

python3 sim.py gshare 9 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_2.txt
python3 sim.py gshare 9 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_3.txt
python3 sim.py gshare 9 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_4.txt
python3 sim.py gshare 9 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_5.txt
python3 sim.py gshare 9 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_6.txt
python3 sim.py gshare 9 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_7.txt
python3 sim.py gshare 9 8 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_8.txt
python3 sim.py gshare 9 9 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_9_9.txt

python3 sim.py gshare 10 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_2.txt
python3 sim.py gshare 10 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_3.txt
python3 sim.py gshare 10 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_4.txt
python3 sim.py gshare 10 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_5.txt
python3 sim.py gshare 10 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_6.txt
python3 sim.py gshare 10 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_7.txt
python3 sim.py gshare 10 8 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_8.txt
python3 sim.py gshare 10 9 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_9.txt
python3 sim.py gshare 10 10 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_10_10.txt

python3 sim.py gshare 11 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_2.txt
python3 sim.py gshare 11 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_3.txt
python3 sim.py gshare 11 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_4.txt
python3 sim.py gshare 11 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_5.txt
python3 sim.py gshare 11 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_6.txt
python3 sim.py gshare 11 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_7.txt
python3 sim.py gshare 11 8 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_8.txt
python3 sim.py gshare 11 9 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_9.txt
python3 sim.py gshare 11 10 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_10.txt
python3 sim.py gshare 11 11 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_11_11.txt

python3 sim.py gshare 12 2 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_2.txt
python3 sim.py gshare 12 3 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_3.txt
python3 sim.py gshare 12 4 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_4.txt
python3 sim.py gshare 12 5 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_5.txt
python3 sim.py gshare 12 6 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_6.txt
python3 sim.py gshare 12 7 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_7.txt
python3 sim.py gshare 12 8 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_8.txt
python3 sim.py gshare 12 9 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_9.txt
python3 sim.py gshare 12 10 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_10.txt
python3 sim.py gshare 12 11 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_11.txt
python3 sim.py gshare 12 12 ./provided/traces/jpeg_trace.txt > ./out/exp/gshare/jpeg_12_12.txt

python3 sim.py gshare 7 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_2.txt
python3 sim.py gshare 7 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_3.txt
python3 sim.py gshare 7 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_4.txt
python3 sim.py gshare 7 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_5.txt
python3 sim.py gshare 7 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_6.txt
python3 sim.py gshare 7 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_7_7.txt

python3 sim.py gshare 8 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_2.txt
python3 sim.py gshare 8 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_3.txt
python3 sim.py gshare 8 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_4.txt
python3 sim.py gshare 8 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_5.txt
python3 sim.py gshare 8 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_6.txt
python3 sim.py gshare 8 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_7.txt
python3 sim.py gshare 8 8 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_8_8.txt

python3 sim.py gshare 9 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_2.txt
python3 sim.py gshare 9 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_3.txt
python3 sim.py gshare 9 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_4.txt
python3 sim.py gshare 9 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_5.txt
python3 sim.py gshare 9 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_6.txt
python3 sim.py gshare 9 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_7.txt
python3 sim.py gshare 9 8 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_8.txt
python3 sim.py gshare 9 9 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_9_9.txt

python3 sim.py gshare 10 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_2.txt
python3 sim.py gshare 10 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_3.txt
python3 sim.py gshare 10 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_4.txt
python3 sim.py gshare 10 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_5.txt
python3 sim.py gshare 10 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_6.txt
python3 sim.py gshare 10 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_7.txt
python3 sim.py gshare 10 8 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_8.txt
python3 sim.py gshare 10 9 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_9.txt
python3 sim.py gshare 10 10 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_10_10.txt

python3 sim.py gshare 11 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_2.txt
python3 sim.py gshare 11 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_3.txt
python3 sim.py gshare 11 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_4.txt
python3 sim.py gshare 11 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_5.txt
python3 sim.py gshare 11 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_6.txt
python3 sim.py gshare 11 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_7.txt
python3 sim.py gshare 11 8 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_8.txt
python3 sim.py gshare 11 9 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_9.txt
python3 sim.py gshare 11 10 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_10.txt
python3 sim.py gshare 11 11 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_11_11.txt

python3 sim.py gshare 12 2 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_2.txt
python3 sim.py gshare 12 3 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_3.txt
python3 sim.py gshare 12 4 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_4.txt
python3 sim.py gshare 12 5 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_5.txt
python3 sim.py gshare 12 6 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_6.txt
python3 sim.py gshare 12 7 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_7.txt
python3 sim.py gshare 12 8 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_8.txt
python3 sim.py gshare 12 9 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_9.txt
python3 sim.py gshare 12 10 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_10.txt
python3 sim.py gshare 12 11 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_11.txt
python3 sim.py gshare 12 12 ./provided/traces/perl_trace.txt > ./out/exp/gshare/perl_12_12.txt
