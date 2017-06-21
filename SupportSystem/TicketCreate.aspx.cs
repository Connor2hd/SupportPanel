using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SupportSystem
{
    public partial class TicketCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Load drop down data defaults
            ddlDepartment.Items.Add("Select a Department");
            ddlDepartment.Items.Add("Hardware");
            ddlDepartment.Items.Add("Software");
            ddlDepartment.Items.Add("Billing");

            ddlUrgencyLevel.Items.Add("Low");
            ddlUrgencyLevel.Items.Add("Medium");
            ddlUrgencyLevel.Items.Add("High");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Create an object of the object context
            SupportTicketEntities db = new SupportTicketEntities();

            //Create a ticket object
            Ticket objTicket = new Ticket();

            //Assign the text box values to property values
            objTicket.Title = txtTitle.Text;
        }
    }
}