module metaschool::calculator_l12 {
    use std::signer;

    struct Calculator has key {
        result: vector<u8>,  // Result will be of type string 
    }

    public entry fun create_calculator(account: &signer) acquires Calculator {
        if (exists<Calculator>(signer::address_of(account))){
            let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
            calculator.result = b"";  
        }
        else {
            let calculator = Calculator { result: b"" };
            move_to(account, calculator);
        }
    }
 
    // Add your functions here 
    public entry fun add(account: &signer, num1: u64, num2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"This is add function";

        get_result(account);
    }

    public entry fun substract(account: &signer, num1: u64, num2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"This is substract function";

        get_result(account);
    }

    public entry fun multiply(account: &signer, num1: u64, num2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"This is multiply function";

        get_result(account);
    }

    public entry fun divide(account: &signer, num1: u64, num2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"This is divide function";

        get_result(account);
    }

    public entry fun power(account: &signer, num1: u64, num2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"This is power function";

        get_result(account);
    }

    public fun get_result(account: &signer): vector<u8> acquires Calculator {
        let calculator = borrow_global<Calculator>(signer::address_of(account));
        calculator.result
    }
}
