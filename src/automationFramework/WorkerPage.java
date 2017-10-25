package automationFramework;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class WorkerPage {
	final WebDriver driver;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='wrapper']/div/ul/li[3]/a")
	public WebElement lnk_Worker;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='worker']/li[1]/a")
	public WebElement lnk_CreateWorker;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorker']/div/div[1]/div/div[2]/div/button")
	public WebElement btn_AddWorker;
	
	// This is a constructor, as every page need a base driver to find web elements	
	public WorkerPage(WebDriver driver) {
		this.driver = driver;
		
	}

}
