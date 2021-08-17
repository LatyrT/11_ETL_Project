# **Employee Database: A Mystery in Two Parts**

In this assignment, the objective is to:
* Step 1: build a pgAdmin database and create SQL queries,
* Step 2: use Python/Pandas to connect to the created database and retrieve data.

<p align="center">
  <img src="business_people.jpg">
</p>  

## **1. Authors**

This project was created and authored by:
* **Latyr Thiao**


## **2. Requirements / Specifications**

The [business & technical requirements](000-Instructions) that must be met by the solution.

## **3. Prerequisites**

The mandatory steps to be taken to make the code work smoothly.

### **3.1 License & Key**

The following key will be required:
* pgAdmin4 credentials, example: Connection = psycopg2.connect("dbname=YourDatabase port=YourPort user=YourUserName password=YourPassword")
* You will need to configure your Jupyter Notebook to be able to connect to the database (step 2)


### **3.2 Installing**

The assumption here is that your computer is running on Windows 10.
Feel free to adjust if you are using a Mac OS or any other operating system.

What things you need to install the software and how to install them:

* Python, with module named pandas, psycopg2, matplotlib & config 
* Anaconda
* Jupyter Notebook
* pgAdmin 4


## **4. Tools & Coding Languages**

The following tools and coding languages were used:
* SQL
* Quick database [diagram modeling tool](https://app.quickdatabasediagrams.com/#/)
* pgAdmin 4
* Python
* Pandas
* Jupyter Notebook


## **5. Data Source(s)**

The data used as input is coming from the following sources:
* Part 1: [SQL & pgAdmin 4](001-EmployeeSQL/001-DATA/)
* Part 2: [Python/Pandas & Jupyter Notebook](You must set up a connection as mentioned previously)


## **6. Run the code**

### **Step 1: The code is located here**
The code is available as follows:
* Part 1: [Weather](001-Python_Code/001_WeatherPy/001_WeatherPy.ipynb)
* Part 2: [Vacations](001-Python_Code/002_VacationPy/002_VacationPy.ipynb)


### **Step 2: Extract all files & run the code**
* Download this entire project from GitHub
* Review the [data model input](001-Employee_SQL/1_EmployeeSQL_Data_Modeling.sql), 
* Created the data model using [Quick database diagram modeling tool](https://app.quickdatabasediagrams.com/#/)
* Analyze the resulting ERD [Entity Relationship Diagram](001-Employee_SQL/2_EmployeeSQL_ERD.png)
* Create a database named "Employee" and specify the port, your user name and password
* Use this [SLQ code to create your tables](001-Employee_SQL/3_EmployeeSQL_Diagram_Table_Schemata.sql)
* Import the data from Csv file, see data sources mentioned previously
* Use this [SQL code to run queries](001-Employee_SQL/4_EmployeeSQL_Diagram_Queries.sql)
* Run Anaconda & open [Jupyter Notebook](001-Employee_SQL/5_EmployeeSQL_Optional3.ipynb)
* Configure the connection based on your database's credentials previously created
* Run the script using Jupyter Notebook

## **7. User Acceptance Testing**

See related document to learn more about acceptence criteria:  
[UAT Excel File](003-User_Acceptance_Testing/User_Acceptance_Testing.xlsx)

## **8. Deployment**

### The current ERD
This ERD is used for our current project. It puts primary key only on two tables.
However ideally each table should have primary key depending on the nature of the data and the business rules.
Example: Can an employee have many salaries within a specific "from_date" and "to_date" ?
I tried that approach by putting primary keys but loading data resulted in failure.
Therefore I simplified the data model for this project.

<p align="center">
  <img src="2_EmployeeSQL_ERD.png">
</p> 

### Ideal ERD suggestion
<p align="center">
  <img src="2_EmployeeSQL_ERD_FullConstraint.png">
</p> 


## **9. Expected result**

The outcome should be similar to the below:

<p align="center">
  <img src="Example_Query.png">
</p> 

<p align="center">
  <img src="Example_Query_bis.png">
</p> 
