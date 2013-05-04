data = list(names = c("Joe", "Jay", "Jessica", "Mayfield", "Candice", "Alice"), department = c("Sales", 
    "Sales", "IT", "IT", "HR", "HR"), salary = c(1e+05, 98000, 110000, 50000, 55000, 80000))
p11 <- rPlot(salary ~ department, color = "names", data = data, type = "bar", position = "dodge")
p11$set(title = "Department Salaries")
p11 
