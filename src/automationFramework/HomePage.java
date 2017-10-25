package automationFramework;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class HomePage {
	final WebDriver driver;
	
	@FindBy(how = How.XPATH, using = "html/body/div/div[1]/nav/div/div[2]/ul/li[1]/a")
	public WebElement btn_Login;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='loginForm']/div[2]/input")
	public WebElement txtbx_UserName;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='loginForm']/div[3]/input")
	public WebElement txtbx_Password;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='loginForm']/div[4]/button")
	public WebElement btn_Signin;
	
	// This is a constructor, as every page need a base driver to find web elements
	public HomePage(WebDriver driver)
	{
		this.driver=driver;
	}

}
