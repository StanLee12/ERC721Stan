const GameItem = artifacts.require('GameItem')

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(GameItem)
}
