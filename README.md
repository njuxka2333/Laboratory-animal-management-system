# Laboratory animal management system
## 1．An overview of the background of the project
  Laboratory animals refer to animals that have been artificially cultivated, have a clear genetic background or clear source, and control the microorganisms and parasites they carry, and are used for scientific research, teaching, production, inspection, verification and other scientific experiments.
Considering that the management of laboratory animals is redundant and trivial, requires a lot of manpower and material resources, and has a high error rate, we develop a laboratory animal management system based on database technology, so that the whole process of laboratory animal purchase, warehousing, distribution and other scenarios can be digitized, monitored and tracked.
## 2．systems analysis
### 2.1 Demand analysis
  This system is mainly used for the needs of laboratory animal management, breeding personnel and scientific researchers (faculty and students engaged in scientific research) and laboratory animal suppliers
Teachers and students can lend experimental animals from the animal room, and the management personnel need to check the credit score to determine whether there is any lending authority, and register the student's student number, name, student category (undergraduate, graduate, doctoral student), research group, and register the teacher's faculty number and name
Managers need to know the number of rats in each cage, their status (sex, number of days of birth, coat color, other states of the animals), and determine the location of each cage (room, shelf, row, column) and parameters (material, litter, feed, whether there is water)
  The management personnel need to record the loan time of the experimental animal, the cage number of the loaned animal and the lender, and record and punish the lender's breach of contract
Mouse breeders need to clarify the feeding requirements of each cage, including the type and quantity of feed and feeding time, and need to record the name, time, cage number and number of feed types after feeding, to facilitate subsequent review and inspection
  If mice in a certain type of cage are not fed as required, record the name and date of the day of the offending keeper for management to see
The management personnel shall keep a record of the procurement matters of the zoo, including the purchase number, the time of the purchase, the type and quantity of the purchased items, the name of the supplier, and the name of the manager responsible for the procurement, of which the supplier shall be in the list of suppliers who have reached cooperation with the agency within the date of procurement
### 2.2 Functional structure
<img width="415" alt="image" src="https://github.com/user-attachments/assets/6a3d8f24-5327-4dc2-b117-96001d1e2d7c">

### 2.3 Data flow diagram
##### 2.3.1 Top-level data flow diagram
<img width="416" alt="image" src="https://github.com/user-attachments/assets/0e8a43c6-984a-48c2-96c6-b6bf9ff97c89">

#### 2.3.2 Layer 0 data flow diagram
 <img width="416" alt="image" src="https://github.com/user-attachments/assets/ee135485-23a3-4ba7-a0a6-a6b0229b977b">

#### 2.3.3 Layer 1 data flow diagram
 <img width="416" alt="image" src="https://github.com/user-attachments/assets/dc6dc77e-09d5-426a-b230-fb7c576732b3">

2.4 Data Dictionary (Partial).
Data item: student ID
What it means: Uniquely identifies the student
Alias: Number
Type: Character
Length: 18
Value range: 000000000000000001~999999999999999999

Data item: The student's name
Explanation of meaning: Student's name
Alias: Name
Type: Character
Length: 12

Data item: Gender 
Meaning: Student's gender
 alias: Gender 
type: Character
 type: 2Value 
range: male or female

Data item: research group 
Meaning description: Student's ID number
 alias: Research group
 type: Character
 length: 18

Data item: Reputation score
What it means: The student's phone number
Alias: Reputation Score
Type: Character
Length: 11

Data Item: Date
Meaning note: Check-in date of mouse loan
Alias: Date of loan
Type: Date
##### 2.5 Restrictions
2.5.1 Each student can only have one account, and the number of animals that a student can borrow in a day cannot exceed 50, and the excess must be approved by the administrator.
2.5.2 An experimental animal can only be lent by one student or teacher, and cannot be returned to the animal room after being loaned.
2.5.3 A teacher can have many students, and a student can only have one teacher's research group.
2.5.4 Multiple animals can be placed in one cage, and one animal can only be in one cage.
2.5.5 One breeder can raise multiple animals, and one animal can be raised by multiple breeders, but it cannot be re-raised.
2.5.6 One administrator can purchase multiple animals, and one animal can only be purchased by one administrator.
2.5.7 When a student violates certain regulations, the administrator can deduct the credit points, and when the credit points are deducted, they cannot enter the animal room to lend animals.
### 3．	E-R model
#### 3.1 Total E-R diagram (attribute omitted)
 <img width="416" alt="image" src="https://github.com/user-attachments/assets/cfb24171-380e-4629-b2ad-359a2ec2bc92">

