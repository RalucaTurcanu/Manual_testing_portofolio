# Manual_testing_portofolio
&nbsp;
## Introduction

The purpose for this Portofolio is to summerise the acquired information from the Manual Testing course and how I applied them in practice, using different methods and applications.

The main testing activity was done on the [OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login) application, for the Admin modul. The requirements of the Admin modul can be found [here](https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf.), from which I chose the "User Management" and "Job" sub-menus.
For bug tracking and project managing I have used Jira Software with the Zephyr Squad tool.

For REST API testing of [Simple Book](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md) I have used Postman tool.

For creating, designing and building databases I have used MySQL Workbench tool.

Next, I will detail the process and results of the testing technics applied in 3 sections: [Testing Section](#1-testing-section), [SQL Section](#sql-section) and [API Section](#api-section). 

## 1 Testing Section
### 1.1 Test Planning 
The Test Plan is designed to describe all details of testing for the Admin Modul of the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated
- Project manager - Maria Marga
- Product owner - Gica Hagi
- Software developer - Sorina Ionita
- QA Engineer - Raluca Turcanu

#### 1.1.2 Entry criteria defined:
- testing environment established
- functional specifications are defined
- roles needed for the project are allocated
- test plans are completed

#### 1.1.3 Exit criteria defined:
- all items in scope were tested
- all test cases are executed
- all resolved bugs have been re-tested and approved by the QA team
- defects wew documented and reported
- deadline was reached
- no detected major risk remained un-mitigated
- exploratory regression testing must be performed on the Admin module, which includes the "User Managemnt" and "Job" sections

#### 1.1.4 Test scope
Tests in scope: All the feature of Admin module which were defined in software requirement specs need to be tested: functional testing, GUI testing, integrations of the Admin module with other modules
Tests not in scope: performance testing, compatibility testing with multiple browsers

#### 1.1.5 Risks detected
Project risks: 
- lack of experience of the QA team, 
- short deadline of Zephyr Squad trial, 
- unavailability of test environment
Product risks: 
- validation constraints on the fields might be too restrictive to the end-user

#### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

### 1.2 Test Monitoring and Control
Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following status report was generated after 23% of the test cases were executed, on 29 of March 2023:
<img src="Proiect Final/Images/Monitorin_and_control.PNG" width="700" height="400">

### 1.3 Test Analysis
The testing process will be executed based on the above requirements for the Admin module. The following test conditions were found:

Enter data only for mandatory fields and check that the dependant is created/updated
Enter data for all available fields and check that the dependant is created/updated
Leave mandatory fields empty and check that the dependant cannot be created/updated
View dependant details and check they are correct
View all dependants in a list
Check all validation constraints for the fields

### 1.4 Test Design
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing.
<img src="Proiect Final/Images/Test_cases.PNG" width="700" height="400">



## SQL Section


## API Section





Playground is a suite of Selenium and RoboBrowser automated tests for [OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login).
1. jgjgj
2. fhff
3. gjgjg
> Dorothy followed her through many of the beautiful rooms in her castle.
>
>> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
>>> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
> #### The quarterly results look great!
>
> - Revenue was off the chart.
> - Profits were higher than ever.
>
>  *Everything* is going according to **plan**.
- Second item
- Third item
    - Indented item
    - Indented item
- Fourth item
```
 <html>
   <head>
     <title>Test</title>
   </head>
   ```
1. Open the file containing the Linux mascot.
2. Marvel at its beauty.

    ![API](/Tema10.PNG)

3. Close the file.


<img src="/Tema10.PNG" width="500" height="300">

As vrea sa ==marchez== acest cuvant

