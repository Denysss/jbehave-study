package com.epam.qa.automation.steps;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import pages.GmailLoginPage;

import org.jbehave.core.annotations.BeforeScenario;
import org.jbehave.core.annotations.ScenarioType;
import org.jbehave.core.annotations.AfterScenario;

public abstract class TestTemplate {

	protected static WebDriver driver;
	protected static GmailLoginPage logInPage;

	@BeforeScenario (uponType=ScenarioType.EXAMPLE)
	public void beforeTest () {
		driver = new FirefoxDriver();
	}

	@AfterScenario(uponType=ScenarioType.EXAMPLE)
	public void afterTest () {
		driver.quit();
	}

}