---

## StudentRecords

A smart contract to manage student records with name and roll number.

### Features:
- Add new student records
- Retrieve student details by roll number
- View all added roll numbers

### How to Use:

1. Deploy the contract in [Remix Ethereum IDE](https://remix.ethereum.org/)
2. Call `addStudent("Alice", 1)` to add a student
3. Call `getStudent(1)` to view student data
4. Call `getAllRollNumbers()` to view all students

### Sample Code:

```solidity
function addStudent(string memory _name, uint _rollNumber) public {
    require(students[_rollNumber].rollNumber == 0, "Student already exists");
    students[_rollNumber] = Student(_name, _rollNumber);
    rollNumbers.push(_rollNumber);
}
---

### **3. Commit the Changes**

After pasting the new code:
- Click the **pencil icon** on GitHub to edit the file
- After pasting, scroll down, write a **commit message** like:  
  `"Added StudentRecords smart contract"`
- Click **Commit changes**

---

If you want, I can:
- Check your GitHub repo once you’ve added the file
- Help you write code for your **next assignment question**  
Just say the word!
