#!/bin/sh
#######################################################
#         JavaLayer 0.0.9 Unix Build Script
#
# Project Homepage :
#   http://www.javazoom.net/javalayer/javalayer.html
#
# Developer Homepage :
#   http://sourceforge.net/project/?group_id=1344
#
#######################################################

# JAVA_HOME and JL must be set below
JAVA_HOME=/usr/local/java/jdk1.3
JL=/home/javazoom/JavaLayer0.0.9

#---------------------------
# Do not modify lines below
#---------------------------
CLASSPATH=$JAVA_HOME/lib/tools.jar
PATH=$PATH:$JAVA_HOME/bin
JLDECODERSRC=$JL/src/javazoom/jl/decoder
JLCONVERTERSRC=$JL/src/javazoom/jl/converter
JLSIMPLEPLAYER=$JL/src/javazoom/jl/player
javac -classpath $CLASSPATH:$JL/classes -d $JL/classes $JLDECODERSRC/*.java
javac -classpath $CLASSPATH:$JL/classes -d $JL/classes $JLCONVERTERSRC/*.java
cd $JLDECODERSRC
cp *.ser $JL/classes/javazoom/jl/decoder

# MP3 Simple Player support :
#
# Comment both lines below for JDK1.1.x or JDK 1.2.x
cd $JLSIMPLEPLAYER
javac -classpath $JL/classes -d $JL/classes *.java

# Jar Generation
cd $JL/classes
jar cvf ../jl009.jar *
cd $JL
