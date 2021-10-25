### Create test account 

navigate to https://waxsweden.org/create-testnet-account/

NOTE: you can create only 1 account in 24 hours

to create an account you can make a GET request to https://faucet.waxsweden.org/create_account?lehanextstep

>{
    "msg": "succeeded",
    "keys": {
        "active_key": {
            "public": "EOS7U79HsfbKQaS6oNutaMdbL4fS3fNmyPHjKDt8MWUtdLFoELrCa",
            "private": "5KVJ4ZV1qz98rU3F642TXovAgjC8wUF2iccXrrWRxWNgtTc57gS"
        },
        "owner_key": {
            "public": "EOS6RicNRD6dqfK575gFSwepyasK3jgPbXsRai69XsfTEYtZSPFxo",
            "private": "5Hz2EVUZLLczKtuEdic3n9KuhRquSC2FZU6wQhQWyH1wG5Uc7Ud"
        }
    },
    "account": "lehanextstep"
}

### Create token

make a GET request https://faucet.waxsweden.org/get_token?lehanextstep

### Create Testnet wallet

`cleos wallet create -n lehanextstep --to-console && cleos wallet import -n lehanextstep --private-key 5KVJ4ZV1qz98rU3F642TXovAgjC8wUF2iccXrrWRxWNgtTc57gS &&  cleos wallet import -n lehanextstep --private-key 5Hz2EVUZLLczKtuEdic3n9KuhRquSC2FZU6wQhQWyH1wG5Uc7Ud`

>PW5JgvJXHBeakS58e9Q6F6gEhDnan9X36fVRgUc3yLBYDvjZ3eFhL

>warn  2021-10-23T18:54:14.420 keosd     wallet.cpp:219                save_wallet_file     ] saving wallet to file /root/eosio-wallet/./lehanextstep.wallet
Creating wallet: lehanextstep
Save password to use in the future to unlock this wallet.
Without password imported keys will not be retrievable.
"PW5JgvJXHBeakS58e9Q6F6gEhDnan9X36fVRgUc3yLBYDvjZ3eFhL"
warn  2021-10-23T18:54:14.468 keosd     wallet.cpp:219                save_wallet_file     ] saving wallet to file /root/eosio-wallet/./lehanextstep.wallet
imported private key for: EOS7U79HsfbKQaS6oNutaMdbL4fS3fNmyPHjKDt8MWUtdLFoELrCa
warn  2021-10-23T18:54:14.510 keosd     wallet.cpp:219                save_wallet_file     ] saving wallet to file /root/eosio-wallet/./lehanextstep.wallet
imported private key for: EOS6RicNRD6dqfK575gFSwepyasK3jgPbXsRai69XsfTEYtZSPFxo

### Buy ram

`cleos -u https://testnet.waxsweden.org system buyram lehanextstep lehanextstep "3.00000000 WAX"`

>executed transaction: b5e67c7d83e4fd276fc0947f9176c6b6459a5cf36ae36d5ddcb500fbc12f843e  128 bytes  573 us
eosio <= eosio::buyram                {"payer":"lehanextstep","receiver":"lehanextstep","quant":"3.00000000 WAX"}
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"2.98500000 WAX","memo":"buy ram"}
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.01500000 WAX","memo":"ram fee"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"2.98500000 WAX","memo":"buy ram"}
  eosio.ram <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"2.98500000 WAX","memo":"buy ram"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.01500000 WAX","memo":"ram fee"}
eosio.ramfee <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.01500000 WAX","memo":"ram fee"}
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Buy net and cpu

`cleos -u https://testnet.waxsweden.org system delegatebw lehanextstep lehanextstep "4.00000000 WAX" "5.00000000 WAX"`

>executed transaction: 2ffc4cdad81db8068c9f176c8d7ee71f4bc32b6eabb0fe2453a3e5799ca9e20e  144 bytes  504 us
eosio <= eosio::delegatebw            {"from":"lehanextstep","receiver":"lehanextstep","stake_net_quantity":"4.00000000 WAX","stake_cpu_qu...
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"9.00000000 WAX","memo":"stake bandwidth"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"9.00000000 WAX","memo":"stake bandwidth"}
eosio.stake <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"9.00000000 WAX","memo":"stake bandwidth"}
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Deploy smart contract to wax testnet

NOTE: wallet should be opened and unlocked

`cleos -u https://testnet.waxsweden.org set account permission lehanextstep active --add-code`

>executed transaction: 3d4e7577efda1756009cf844004508dbcb2ac82c422c04d92fd9d088e019e5cf  184 bytes  350 us
eosio <= eosio::updateauth            {"account":"lehanextstep","permission":"active","parent":"owner","auth":{"threshold":1,"keys":[{"key...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

`cleos -u https://testnet.waxsweden.org set contract lehanextstep $(pwd) proxime.wasm proxime.abi`

>Reading WASM from /wax/wax/mycontract/proxime/build/proxime/proxime.wasm...
Publishing contract...
executed transaction: e225f107206bf7a2d7400f95bfb53c25e8cbf08c93628810c034db3a5b9133f0  760 bytes  648 us
eosio <= eosio::setcode               {"account":" ","vmtype":0,"vmversion":0,"code":"0061736d0100000001370b60027f7f0060017e006...
eosio <= eosio::setabi                {"account":"lehanextstep","abi":"0e656f73696f3a3a6162692f312e3100010268690001026e6d046e616d650100000...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Push action to wax testnet

`cleos -u https://testnet.waxsweden.org push action lehanextstep hi '["leha"]' -p lehanextstep@active`

>executed transaction: 31cca590a8a8cbf5f9421482af288b19274d5930cc6805bbf50d5f5a50fc0b90  104 bytes  178 us
lehanextstep <= lehanextstep::hi             {"nm":"leha"}
warning: transaction executed locally, but may not be confirmed by the network yet         ]