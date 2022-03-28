package ast;

import java.util.Map;

public class RefExpr extends Expr {

    final Expr left;
    final Expr right;

    public RefExpr(Expr expr1, Expr expr2, Location loc) {
        super(loc);
        this.left = expr1;
        this.right = expr2;
    }

    @Override
    public String toString() {
        return "(" + simpleString() + ")";
    }

    public String simpleString() {

        return "(" + left.toString() + " . " + right.toString() + ")";
    }

    @Override
    public Qtype eval(Map<String, Function> allFunc, Map<String, Qtype> env) {
        Qref result = new Qref(this.left.eval(allFunc, env), this.right.eval(allFunc, env));
        return result;

    }

}
