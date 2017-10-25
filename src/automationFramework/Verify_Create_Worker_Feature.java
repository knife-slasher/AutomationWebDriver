package automationFramework;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import automationFramework.Function_Parameters;
import automationFramework.Constant;

public class Verify_Create_Worker_Feature {
	private static WebDriver driver = null;
	
	
	@BeforeTest
	public void beforeTest() {
		//driver = new FirefoxDriver();
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumWebdriver\\chromedriver.exe");
		driver = new ChromeDriver();
		
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		
		driver.get(Constant.URL);
	}
	
	@Test (priority = 0)
	public void verify_login_page() throws InterruptedException{
		Function_Parameters.Sign_In(driver, Constant.sUsername, Constant.sPassword);
		WebElement login_user = driver.findElement(By.xpath("/html/body/div/div[1]/nav/div/div[2]/ul/li[2]"));
		Thread.sleep(1000);
		Assert.assertTrue(login_user.getText().contains("Wilbert Moreno"));
	}
	
	@Test (priority = 1)
	public void verify_add_worker_button_present() throws InterruptedException{
		//Function_Parameters.Sign_In(driver, Constant.sUsername, Constant.sPassword);
		Thread.sleep(3000);
		Function_Parameters.Add_Worker(driver);
		Thread.sleep(3000);
		WebElement create_worker = driver.findElement(By.xpath(".//*[@id='createWorker']/div/div[1]/div/div[1]/h4/span"));
		Thread.sleep(3000);
		Assert.assertTrue(create_worker.getText().contains("Create Worker"));		
	}
	
	@Test(priority = 2)
	public void verify_create_worker_successfully() throws InterruptedException{
		//Function_Parameters.Sign_In(driver, Constant.sUsername, Constant.sPassword);
		//Thread.sleep(3000);
		//Function_Parameters.Add_Worker(driver);
		Thread.sleep(3000);
		Function_Parameters.Personal_Information(driver, Constant.sFirstName, Constant.sLastName, Constant.sEmailAddress, Constant.sGender);
		Thread.sleep(3000);
		Function_Parameters.Contact_Information(driver, Constant.sContactType);
		Thread.sleep(3000);
		Function_Parameters.Address_Information(driver, Constant.sFirstLine, Constant.sCity, Constant.sStates, Constant.sCountry);
	}
					
	@AfterTest
	public void afterTest() {
		driver.quit();
	}

}
