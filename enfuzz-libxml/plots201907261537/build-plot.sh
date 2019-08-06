#./build-plot.sh  ~/projects/libxml ~/projects/libxml/plots
#~/afl/afl-plot ../out-enfuzz-RQ/monitor ./out-enfuzz-RQ/monitori
plot=~/afl/afl-plot
project=$1
out=$2
for i in "out-enfuzz-RQ" "out-enfuzz-Q" "out-enfuzz-A"
do
	echo $i
	for j in "afl" "aflfast" "fairfuzz" "monitor"
	do
		rm -r $out/$i/$j
		#echo $project/$i/$j
		$plot $project/$i/$j $out/$i/$j
		#echo $project/$i/$j
	done
done

