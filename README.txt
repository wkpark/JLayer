-----------------------------------------------------
                  JavaLayer 0.1.2

 Project Homepage :
   http://www.javazoom.net/javalayer/javalayer.html 

 JAVA and MP3 online Forums :
   http://www.javazoom.net/services/forums/index.jsp
-----------------------------------------------------

DESCRIPTION :
-----------
JavaLayer is a 100% JAVA library that decodes/plays/converts MPEG 1/2 Layer 1/2/3 (i.e. MP3)
in real time. This is a non-commercial project and anyone can add his contribution.
JavaLayer is licensed under GPL (see LICENSE.txt).


FAQ : 
---

- How to install Javalayer ?
  Before running JavaLayer you must set PATH and CLASSPATH for JAVA
  and you must add jl012.jar to the CLASSPATH.

- Do I need JMF to run JavaLayer player ?
  No, JMF is not required. You just need a JVM JavaSound 1.0 compliant.
  (i.e. JVM1.3 or higher).

- How to run the MP3TOWAV converter ?
  java javazoom.jl.converter.jlc -v -p output.wav yourfile.mp3
  (Note : MP3TOWAV converter should work under jdk1.1.x, jdk1.2.x, jdk1.3.x)

- How to run the simple MP3 player ?
  java javazoom.jl.player.jlp localfile.mp3
   or
  java javazoom.jl.player.jlp -url http://www.aserver.com/remotefile.mp3
  Note : MP3 simple player only works under JVM that supports JavaSound 1.0 (i.e JDK1.3.x)

- Does simple MP3 player support streaming ?
  Yes, use the following command to play music from stream :
  java javazoom.jl.player.jlp -url http://www.shoutcastserver.com:8000

- Does JavaLayer support MPEG 2.5 ?
  No, JavaLayer doesn't support low bitrates (yet).

- How to get ID3v1 or ID3v2 tags from JavaLayer API ?
  The API doesn't provide this feature (yet).
