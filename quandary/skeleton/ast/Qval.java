package ast;

import java.util.Map;

public class Qval extends Qtype {
    long value;

    public Qval(long value) {
        this.value = value;
    }

    public Qval() {

    }

    @Override
    public String toString() {
        return Long.toString(value);
    }

    public Long value() {
        return this.value;
    }

    public boolean equals(Qval q1) {
        return this.value == q1.value;
    }

    public static Qval plus(Qval q1, Qval q2) {
        long result = q1.value + q2.value;
        return new Qval(result);
    }

    public static Qval minus(Qval q1, Qval q2) {
        long result = q1.value - q2.value;
        return new Qval(result);
    }

    public static Qval times(Qval q1, Qval q2) {
        long result = q1.value * q2.value;
        return new Qval(result);
    }

}
