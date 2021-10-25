project(proxime)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( proxime proxime proxime.cpp )
target_include_directories( proxime PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( proxime ${CMAKE_SOURCE_DIR}/../ricardian )