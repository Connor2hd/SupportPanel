using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SupportPanel2018.Pages
{
    public partial class TicketView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get the ID for the ticket that has been passed through from the pool
            int ticketID = Convert.ToInt32(Request.QueryString["ID"]);

            //Create an object of the object context
            SupportTicketEntities db = new SupportTicketEntities();

            //Get the remaining data for the support ticket
            Ticket activeTicket = db.Tickets.First(i => i.ID == ticketID);

            //Set page labels
            lblTitle.Text = activeTicket.Title;
            lblBody.Text = activeTicket.Body;
            lblAuthor.Text = activeTicket.UserAccount.Username;

            //Set card color depending on urgency level
            string colour = "";

            //Determine the ticket color
            if (activeTicket.UrgencyLevel == "Low")
            {
                colour = "blue";
            }
            if (activeTicket.UrgencyLevel == "Medium")
            {
                colour = "orange";
            }
            if (activeTicket.UrgencyLevel == "High")
            {
                colour = "red";
            }

            //Add the card and colour HTML
            phCard.Controls.Add(new LiteralControl("<div class='card-panel " + colour + "'>"));
        }
    }
}