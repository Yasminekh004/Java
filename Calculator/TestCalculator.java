public class TestCalculator {
    public static void main(String[] args) {
        Calculator calculator = new Calculator();

        calculator.performOperation(10.5);
        calculator.performOperation2('+');
        calculator.performOperation(5.2);
        calculator.performOperation2('*');
        calculator.performOperation(10);
        calculator.performOperation2('=');

        calculator.getResults();
    }
}
