#[contract]
mod HiStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hi(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hi(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
