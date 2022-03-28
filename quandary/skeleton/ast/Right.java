package ast;

import java.util.Map;
import java.util.Queue;
import java.util.Random;

public class Right extends Function {

    public Right(Location loc) {
        super(loc);
    }

    public Qtype exec(Map<String, Function> allFunc, Queue<Qtype> parameter) {
        Qref temp = (Qref) parameter.poll();

        return temp.right;
    }
}
