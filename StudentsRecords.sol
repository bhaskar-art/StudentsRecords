// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {
    
    struct Student {
        string name;
        uint rollNumber;
    }

    mapping(uint => Student) private students;
    uint[] private rollNumbers;

    // Add a new student
    function addStudent(string memory _name, uint _rollNumber) public {
        require(students[_rollNumber].rollNumber == 0, "Student already exists");
        students[_rollNumber] = Student(_name, _rollNumber);
        rollNumbers.push(_rollNumber);
    }

    // Get student details by roll number
    function getStudent(uint _rollNumber) public view returns (string memory, uint) {
        Student memory s = students[_rollNumber];
        require(s.rollNumber != 0, "Student not found");
        return (s.name, s.rollNumber);
    }

    // Optional: Get all roll numbers (to know which students exist)
    function getAllRollNumbers() public view returns (uint[] memory) {
        return rollNumbers;
    }
}