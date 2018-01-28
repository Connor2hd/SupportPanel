using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SupportPanel2018.Pages
{
    public partial class TicketPool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Create an object of the object context
            SupportTicketEntities db = new SupportTicketEntities();

            //Lowercase ticket represent object that was just created for this instance
            var ticketQuery = from ticket in db.Tickets select ticket;

            //Create a list from the items
            List<Ticket> ticketList = ticketQuery.ToList();

            foreach(var Ticket in ticketList)
            {
                //String to hold the color variable to change card color depending on urgency level
                string colour = "";

                //Determine the ticket color
                if (Ticket.UrgencyLevel == "Low")
                {
                    colour = "blue";
                }
                if (Ticket.UrgencyLevel == "Medium")
                {
                    colour = "orange";
                }
                if (Ticket.UrgencyLevel == "High")
                {
                    colour = "red";
                }

                //Generate HTML to display.  I just realized there is a better way to do this.  Setting the urgency level as a number and having the query sort by that number.
                //I may come back here and change that though it would require changes to the DB and EF.
                if (Ticket.UrgencyLevel == "High")
                {
                    phTicketsHigh.Controls.Add(new LiteralControl("<a href='TicketView.aspx?ID=" + Ticket.ID + "'>"));
                    phTicketsHigh.Controls.Add(new LiteralControl("<div class='card-panel " + colour + "'>"));
                    phTicketsHigh.Controls.Add(new LiteralControl("<span class='white-text' style='font-weight:bold;'>" + Ticket.UrgencyLevel + "</span><br><br>"));
                    phTicketsHigh.Controls.Add(new LiteralControl("<span class='white-text'>" + Ticket.Body + "</span></div></a>"));
                }
                if (Ticket.UrgencyLevel == "Medium")
                {
                    phTicketsMedium.Controls.Add(new LiteralControl("<a href='TicketView.aspx?ID=" + Ticket.ID + "'>"));
                    phTicketsMedium.Controls.Add(new LiteralControl("<div class='card-panel " + colour + "'>"));
                    phTicketsMedium.Controls.Add(new LiteralControl("<span class='white-text' style='font-weight:bold;'>" + Ticket.UrgencyLevel + "</span><br><br>"));
                    phTicketsMedium.Controls.Add(new LiteralControl("<span class='white-text'>" + Ticket.Body + "</span></div></a>"));
                }
                if (Ticket.UrgencyLevel == "Low")
                {
                    phTicketsLow.Controls.Add(new LiteralControl("<a href='TicketView.aspx?ID=" + Ticket.ID + "'>"));
                    phTicketsLow.Controls.Add(new LiteralControl("<div class='card-panel " + colour + "'>"));
                    phTicketsLow.Controls.Add(new LiteralControl("<span class='white-text' style='font-weight:bold;'>" + Ticket.UrgencyLevel + "</span><br><br>"));
                    phTicketsLow.Controls.Add(new LiteralControl("<span class='white-text'>" + Ticket.Body + "</span></div></a>"));
                }
            }
        }
    }
}