#### 3.2 Local E-R diagram
<img width="416" alt="image" src="https://github.com/user-attachments/assets/7f7bdb02-b94c-48aa-b4c0-c688444cfd1d">

<img width="415" alt="image" src="https://github.com/user-attachments/assets/3ded5a3c-ff2a-482b-806d-c778f03d81e9">

<img width="415" alt="image" src="https://github.com/user-attachments/assets/1f4a9b69-c737-4623-afbd-e94bae6e4e1c">

<img width="415" alt="image" src="https://github.com/user-attachments/assets/858a16ea-98ef-47ad-83cb-2468510239d6">

<img width="415" alt="image" src="https://github.com/user-attachments/assets/0a579754-3f94-43ef-a6f5-d177d64a77f2">

<img width="416" alt="image" src="https://github.com/user-attachments/assets/3d5b2f09-f6bd-40ee-b4ea-34ed992009e3">

<img width="415" alt="image" src="https://github.com/user-attachments/assets/87f5a4cd-85ff-4701-a1ac-29cf138f7853"> 
### 4. Design logic and related constraints
#### 4.1 Logical structure (table structure)
4.1.1	Student (student number, name, student category, research group, credit score).
Dependencies {Student ID-> NameStudent CategoryResearch Group Credit Score}
Meet the BC paradigm
4.1.2	Animals (cage number, species, gender, number of days of birth, coat color, body temperature, status, student number, date, time, default type, deduction points, status) where the student number is the outer code
  Dependency {cage number-> type, gender, date of birth, hair color, body temperature, status, student number, date and time, default type, demerit points}
Meet the BC paradigm
4.1.3.	Animal number (number, cage number, feeding status).
 	Dependencies {number->cage number}
  Meet the BC paradigm
4.1.4	Teacher (job number, name, research group).
  Dependencies on {job number-> name, research group}
  Meet the BC paradigm
4.1.5	Cage (cage number, room, shelf, row, column, litter, water, feed, whether to feed today).
  Depends on {cage number - > room shelves arrange litter water feed today whether to feed}
  Meet the BC paradigm
4.1.6	Breeder (job number, name, age, gender).
 	dependency {Job number->Name, Age, Gender}
  Meet the BC paradigm
4.1.7	Purchase (number, job number, date, purchase item, purchase quantity, supplier).
  Dependencies on {No. - > Job Number Date Purchase Quantity Supplier}
  Meet the BC paradigm
4.1.8 Administrator (employee number, name, age, gender).
  Dependencies {Job ID-> Name, Age, Gender}
  Meet the BC paradigm
4.1.9 Credit management (student number, date, default type, point deduction).
 	Dependency {Student Number Date - > Default Type Deduction Points}
4.1.10 Loan records (cage number, student number, date, default type).
  Dependencies {cage number -> student number date default type}
#### 4.2 Constraint Establishment
  For details about how to create the primary code and external code, see SQL language operation process
### 5．	Security of the database
#### 5.1 Four types of permission levels are set to correspond to different user identities.
<img width="201" alt="image" src="https://github.com/user-attachments/assets/2e9314b3-f57a-4da4-8394-1ffac5ad4c85">
<img width="147" alt="image" src="https://github.com/user-attachments/assets/3b3d6903-7991-4a05-b138-d578f3d82904">
  According to different identities: student/teacher (both roles have the same permissions), breeder, administrator, senior manager. Grant permissions.
  First, create a character teacher/student, breeder, and assign the role to the corresponding user. Students/teachers are given permission to check the animal and their own reputation.
 <img width="273" alt="image" src="https://github.com/user-attachments/assets/3c0af3f5-8a20-4271-aee8-67b381d469e4">
  Administrators, senior administrators are directly granted superuser permissions when they are created
 <img width="415" alt="image" src="https://github.com/user-attachments/assets/91373081-d4a0-46d9-b421-c559d81c7657">

