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
- defects were documented and reported
- deadline was reached
- no detected major risk remained un-mitigated
- exploratory regression testing must be performed on the Admin module, which includes the "User Managemnt" and "Job" sections

#### 1.1.4 Test scope
Tests in scope: All the feature of Admin module which were defined in software requirement specs need to be tested: functional testing, GUI testing, integrations of the Admin module with other modules
Tests not in scope: performance testing, compatibility testing with multiple browsers

#### 1.1.5 Risks detected
Project risks: 
- lack of experience of the QA team, 
- short deadline of Zephyr Squad trial 
- unavailability of test environment
- Unclear application specifications

Product risks: 
- validation constraints on the fields might be too restrictive to the end-user
- The risk that the application will not function as required
- The risk that the application will not be functional
- The risk of an undetected bug causing data loss

#### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

### 1.2 Test Monitoring and Control
Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following status report was generated after 23% of the test cases were executed, on 29 of March 2023:
<img src="Proiect Final/Images/Monitorin_and_control.PNG" width="700" height="400">

### 1.3 Test Analysis
The testing process will be executed based on the above requirements for the Admin module. 
The following test conditions were found for the User Management sub-menu:
- Enter data only for mandatory fields and check that the User is added/updated
- Leave mandatory fields empty and check that the User cannot be added/updated
- Enter data for all available fields and check if you can search an User
- Check if you can delete one or more Users
- View all Users in a list
- Check all validation constraints for the fields

The following test conditions were found for the Job ( Job Titles, Pay grades, Employment Status, Job Categories,Work Shifts) sub-menu:
- Enter data only for mandatory fields and check that the Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts is added/updated
- Leave mandatory fields empty and check that the Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts cannot be added/updated
- Check if you can delete one or more Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts
- View all Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts in a list
- Check all validation constraints for the fields

### 1.4 Test Design
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing.
<img src="Proiect Final/Images/Test_cases.PNG" width="700" height="400">

 All the test cases exported from Jira can be found [here](https://github.com/RalucaTurcanu/Manual_testing_portofolio/blob/c9221403502a38a0b117d3c61dc72c1ef421344a/Proiect%20Final/Jira%20reports/Jira_ZFJ-_Test%20Cases.xlsx). Keep in mind that at the moment of the export, the project was not finished.

### 1.6 Test Execution
Test cases are executed on the created test Cycle summary
Bugs have been created based on the failed tests. The complete bug reports can be found here: [Dependents_created_bugs.pdf](https://github.com/RalucaTurcanu/Manual_testing_portofolio/blob/2508801f3049bc218c7102bc13b8bee419ecf100/Proiect%20Final/Jira%20reports/Jira_bugs.pdf).

Full regression testing is needed after the bugs are fixed.

### 1.7 Test Completion
- The Exit criteria were met and satisfied as mentioned in the Test planning section
- The traceability matrix was generated and can be found here: [Traceability_matrix.csv](https://github.com/RalucaTurcanu/Manual_testing_portofolio/blob/74b48b9215f3d18889bafe571f6ff6dc93b34878/Proiect%20Final/Jira%20reports/Jira_Traceability_Matrix.xlsx)
- Test execution chart was generated, the final report shows that a number of 9 tests have failed
- A number of 47 test cases were planned for execution and all of them were executed
- A total of 9 bugs were found



## SQL Section
I have created a new database for OrangheHRM application, where I have created 2 tables on which I have performed different queries. The database can be found [here](https://github.com/RalucaTurcanu/Manual_testing_portofolio/blob/00852aa7485f764b2d55e33e87362ae63dcdbda2/Proiect%20Final/MySQL_OrangeHRM_database.sql).

## API Section
<img src="Proiect Final/Images/API_Testing.PNG" width="800" height="500">


API tests are executed on Postman. The collection used can be found here: [Simple books](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md).
and the [JSON file](https://github.com/RalucaTurcanu/Manual_testing_portofolio/blob/aae41838a8703e67c6a91511935c17be693b8c0c/Proiect%20Final/Simple%20_Book_postman_collection.json) with the collection of requests created for Simple Books.








