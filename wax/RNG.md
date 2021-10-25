### Init project 
`eosio-init -project waxrng` 

### Create key

NOTE: wallet must be unlocked and opened

`cleos wallet create_key -n lehanextstep`

>warn  2021-10-24T11:44:38.257 keosd     wallet.cpp:219                save_wallet_file     ] saving wallet to file /root/eosio-wallet/./lehanextstep.wallet
Created new private key with a public key of: "EOS57P2MGe21q8ejoKD27JMFByjKERPvKZvRcnkmcpf2xxgn64oXn"

`cleos -u https://testnet.waxsweden.org system newaccount lehanextstep waxrngnext51 EOS57P2MGe21q8ejoKD27JMFByjKERPvKZvRcnkmcpf2xxgn64oXn --stake-net '0.50000000 WAX' --stake-cpu '5.00000000 WAX' --buy-ram-kbytes 32`

>executed transaction: be7088509d1c3dca778044bdf84f0f2b709f422d0d190c7666505a09d0399566  336 bytes  935 us
eosio <= eosio::newaccount            {"creator":"lehanextstep","name":"waxrngnext51","owner":{"threshold":1,"keys":[{"key":"EOS57P2MGe21q...
eosio <= eosio::buyrambytes           {"payer":"lehanextstep","receiver":"waxrngnext51","bytes":32768}
eosio <= eosio::delegatebw            {"from":"lehanextstep","receiver":"waxrngnext51","stake_net_quantity":"0.50000000 WAX","stake_cpu_qu...
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"12.51815721 WAX","memo":"buy ram"}
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.06290532 WAX","memo":"ram fee"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"12.51815721 WAX","memo":"buy ram"}
  eosio.ram <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ram","quantity":"12.51815721 WAX","memo":"buy ram"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.06290532 WAX","memo":"ram fee"}
eosio.ramfee <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.ramfee","quantity":"0.06290532 WAX","memo":"ram fee"}
eosio.token <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"5.50000000 WAX","memo":"stake bandwidth"}
lehanextstep <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"5.50000000 WAX","memo":"stake bandwidth"}
eosio.stake <= eosio.token::transfer        {"from":"lehanextstep","to":"eosio.stake","quantity":"5.50000000 WAX","memo":"stake bandwidth"}
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Set permission

`cleos -u https://testnet.waxsweden.org set account permission lehanextstep active --add-code`

### Get account 

`cleos -u https://testnet.waxsweden.org get account lehanextstep`

### Publish table to testnet;

`cleos -u https://testnet.waxsweden.org set contract waxrngnext51 $(pwd) waxrng.wasm waxrng.abi`

>Reading WASM from /wax/wax/mycontract/waxrng/build/waxrng/waxrng.wasm...
Publishing contract...
executed transaction: f3be058f6e4516b7f0d7fda25b50372298da165ba0d53ba9fba5162440ee7a5c  896 bytes  667 us
eosio <= eosio::setcode               {"account":"waxrngnext51","vmtype":0,"vmversion":0,"code":"0061736d0100000001370b60027f7f0060017e006...
eosio <= eosio::setabi                {"account":"waxrngnext51","abi":"0e656f73696f3a3a6162692f312e310003036279650001026e6d046e616d6502686...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

`cleos -u https://testnet.waxsweden.org get account waxrngnext51`

### Get table

`cleos -u https://testnet.waxsweden.org get table waxrngnext51 waxrngnext51 rngcustomers`

### Set contract 

`cleos wallet open -n lehanextstep`

`cleos wallet unlock -n lehanextstep --password PW5JgvJXHBeakS58e9Q6F6gEhDnan9X36fVRgUc3yLBYDvjZ3eFhL`

NOTE: maybe you need more ram

`cleos -u https://testnet.waxsweden.org system buyram lehanextstep lehanextstep --bytes 100000`

`cleos -u https://testnet.waxsweden.org set contract lehanextstep $(pwd) waxrng.abi waxrng.wasm`

>root@504072bd7715:/wax/wax/mycontract/waxrng/build/waxrng# cleos -u https://testnet.waxsweden.org set contract lehanextstep $(pwd) waxrng.wasm waxrng.abi
Reading WASM from /wax/wax/mycontract/waxrng/build/waxrng/waxrng.wasm...
Publishing contract...
executed transaction: 14befcac1f092a3004d3f1a493ec144bca9cba4584b1329731ca731bdfe1bd8d  4536 bytes  1029 us
eosio <= eosio::setcode               {"account":"lehanextstep","vmtype":0,"vmversion":0,"code":"0061736d01000000017c1560000060027f7f00600...
eosio <= eosio::setabi                {"account":"lehanextstep","abi":"0e656f73696f3a3a6162692f312e310005036279650001026e6d046e616d6509676...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Push action RNG

`cleos -u https://testnet.waxsweden.org push action lehanextstep getrandom '["customer1", 123, 15461253]' -p lehanextstep`

### Get table

`cleos -u https://testnet.waxsweden.org get table lehanextstep lehanextstep rngcustomers`


### Push action NFT

`cleos -u https://testnet.waxsweden.org push action lehanextstep createnft [] -p lehanextstep@active`

### Get NFT from table

`cleos -u https://testnet.waxsweden.org get table simpleassets lehanextstep sassets`
