### SSD Assignment-3-B
**1.)** 
**DIFFERENCES**
- **Input format -** A string of IDs is taken as input which if splitted to form a list, `delimiter=" "`
- Root to node path for each input ID is stored in a 2D list, `(line 24-36)`, Algo is same as earlier, only storage method is different.
- Loop invariant conditon is still same, but its implementation is in a different way due to different storage method. `(line 42-46)`
- Leader finding method is same, but this time it is applied on the 2D list instead of strings in ealier case `(line 46-54)`
- For finding common leader, I stored path to parent for both nodes in 2 strings.

**STILL SAME**
- Last common character in 2 string from `left` is the common leader
- **Assumption - Root is assumed to have no parent. So if any of the 2 inputs is root, then no solution is possible in that case.**

**2.)** 
**DIFFERENCES**
- **Command line input can be any of the following -**\
mm/dd/yyyy\
mm-dd-yyyy\
mm.dd.yyyy\
dd/mm/yyyy\
dd-mm-yyyy\
dd.mm.yyyy\
**If no command line input is given then following is the format of date - 10th Sep,2020  or  10th September,2020**
- Only `processDate()` method is updated. 
- Separate date processing methods are used as per the command line input

**STILL SAME**
- `daysbefore()` and `isLeap()`functions are unchanged.
- ANSWER = (1) + (2) + #Days in years between the years of 2 dates

**3.)** 
**DIFFERENCES**
- All files are stored as `.txt` files in a folder named `emp` in the same directory as the programs. **Folder name does not matter.**
- **There is only 1 folder in current directory which has all input files.**
- `output.txt` file will be created in the folder `emp`
- `os` and `glob` library is used to list of all input files from `emp` folder
- Information is stored in different manner, 1D and 2D lists are used this time for all kind of intermediate and final information needed to solve the problem
- `sys` library is used for command line arguments
- `isDateSame()` is updated to handle any number of data `(line 4-14)`
- `getName()` is new method used to get `name` of employee in the file `(line 72-75)`. **This part is missing the ASSG 3-A.**
- Input processing is changed `(line 82-104)`
- Algorithm to calculate common free slot `(line 124-150)` is updated to work on 1D and 2D lists

**STILL SAME**
- File is read in a string
- String is processed to extract date and busy time slots.
- Free time slots are calculated for each employee
- **ALL free time slots are converted to minutes and then algorithm is performed.**
- `inMin()` and `process()` functions are unchanged `(line 26-70)`
- Algorithm is a modification of merge algorithm of merge sort.
- **If dates are not same in 2 files, then "NO FREE SLOT IS AVAILABLE"**
- **In output, slot duration is displayed as floating number, like 0.5 instead of 1/2**
- **Same alogorithm is applied this time as well. Only difference is of using different data structures in it.**

 **Github link -** https://github.com/rishabh26malik/SSD-ASSG-3