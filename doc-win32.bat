rem #######################################################
rem #       JavaLayer 0.0.8 WIN32 Build Script (Doc)
rem #                (jdk 1.2.x, jdk1.3.x)
rem #
rem # Project Homepage :
rem #   http://www.javazoom.net/javalayer/javalayer.html 
rem #
rem # Developer Homepage :
rem #   http://sourceforge.net/project/?group_id=1344
rem #
rem #######################################################
set JAVA_HOME=d:\Installed\jdk1.3.rc1

set PATH=%JAVA_HOME%\bin;%PATH%
set CLASSPATH=%JAVA_HOME%\lib\tools.jar
set JL=d:\Installed\JavaLayer0.0.8
set DOCS=%JL%\doc

rem ---------------------------------------------
rem -              Docs to build                -
rem ---------------------------------------------
set JLDECODERSRC=%JL%\src\javazoom\jl\decoder
set JLCONVERTERSRC=%JL%\src\javazoom\jl\converter
set JLSIMPLEPLAYER=%JL%\src\javazoom\jl\player

javadoc -version -sourcepath %JLDECODERSRC%;%JLCONVERTERSRC%;%JLSIMPLEPLAYER% -classpath %JLDECODERSRC%;%JLCONVERTERSRC%;%JLSIMPLEPLAYER% -d %DOCS% %JLDECODERSRC%\*.java %JLCONVERTERSRC%\*.java %JLSIMPLEPLAYER%\*.java

