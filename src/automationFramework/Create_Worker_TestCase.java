package automationFramework;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import automationFramework.HomePage;
import automationFramework.WorkerPage;
import automationFramework.CreateWorkerPage;

public class Create_Worker_TestCase {
	private static WebDriver driver = null;
	
	@BeforeTest
	public void beforeTest() {
		//driver = new FirefoxDriver();
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumWebdriver\\chromedriver.exe");
		driver = new ChromeDriver();
		
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		
		driver.get("http://jaylexhomecarestaging-env.ap-southeast-1.elasticbeanstalk.com/");
	}
	
	@Test
	public void sample_testcases() throws InterruptedException{
		HomePage Home_Page = PageFactory.initElements(driver, HomePage.class);
		WorkerPage Worker_Page = PageFactory.initElements(driver, WorkerPage.class);
		CreateWorkerPage Create_Worker_Page = PageFactory.initElements(driver, CreateWorkerPage.class);
		
		Home_Page.btn_Login.click();
		Home_Page.txtbx_UserName.sendKeys("wilbertmoreno");
		Home_Page.txtbx_Password.sendKeys("q@ZzM0rd");
		Home_Page.btn_Signin.click();
		Thread.sleep(1000);
		Worker_Page.lnk_Worker.click();
		Thread.sleep(1000);
		Worker_Page.lnk_CreateWorker.click();
		Thread.sleep(1000);
		Worker_Page.btn_AddWorker.click();
		
		//Presonal Information
		Create_Worker_Page.txtbx_FirstName.sendKeys("Test");
		Create_Worker_Page.txtbx_LastName.sendKeys("Test");
		Create_Worker_Page.txtbx_EmailAddress.sendKeys("test@gmail.com");
		
		Select Gender = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[2]/div[3]/select")));
		Gender.selectByVisibleText("Male");
		
		//Contact Information
		Create_Worker_Page.txtbx_ContactType.sendKeys("Home");
		Create_Worker_Page.txtbx_PhoneNo.sendKeys("1234567890");
		Create_Worker_Page.txtbx_MobileNo.sendKeys("1234567890");
		
		//Emergency Information
		Create_Worker_Page.txtbx_FullName.sendKeys("Test");
		Create_Worker_Page.txtbx_PrimaryPhone.sendKeys("1234567890");
		Create_Worker_Page.txtbx_Relation.sendKeys("Parents");
		
		//Address Information
		Create_Worker_Page.txtbx_FirstLine.sendKeys("PO Box");
		Create_Worker_Page.txtbx_City.sendKeys("Cebu");
		
		Select States = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[2]/select")));
		States.selectByVisibleText("ALABAMA");
		
		Create_Worker_Page.txtbx_ZipCode.sendKeys("12345");
		
		Select Country = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[4]/select")));
		Country.selectByVisibleText("USA");
		
		Create_Worker_Page.bnt_Create.click();
														
	}
			
	@AfterTest
	public void afterTest() {
		driver.quit();
	}

}
