package ast;

import java.util.Map;

public class Qref extends Qtype {
    Qtype left;
    Qtype right;
    boolean isNil;

    public Qref(Qtype left, Qtype right) {
        this.left = left;
        this.right = right;
        this.isNil = false;
    }

    public Qref(String nil) {
        this.isNil = true;
    }

    public boolean isNil() {
        return this.isNil;
    }

    @Override
    public String toString() {
        if (this.left == null) {
            return "nil";
        }
        return "(" + this.left.toString() + " . " + right.toString() + ")";
    }

}
