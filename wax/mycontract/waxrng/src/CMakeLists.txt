project(waxrng)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( waxrng waxrng waxrng.cpp )
target_include_directories( waxrng PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( waxrng ${CMAKE_SOURCE_DIR}/../ricardian )