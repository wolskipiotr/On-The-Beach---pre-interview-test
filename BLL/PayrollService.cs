using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using DAL;

namespace BLL
{
    public class PayrollService
    {
        public List<EmployeesWages> GetEmployeeWages()
        {            
            return Repository.Current.ObjectContext.Employees.Select(r => new EmployeesWages
            {
                EmployeeName = r.name,
                Wages = r.Salaries.FirstOrDefault().annual_amount,
                WagesInGBP = r.Salaries.FirstOrDefault().annual_amount * r.Salaries.FirstOrDefault().Currency.conversion_factor
            }).ToList();
        }

        public List<EmployeesWages> FindEmployeeWages(string searchKey)
        {
            return Repository.Current.ObjectContext.Employees.Where(r => r.name.Contains(searchKey)).Select(r => new EmployeesWages
            {
                EmployeeName = r.name,
                Wages = r.Salaries.FirstOrDefault().annual_amount,
                WagesInGBP = r.Salaries.FirstOrDefault().annual_amount * r.Salaries.FirstOrDefault().Currency.conversion_factor                
            }).ToList();
        }

        public List<EmployeesWages> GetEmployeeWagesOrderred()
        {
            return GetEmployeeWages().OrderByDescending(r => r.WagesInGBP).ToList();
        }
    }
}
