package tk.anda_x.tci_test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.Arrays;

import org.junit.Before;
import org.junit.Test;

public class ApplicationTest {
	
	private Application app;
	
	@Before
	public void initAppObject(){
		this.app = new Application();
	}
	
	@Test
	public void getMsgShouldReturnCorrectString() {
		assertEquals("Hello Travis-CI", this.app.getMsg());
	}
	
	@Test
	public void getBaShouldReturnArrayWithSingleTrueValue(){
		boolean[] expectedArray = {true};
		assertTrue(Arrays.equals(expectedArray, this.app.getBa()));
	}
	
}
