#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "5 + 3 = " << calc.Add(5, 3) << std::endl;
    std::cout << "5 - 3 = " << calc.Sub(5, 3) << std::endl;
    std::cout << "5 * 3 = " << calc.Mul(5, 3) << std::endl; // Виклик методу Mul
    return 0;
}
