#include "calculator.h"
#include <iostream>

int main() {
    Calculator calc;
    double a = 10.0, b = 5.0;
    
    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Sub: " << calc.Sub(a, b) << std::endl;
    
    return 0;
}
