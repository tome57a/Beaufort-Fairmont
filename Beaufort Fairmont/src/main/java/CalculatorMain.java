package main.java;

import java.lang.Math;

public class CalculatorMain {
    public int add(int a, int b) {
        return a + b;
    }
    public int subtract(int a, int b) {
        return b - a;	/* Subtract a from b */
    }
    public int multiply(int a, int b) {
        return a * b;
    }
    public double divide(int a, int b) throws ArithmeticException {
        return a / b;
    }
    public double root(double a) throws ArithmeticException {
        return Math.sqrt(a);
    }
}
