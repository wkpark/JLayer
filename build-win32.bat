rem #######################################################
rem #         JavaLayer 0.0.8 WIN32 Build Script
rem #          (jdk1.1.x, jdk 1.2.x, jdk1.3.x)
rem #
rem # Project Homepage :
rem #   http://www.javazoom.net/javalayer/javalayer.html 
rem #
rem # Developer Homepage :
rem #   http://sourceforge.net/project/?group_id=1344
rem #
rem #######################################################

rem # JAVA_HOME must be set below
set JAVA_HOME=d:\Installed\jdk1.3.rc1

rem # Javalayer build directory must be set below
set JL=d:\Installed\JavaLayer0.0.8

rem # Classpath must be set below :
rem #
rem # for JDK 1.1.x :
rem # set CLASSPATH=%JAVA_HOME%\lib\classes.zip
rem #
rem # for JDK 1.2.x or JDK 1.3.x :
rem # set CLASSPATH=%JAVA_HOME%\lib\tools.jar

set CLASSPATH=%JAVA_HOME%\lib\tools.jar

set PATH=%PATH%;%JAVA_HOME%\bin
set JLDECODERSRC=%JL%\src\javazoom\jl\decoder
set JLCONVERTERSRC=%JL%\src\javazoom\jl\converter
set JLSIMPLEPLAYER=%JL%\src\javazoom\jl\player
javac -classpath %CLASSPATH%;%JL%\classes -d %JL%\classes %JLDECODERSRC%\*.java
javac -classpath %CLASSPATH%;%JL%\classes -d %JL%\classes %JLCONVERTERSRC%\*.java

cd %JLDECODERSRC%
copy *.ser %JL%\classes\javazoom\jl\decoder

rem # MP3 Simple Player support :
rem #
rem # Comment both lines below for jdk1.1.x and jdk1.2.x

cd %JLSIMPLEPLAYER%
javac -classpath %JL%\classes -d %JL%\classes *.java

rem # Jar Generation

cd %JL%\classes
jar cvf jl008.jar *
cd %JL%
