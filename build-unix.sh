#!/bin/sh
#######################################################
#         JavaLayer 0.0.8 Unix Build Script
#          (jdk1.1.x, jdk 1.2.x, jdk1.3.x)
#
# Project Homepage :
#   http://www.javazoom.net/javalayer/javalayer.html
#
# Developer Homepage :
#   http://sourceforge.net/project/?group_id=1344
#
#######################################################

# JAVA_HOME must be set below
JAVA_HOME=/usr/local/java/jdk1.2.2

# Javalayer build directory must be set below
JL=/home/javazoom/JavaLayer/0.0.8

# Classpath must be set below :
#
# for JDK 1.1.x :
# CLASSPATH=$JAVA_HOME/lib/classes.zip
#
# for JDK 1.2.x or JDK 1.3.x :
# CLASSPATH=$JAVA_HOME/lib/tools.jar

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
# Uncomment both lines below for jdk1.3

# cd $JLSIMPLEPLAYER
# javac -classpath $JL/classes -d $JL/classes *.java

# Jar Generation

cd $JL/classes
jar cvf jl008.jar *
cd $JL
