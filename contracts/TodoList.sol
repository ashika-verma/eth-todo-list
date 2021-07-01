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

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    constructor() public {
        createTask("learn solidity");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}

