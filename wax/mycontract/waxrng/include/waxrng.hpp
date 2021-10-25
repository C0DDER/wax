#include <eosio/eosio.hpp>
using namespace eosio;

CONTRACT waxrng : public contract {
   public:
      using contract::contract;

      waxrng( name receiver, name code, datastream<const char*> ds )
      : contract(receiver, code, ds)
      , rngcustomers(receiver, receiver.value) {};

      ACTION hi( name nm );
      ACTION bye( name nm );
      ACTION getrandom( name nm, uint64_t customer_id, uint64_t siging_value );
      ACTION receiverand(uint64_t customer_id, const eosio::checksum256& random_value);
      ACTION createnft();

      TABLE rngcustomers_table {
         name nm;
         uint64_t customer_id;
         checksum256 random_value;
         uint64_t finalnumber;
         uint64_t primary_key() const { return customer_id; }
      };

      TABLE nft_table {
         name nm;
         uint64_t customer_id;
         checksum256 random_value;
         uint64_t finalnumber;
         uint64_t primary_key() const { return customer_id; }
      };

      typedef multi_index<name("rngcustomers"), rngcustomers_table> rngcustomers_index;
      typedef multi_index<name("nft"), nft_table> nft_index;

      using hi_action = action_wrapper<name("hi"), &waxrng::hi>;
      using bye_action = action_wrapper<name("bye"), &waxrng::bye>;
      using getrandom_action = action_wrapper<name("getrandom"), &waxrng::getrandom>;
      using receiverand_action = action_wrapper<name("receiverand"), &waxrng::receiverand>;
      using createnft_action = action_wrapper<name("createnft"), &waxrng::createnft>;

      rngcustomers_index rngcustomers;
};