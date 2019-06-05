package test.java;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
  features = { "classpath:features/Calculator.feature" },
  glue = {"test.java" })

public class CalculatorTest {
	//TODO: Run with JUnit
}
