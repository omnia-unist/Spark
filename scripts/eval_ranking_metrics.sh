TEST_NAME=RankingMetrics
#TEST_TYPE=Blaze-Mem-Disk
EXECUTORS=6

FRACTION=0.4
MEM_FRACTION=0.4
DAG_PATH=None

CLASS=org.apache.spark.examples.mllib.RankingMetricsExample
JAR=/home/ubuntu/blaze/examples/target/scala-2.12/jars/spark-examples_2.12-3.3.2.jar
ARGS=/svdpp-small
MEM_OVERHEAD=4g

SLACK=0
PROMOTE=0.0
PROFILE_TIMEOUT=60

MEM_SIZE=30g
DISAGG=8000g
DISK_THRESHOLD=8000g
TEST_TYPE=Blaze-Disk-Recomp-Cost
./drdd_runner.sh $TEST_NAME $TEST_TYPE $MEM_SIZE $EXECUTORS $FRACTION $DISAGG $DAG_PATH $CLASS $JAR $MEM_OVERHEAD $SLACK $PROMOTE $PROFILE_TIMEOUT $MEM_FRACTION $DISK_THRESHOLD $ARGS 
