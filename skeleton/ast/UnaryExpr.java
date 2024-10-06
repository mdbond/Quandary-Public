package ast; 
public class UnaryExpr extends Expr {
    
    public static final int MINUS = 1;

    final Expr expr1;
    final int operator;

    public UnaryExpr(Expr expr1, int operator, Location loc){
        super(loc);
        this.expr1 = expr1;
        this.operator = operator;
    }

    public Expr getExpr1() {
        return expr1;
    }

    public int getOperator() {
        return operator;
    }

    @Override
    public String toString() {
        String s = null;
        switch (operator) {
            case MINUS: s = "-"; break;
        }
        return "(" + s + " " + expr1 + ")";
    }
}