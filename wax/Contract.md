# Init Eos project
`eosio-init -project proxime`

# Upload smart contract to local blockchain

### Set contract

 Navigate to the folder with .wasm file
`/wax/wax/mycontract/proxime/build/proxime`

`cleos set contract waxsc1 . -p waxsc1@active`

>Reading WASM from /wax/wax/mycontract/proxime/build/proxime/proxime.wasm...
Publishing contract...
executed transaction: 8b5e8fc3f093f418d00f4d3c4c0481be800c8a81ac49bd8f355f38078ad0a1ee  760 bytes  19867 us
eosio <= eosio::setcode               {"account":"waxsc1","vmtype":0,"vmversion":0,"code":"0061736d0100000001370b60027f7f0060017e0060017f0...
eosio <= eosio::setabi                {"account":"waxsc1","abi":"0e656f73696f3a3a6162692f312e3100010268690001026e6d046e616d650100000000000...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Add action to smart contract

NOTE: argument should be 13 characters max and lower case

`cleos push action waxsc1 hi ["leha"] -p waxsc1@active`
>executed transaction: b580278dc4135331f453a8af89a9e15cd605f735a1cf5b1603961776167bd895  104 bytes  2320 us
waxsc1 <= waxsc1::hi                   {"nm":"leha"}
Name : leha
warning: transaction executed locally, but may not be confirmed by the network yet         ]