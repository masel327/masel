#[contract]
mod HeiStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hei(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hei(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
