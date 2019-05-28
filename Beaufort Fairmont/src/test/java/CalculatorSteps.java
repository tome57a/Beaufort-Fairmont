/**
 * 
 */
package test.java;

import org.junit.Assert;
import org.junit.Before;
import org.hamcrest.CoreMatchers;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import main.java.CalculatorMain;

public class CalculatorSteps {
    private double result;
    private CalculatorMain calculator;
 
    @Before
    private void init() {
        result = 0.0;
    }
 
    @Given("^I have a calculator$")
    public void initializeCalculator() throws Throwable {
        calculator = new CalculatorMain();
    }
 
    @When("^I add (-?\\d+) and (-?\\d+)$")
    public void testAdd(int num1, int num2) throws Throwable {
        result = calculator.add(num1, num2);
    }
 
    @When("^I subtract (-?\\d+) from (-?\\d+)$")
    public void testSubtract(int num1, int num2) throws Throwable {
        result = calculator.subtract(num1, num2);
    }
 
    @When("^I multiply (-?\\d+) by (-?\\d+)$")
    public void testMultiply(int num1, int num2) throws Throwable {
        result = calculator.multiply(num1, num2);
    }
 
    @When("^I divide (-?\\d+) by (-?\\d+)$")
    public void testDivide(int num1, int num2) throws Throwable {
        result = calculator.divide(num1, num2);
    }
 
    @When("^I take the square root of (-?\\d+)$")
    public void testSqrt(double num) throws Throwable {
        result = calculator.root(num);
    }
 
    @Then("^the result should be (-?\\d+)$")
    public void validateResult(double expectedResult) throws Throwable {
        Assert.assertThat(result, CoreMatchers.equalTo(expectedResult));
    }
}
