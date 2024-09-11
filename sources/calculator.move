module metaschool::calculator {

    struct Topping has store {
        want: bool,
    }

    struct Pizza has key {
        price: u64,
        toppings: Topping,
    }

    fun create_prizza(account: &signer) {
        let topping = Topping { want: true };
        let pizza = Pizza { price: 50, toppings: topping };

        let byte_string: vector<u8> = b"Hello World"; 

        move_to(account, pizza);
    }
}