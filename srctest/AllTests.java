import javazoom.jl.decoder.BitstreamTest;
import javazoom.jl.player.jlpTest;
import junit.framework.Test;
import junit.framework.TestSuite;

/**
 * JavaLayer test suite.
 */
public class AllTests
{
	public static Test suite()
	{
		TestSuite suite = new TestSuite("Test for javazoom.jl.decoder");
		//$JUnit-BEGIN$
		suite.addTest(new TestSuite(BitstreamTest.class));
		suite.addTest(new TestSuite(jlpTest.class));
		//$JUnit-END$
		return suite;
	}
}
