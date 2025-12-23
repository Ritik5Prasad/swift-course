// Custom operators let you define your own symbols for operations.
// Here, ** is defined as exponentiation. Use infix for between operands.
// Be careful – custom operators can confuse readers if not obvious.
// Great for domain-specific languages or math-heavy code.

import  Foundation

infix operator ** : MultiplicationPrecedence

func **(lhs: Int, rhs: Int) -> Int {
    Int(pow(Double(lhs), Double(rhs)))
}

print(2 ** 3)
