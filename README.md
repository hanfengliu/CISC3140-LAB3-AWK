# Employee's Report Generator
This repository uses an AWK script to take in a CSV file and produces a report as a text file. The CSV file contains much information about the employee such as first name, last name, gender, and salary. The Makefile is used as a way to automate the process. The program is meant to run on the command line.

## Report
The report displays each employee's first name, last name, gender, year of joining, age(years in the company), and salary line by line. In a summary, the report calculated the number of employees, the number of males and females, how many people join before 2000, between 2000 and 2010, after 2010, the average years which employees work for the company and their average salary.

## Preparation and Installation
Make sure you have the Make and Vim installed on your system. Run the following command to install them.

```bash
sudo apt install make
sudo apt install vim
```

After you have the make install, use the following command to clone this repository.
```bash
git clone https://github.com/hanfengliu/CISC3140-LAB3-AWK.git
```

## Usage
Run the following command to generate a report based on the CSV file.
```bash
make -f Makefile
```

If you want to view the text file, you can you this command to open it.
```bash
vim employeeReport.txt
```

## Source of the raw data
You can use the following link to access the website and click on "100 Records" to download the exact same CSV file. This file is categorized under the "Human Resources" section and meant for testing purposes. It is completely copyright-free and can be used without any obligation.
```bash
https://eforexcel.com/wp/downloads-16-sample-csv-files-data-sets-for-testing/
```