#### 5.2. Exterior pattern design
5.2.1 Query and manage available animals: create a table of experimental animals, teachers/students can query, and breeders can modify records.
5.2.2 Loan Animals: Delete the records from the experimental animal and cage number lists and add records to the loan record table.
5.2.3 Breeder daily feeding: create a view of the animal cage, from the cage number, room number, shelf number, row, column of the cage number table, whether to feed today, after feeding to change whether to feed today's attribute status. Set the trigger to change all feedings to no when the system time is 00:00.
5.2.4 Common user reputation record: Use the senior administrator account to access the database, read the loan record table by an external script, calculate the user's current reputation score according to the default record and date, and update the user table.
5.2.5 Breeder credit record: set the trigger, when the system time is 23:30, if the feeding status is no, the breeder forgets to add one to the feeding number in the table.
5.2.6 Administrator management user: create a view of user - reputation, the administrator can view the user's reputation, if the number of violations is too much, the administrator can carry out relevant processing.
5.2.7 Administrator purchases experimental animals: inserts new records into the experimental animals and cage number lists.

### 6．Physical design description
#### 6.1 Storage structure (tables, fields)
  Determining the physical structure of a database mainly refers to determining the storage location and storage structure of data, including: 
  Determine the storage arrangement and structure of relationships, indexes, clusters, logs, backups, etc., determine the system configuration, etc. To determine the storage location and storage structure of data, three factors should be considered: access time, storage space utilization, and maintenance cost. 
  In order to improve system performance, the volatile parts of the data should be stored separately from the stable, frequently accessed, and less frequently accessed parts of the data, depending on the application. The volatile and frequently accessed parts of the system include: cages, purchases, reputation management, and loan records, which are stored separately. Place log files and database objects on different disks to improve the performance of your system
#### 6.2 Data Inventory Accession Method
  The database system is a multi-user sharing system, and multiple access paths must be established for the same relationship to meet the needs of multiple users. One of the tasks of physical design is to determine which access methods to choose, i.e. which access paths to establish. Access methods are techniques for fast access to data in a database. The database management system provides a variety of access methods. There are three types of access methods commonly used. The first type is the indexing method, which is currently mainly the B+ tree indexing method; The second type is the clustering method; The third category is the HASH method.
  For frequently accessed table cage numbers and lending records, establish a B+ tree index.
  For student topics and project group tables that often need to be linked, cluster indexes can be established.
### 7. Implementation and presentation of results
  Use the Python flask framework to build the backend, and html+css+Javascript to build the frontend. Use pymssql to link the sqlserver database.
  Login screen:
<img width="483" alt="image" src="https://github.com/user-attachments/assets/0af159b9-0852-4034-a5ee-3b35a0cf0877">

  Login (using the breeder account as an example):
<img width="482" alt="image" src="https://github.com/user-attachments/assets/60210c11-7d4b-4cc5-92f1-1097f1ffa923">

  After logging in, you will be automatically redirected to the corresponding page and the relevant information will be displayed
<img width="481" alt="image" src="https://github.com/user-attachments/assets/6101522c-6f50-498f-a8cd-7c9458d58d50">

  Personal information display floating sidebar
<img width="483" alt="image" src="https://github.com/user-attachments/assets/a1bb3191-591f-4e4d-bd17-452b46253f4e">

  Query function
<img width="480" alt="image" src="https://github.com/user-attachments/assets/6ae6b59d-b8b3-496b-b73f-1ed17a0fe1ee">
 
 Page change on the sidebar:
<img width="415" alt="image" src="https://github.com/user-attachments/assets/4e267ca5-f5a0-437c-89f6-4f88a6057ba6">

Modify and insert a common floater:
<img width="415" alt="image" src="https://github.com/user-attachments/assets/acfb65b1-6b20-4cdc-92b1-765a83952728">
<img width="415" alt="image" src="https://github.com/user-attachments/assets/7333c3d2-c7b1-40e6-ad50-03548e8079a4">

 
