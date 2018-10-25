// Use the TestkeyWord contract Guide:
// 1.deploy the "TestKeyWord" contract use helen.
// 2.First, you should send "invoke" function.
// 3.Call the other function.

pragma solidity ^0.4.22;

contract TestKeyWord {
    address public coinbase;
    uint public difficulty;
    uint public gaslimit;
    uint public blockNumber;
    bytes32 public blockHash;
    uint public blockTimestamp;
    bytes public msgData;
    uint public msgGas;
    
    address public msgSender;
    uint public msgValue;
    uint public nowValue;
    uint public gasPrice;
    address public origin;
    
    function  invoke() public{
        coinbase = block.coinbase;
        difficulty = block.difficulty;
        gaslimit = block.gaslimit;
        blockNumber = block.number;
        blockHash = block.blockhash(blockNumber-1);
        blockTimestamp = block.timestamp;
        
        msgData = msg.data;
        msgGas = msg.gas;
        msgValue = msg.value;
        nowValue = now;
        gasPrice = tx.gasprice;
        origin = tx.origin;
    }
    
}