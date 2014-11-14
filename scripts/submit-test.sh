#!/bin/sh

# Note that first you need to do
# sbt
# > project demo
# > assembly
# > exit
SPARK_HOME=/home/mark/spark-1.1.0-bin-hadoop1

$SPARK_HOME/bin/spark-submit \
    --class com.twitter.scalding.Tool \
    demo/target/scala-2.10/spark-scalding-demo-assembly-0.2-SNAPSHOT.jar \
    com.tresata.spark.scalding.demo.DemoJob \
    --hdfs --input test/data/fruits.bsv --output out

