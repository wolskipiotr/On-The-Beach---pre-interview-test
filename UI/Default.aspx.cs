using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace UI
{
    public partial class _Default : Page
    {
        private PayrollService payrollService;
        protected PayrollService PayrollService {get {return payrollService ?? (payrollService = new PayrollService());}}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                initialLoad();
            }
        }

        private void initialLoad()
        {
            gvWages.DataSource = PayrollService.GetEmployeeWages();
            gvWages.DataBind();

            gvWagesOrderred.DataSource = PayrollService.GetEmployeeWagesOrderred();
            gvWagesOrderred.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            gvSearchResults.DataSource = PayrollService.FindEmployeeWages(txtSearchKey.Text.Trim());
            gvSearchResults.DataBind();
        }
    }
}