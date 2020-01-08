#! /bin/bash

if [[ "$1" == "sentiment" ]]; then
    contract=sentiment
else
    echo "need contract"
    exit 0
fi

# -contract=<string>       - Contract name
# -o=<string>              - Write output to <file>
# -abigen                  - Generate ABI
# -I=<string>              - Add directory to include search path
# -L=<string>              - Add directory to library search path
# -R=<string>              - Add a resource path for inclusion

mkdir -p build/$contract

#eosio.cdt v1.6.3
# echo eosio-cpp -I="./$contract/include/" -R="./$contract/resources" -o="./build/$contract/$contract.wasm" -contract="$contract" -abigen ./$contract/src/$contract.cpp
eosio-cpp -I="./$contract/include/" -R="./$contract/resources" -o="./build/$contract/$contract.wasm" -contract="$contract" -abigen ./$contract/src/$contract.cpp
