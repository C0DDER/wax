### Create a wallet
`cleos wallet create --to-console`
>PW5K6JBNvsZBdWqfRVrLMbKG54s6M6jx5R48QKaxzfsXVWBEGEVNu

### Create named wallet 
#### 12 char max
`cleos wallet create --name leha --to-console`
>PW5KeQujw5Vb7MYFrEwKzGoP4Th9916hKWAU8YnndXV6MiYCiuRrT

### Open wallet
`cleos wallet unlock --password PW5K6JBNvsZBdWqfRVrLMbKG54s6M6jx5R48QKaxzfsXVWBEGEVNu`

### Open named wallet
`cleos wallet unlock --name leha --password PW5KeQujw5Vb7MYFrEwKzGoP4Th9916hKWAU8YnndXV6MiYCiuRrT`

### Close wallet 
`cleos wallet lock`

### Show all wallets
`cleos wallet list`

### Import private key (USE THIS KEY ONLY FOR DEVELOPMENT!!!)
`cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3`

### Create key
`cleos wallet create_key`
>EOS8mPpNA54bpCGXRaKZ6c2irJxV9iM9N67bWAk5cyjH272DLSDDD

### Create account 

`cleos create account eosio waxsc1 EOS8mPpNA54bpCGXRaKZ6c2irJxV9iM9N67bWAk5cyjH272DLSDDD`
>executed transaction: 491d72fe32d6b374d4f6fca80eef3ac6be3e37a1cdafeaa9a4947f523cde9b1c  200 bytes  1147 us
eosio <= eosio::newaccount            {"creator":"eosio","name":"waxsc1","owner":{"threshold":1,"keys":[{"key":"EOS8mPpNA54bpCGXRaKZ6c2irJ...
warning: transaction executed locally, but may not be confirmed by the network yet         ]

### Get account
`cleos get account waxsc1`