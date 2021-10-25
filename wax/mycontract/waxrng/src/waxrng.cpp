#include <waxrng.hpp>
ACTION waxrng::hi( name nm ) {
   print_f("Name : %\n",nm);
}

ACTION waxrng::bye( name nm ) {
   print_f("Bye : %\n",nm);
}

ACTION waxrng::getrandom( name nm, uint64_t customer_id, uint64_t signing_value ) {
   auto itrCustomer = rngcustomers.find(customer_id);
    //if not, insert a new record
    if (itrCustomer == rngcustomers.end()) {
        rngcustomers.emplace(_self, [&](auto& rec) {
            rec.customer_id = customer_id;
            rec.nm = nm;
        });
    }
    
    //call orng.wax
    action(
      { get_self(), "active"_n },
      "orng.wax"_n,
      "requestrand"_n,
      std::tuple{ customer_id, signing_value, get_self() }).send();
}

ACTION waxrng::receiverand(uint64_t customer_id, const checksum256& random_value) {
   uint64_t max_value = 100;
   auto byte_array = random_value.extract_as_byte_array();

   uint64_t random_int = 0;
   for (int i = 0; i < 8; i++) {
      random_int <<= 8;
      random_int |= (uint64_t)byte_array[i];
   }

   uint64_t num1 = random_int % max_value;

    //find the customer record by customer_id
   auto itrCustomer = rngcustomers.find(customer_id);
    //make sure the record exists
   check(itrCustomer != rngcustomers.end(), "customer table not set");
    //update the random numbers by customer_id
   rngcustomers.modify(itrCustomer, _self, [&](auto& rec) {
      rec.random_value = random_value;
      rec.finalnumber = num1;
   });
}

ACTION waxrng::createnft() {
   name author = get_self();
   name category = name("baseball");
   name owner = name("lehanextstep");

   // immutable data
   std::string idata = R"json({"name": "ball"})json";
   
   std::string mdata = R"json({"owner_id": 123, "img": "https://images.unsplash.com/photo-1571104243924-eae5f22308b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"})json";

   bool requireClaim = false;

   action(
      { author, name("active") },
      name("simpleassets"),
      name("create"),
      std::tuple(author, category, owner, idata, mdata, requireClaim)
   ).send();
}