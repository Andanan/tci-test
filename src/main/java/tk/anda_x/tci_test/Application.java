package tk.anda_x.tci_test;

import org.apache.commons.lang3.ArrayUtils;

public class Application {
	
	private static final String MSG = "Hello Travis-CI";
	private boolean[] ba;

	public static void main(String[] args) {
		System.out.println(Application.MSG);
		Application a = new Application();
		System.out.println(a.getMsg());
		System.out.println(ArrayUtils.toString(a.getBa()));
	}
	public Application() {
		this.ba = ArrayUtils.add(ArrayUtils.EMPTY_BOOLEAN_ARRAY, true);
	}
	
	public String getMsg() {
		return Application.MSG;
	}
	
	public boolean[] getBa(){
		return this.ba.clone();
	}

}
