# Proof of existence implementation in Solidity for Ethereum

This is an updated version of the code found in this great tutorial

[The Hitchhiker’s Guide to Smart Contracts in Ethereum - OpenZeppelin Blog](https://blog.openzeppelin.com/the-hitchhikers-guide-to-smart-contracts-in-ethereum-848f08001f05/)

You may play with it using:

    $ truffle develop

    truffle(develop)> migrate --reset

    truffle(develop)> const poe = await ProofOfExistence.deployed()

    truffle(develop)> poe.address

    truffle(develop)> poe.checkDocument("Hello! This is an important document!")

    truffle(develop)> poe.notarize("Hello! This is an important document!")

    truffle(develop)> poe.checkDocument("Hello! This is an important document!")
