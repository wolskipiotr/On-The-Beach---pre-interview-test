# On-The-Beach---pre-interview-test

I took a slightly different approach and instead of writing a console app, I created a multi tier web application which uses EF6.0 for data access and ASP.NET Web Forms for user interface. Business layer is a class library.

To deploy:

1.Deply the database by either restoring the backup located in Solution.7z\PayrollDB.bak, or alternatively - open the solution and publish _PayrollDB database project
2. In UI project, update web.config, payrollEntities connection string to point at the correct database server
3. Deploy the UI project to IIS (this can be done via web publish). Alternatively, for evaluation purposes - you can use Visual Studio build in IIS (just press F5).

Last thing, task one was a request for some SQL - there is not much of that when using an ORM, to make up for that - here is the SQL:

SELECT 
	emp.name AS Name,
	sal.annual_amount *
	curr.conversion_factor AS [Wages in GBP]
FROM
	dbo.Employees emp 
	JOIN dbo.Salaries sal ON sal.employee_id = emp.id
	JOIN Currencies curr ON sal.currency_id = curr.id
