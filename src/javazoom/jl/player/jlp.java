/*
 * 29/01/00		Initial version. mdm@techie.com
/*-----------------------------------------------------------------------
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *----------------------------------------------------------------------
 */

package javazoom.jl.player;

import java.io.*;

import javazoom.jl.decoder.JavaLayerException;

/**
 * The <code>jlp</code> class implments a simple command-line
 * player for MPEG audio files. 
 * 
 * @author Mat McGowan (mdm@techie.com)
 */
public class jlp
{
	private String fFilename = null;
		
	public static void main(String[] args)
	{
		int retval = 0;
		try
		{
			jlp player = createInstance(args);
			if (player!=null)
				player.play();
		}
		catch (Exception ex)
		{
			System.err.println(ex);
			ex.printStackTrace(System.err);
			retval = 1;
		}
		System.exit(retval);
	}
	
	static public jlp createInstance(String[] args)
	{
		jlp player = new jlp();
		if (!player.parseArgs(args))
			player = null;
		return player;
	}
	
	private jlp()
	{
	}
	
	public jlp(String filename)
	{
		init(filename);	
	}
	
	protected void init(String filename)
	{
		fFilename = filename;	
	}
	
	protected boolean parseArgs(String[] args)
	{
		boolean parsed = false;
		if (args.length == 1)
		{
			init(args[0]);			
			parsed = true;
		}
		else
		{
			showUsage();	
		}
		return parsed;
	}
	
	public void showUsage()
	{
		System.out.println("Usage: jlp <filename>");
	}
	
	public void play()
		throws JavaLayerException
	{
		try
		{
			System.out.println("playing "+fFilename+"...");
			InputStream in = getInputStream();
			AudioDevice dev = getAudioDevice();
			Player player = new Player(in, dev);
			player.play();
		}
		catch (IOException ex)
		{
			throw new JavaLayerException("Problem playing file "+fFilename, ex);
		}
		catch (RuntimeException ex)
		{
			throw new JavaLayerException("Problem playing file "+fFilename, ex);
		}
	}
	
	protected InputStream getInputStream()
		throws IOException
	{
		FileInputStream fin = new FileInputStream(fFilename);
		BufferedInputStream bin = new BufferedInputStream(fin);
		return bin;
	}
	
	protected AudioDevice getAudioDevice()
		throws JavaLayerException
	{
		return FactoryRegistry.systemRegistry().createAudioDevice();
	}
	
}
