pragma solidity >=0.4.22 <0.9.0;
// pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; // state variables are written to the block chain

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; // sort of like a dictionary from uint to Task

    constructor() public {
        createTask("learn solidity");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}

