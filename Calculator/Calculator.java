import java.io.Serializable;
import java.util.ArrayList;

public class Calculator implements Serializable {
    private ArrayList<Double> numbers = new ArrayList<>();
    private ArrayList<Character> ops = new ArrayList<>();

    public Calculator() {
        this.numbers = new ArrayList<>();
        this.ops = new ArrayList<>();

    }

    public ArrayList<Double> getNumbers() {
        return numbers;
    }

    public ArrayList<Character> getOps() {
        return ops;
    }

    public void setNumbers(ArrayList<Double> numbers) {
        this.numbers = numbers;
    }

    public void setOps(ArrayList<Character> ops) {
        this.ops = ops;
    }

    public void performOperation2(Character operation) {
        if (!operation.equals('=')) {
            ops.add(operation);
        }

    }

    public void performOperation(double operand) {
        numbers.add(operand);
    }

    private double cal() {

        for (int i = 0; i < ops.size(); i++) {
            if (ops.get(i) == '*' || ops.get(i) == '/') {
                double result = switch (ops.get(i)) {
                    case '*' -> numbers.get(i) * numbers.get(i + 1);
                    case '/' -> numbers.get(i) / numbers.get(i + 1);
                    default -> numbers.get(i);
                };

                numbers.set(i, result);
                numbers.remove(i + 1);
                ops.remove(i);
                i--;
            }
        }

        for (int i = 0; i < ops.size(); i++) {
            if (ops.get(i) == '+' || ops.get(i) == '-') {
                double result = (ops.get(i) == '+')
                        ? numbers.get(i) + numbers.get(i + 1)
                        : numbers.get(i) - numbers.get(i + 1);

                numbers.set(i, result);
                numbers.remove(i + 1);
                ops.remove(i);
                i--;
            }
        }

        return numbers.get(0);
    }

    public void getResults() {
        System.out.println("Result is : " + cal());
    }
}
