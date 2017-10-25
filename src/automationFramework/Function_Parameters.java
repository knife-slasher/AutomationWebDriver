package automationFramework;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import automationFramework.HomePage;
import automationFramework.WorkerPage;
import automationFramework.CreateWorkerPage;

public class Function_Parameters {
	
	public static void Sign_In(WebDriver driver, String sUsername, String sPassword) throws InterruptedException {
		HomePage Home_Page = PageFactory.initElements(driver, HomePage.class);
		
		Home_Page.btn_Login.click();
		Home_Page.txtbx_UserName.sendKeys(sUsername);
		Home_Page.txtbx_Password.sendKeys(sPassword);
		Home_Page.btn_Signin.click();		
	}
	
	public static void Add_Worker(WebDriver driver) throws InterruptedException {
		WorkerPage Worker_Page = PageFactory.initElements(driver, WorkerPage.class);
		
		Worker_Page.lnk_Worker.click();
		Thread.sleep(1000);
		Worker_Page.lnk_CreateWorker.click();
		Thread.sleep(1000);
		Worker_Page.btn_AddWorker.click();
		Thread.sleep(1000);
	}
	
	public static void Personal_Information(WebDriver driver, String sFirstName, String sLastName, String sEmailAddress, String sGender) throws InterruptedException{
		CreateWorkerPage Create_Worker_Page = PageFactory.initElements(driver, CreateWorkerPage.class);
		
		Create_Worker_Page.txtbx_FirstName.sendKeys(sFirstName);
		Thread.sleep(1000);
		Create_Worker_Page.txtbx_LastName.sendKeys(sLastName);
		Thread.sleep(1000);
		Create_Worker_Page.txtbx_EmailAddress.sendKeys(sEmailAddress);
		Thread.sleep(1000);
		Select Gender = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[2]/div[3]/select")));
		Gender.selectByVisibleText(sGender);
		
	}
	
	public static void Contact_Information(WebDriver driver, String sContactType) throws InterruptedException {
		CreateWorkerPage Create_Worker_Page = PageFactory.initElements(driver, CreateWorkerPage.class);
		
		Create_Worker_Page.txtbx_ContactType.sendKeys(sContactType);
		Thread.sleep(1000);
		Create_Worker_Page.txtbx_PhoneNo.sendKeys("1234567890");
		Thread.sleep(1000);
		Create_Worker_Page.txtbx_MobileNo.sendKeys("1234567890");
		Thread.sleep(1000);
	}
	
	public static void Address_Information(WebDriver driver, String sFirstLine, String sCity, String sStates, String sCountry) throws InterruptedException {
		CreateWorkerPage Create_Worker_Page = PageFactory.initElements(driver, CreateWorkerPage.class);
		
		Create_Worker_Page.txtbx_FirstLine.sendKeys(sFirstLine);
		Thread.sleep(1000);
		Create_Worker_Page.txtbx_City.sendKeys(sCity);
		Thread.sleep(1000);
		
		Select States = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[2]/select")));
		States.selectByVisibleText(sStates);
		
		Create_Worker_Page.txtbx_ZipCode.sendKeys("12345");
		Thread.sleep(1000);
		
		Select Country = new Select(driver.findElement(By.xpath(".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[4]/select")));
		Country.selectByVisibleText(sCountry);
		
		Create_Worker_Page.btn_Cancel.click();
	}

}
