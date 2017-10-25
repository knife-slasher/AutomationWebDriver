package automationFramework;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class CreateWorkerPage {
	final WebDriver driver;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[1]/div[1]/input")
	public WebElement txtbx_FirstName;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[1]/div[2]/input")
	public WebElement txtbx_MiddleName;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[1]/div[3]/input")
	public WebElement txtbx_LastName;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='email-to-lowercase']")
	public WebElement txtbx_EmailAddress;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[1]/div/div[2]/div/div[2]/div[3]/select")
	public WebElement drp_Gender;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[2]/div/div[2]/div/div/div[1]/input")
	public WebElement txtbx_ContactType;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[2]/div/div[2]/div/div/div[2]/input")
	public WebElement txtbx_PhoneNo;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[2]/div/div[2]/div/div/div[3]/input")
	public WebElement txtbx_MobileNo;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[3]/div/div[2]/div/div/div/div[1]/input")
	public WebElement txtbx_FullName;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[3]/div/div[2]/div/div/div/div[2]/input")
	public WebElement txtbx_PrimaryPhone;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[3]/div/div[2]/div/div/div/div[4]/input")
	public WebElement txtbx_Relation;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[1]/div[1]/input")
	public WebElement txtbx_FirstLine;
	
	@FindBy(how = How.XPATH, using = "//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[1]/input")
	public WebElement txtbx_City;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[2]/select")
	public WebElement drp_States;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[3]/input")
	public WebElement txtbx_ZipCode;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[4]/div/div[2]/div/div[2]/div[4]/select")
	public WebElement drp_Country;
	
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[6]/button[1]") //Cancel button
	public WebElement btn_Cancel;
	
	@FindBy(how = How.XPATH, using = ".//*[@id='createWorkerForm']/div[6]/button[2]") //Create button
	public WebElement bnt_Create;
	
	// This is a constructor, as every page need a base driver to find web elements	
	public CreateWorkerPage(WebDriver driver) {
		this.driver = driver;
	}

}
