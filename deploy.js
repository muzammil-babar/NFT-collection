// ethers.js comes built in with hardhat

// ethers.js is a nice library to work with ethereum

//import ethers
const { ethers } = require("hardhat");


async function main(){
    // 1. Somehow tell the script that we want to deploy the "NFTee.sol" contract
    const contract = await ethers.getContractFactory("NFTee");

    // 2. deploy it
    const deployedContract = await contract.deploy();
    // 2.1. wait for deployment to finish
    await deployedContract.deployed();

    // 3 Print the address of the deployed contract
    console.log("NFT contract deployed to: ", deployedContract.address);
}
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    })