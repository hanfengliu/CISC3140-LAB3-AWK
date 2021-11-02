print: src/employee.awk
	touch employeeReport.txt
	@awk -f src/employee.awk data/employee.csv > employeeReport.txt
	@echo "Successfully process the csv file"
