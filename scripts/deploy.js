const { ethers } = require("hardhat");

async function main() {
  const allowedContract = await ethers.getContractFactory("Unus");

  const deployedAllowedContract = await allowedContract.deploy(7);
  await deployedAllowedContract.deployed();

  console.log(`Deployed to ${deployedAllowedContract.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
