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
            lblBodyAuthor.Text = activeTicket.UserAccount.Username;
            lblTicketID.Text = ticketID.ToString();
            lblSeverity.Text = activeTicket.UrgencyLevel;

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

            //Load ticket replys
            LoadReplys(ticketID);
        }

        public void LoadReplys(int ticketID)
        {
            //Create an object of the object context
            SupportTicketEntities db = new SupportTicketEntities();

            //Get a list of replys
            List<Reply> ticketReplys = db.Replies.Where(i => i.TicketID == ticketID).ToList();

            foreach(Reply reply in ticketReplys)
            {
                phReply.Controls.Add(new LiteralControl("<div class='row'><div class='col s12 m5'><div class='card-panel teal'><span class='white-text'>"));
                phReply.Controls.Add(new LiteralControl(reply.Body));
                phReply.Controls.Add(new LiteralControl("<br>"));
                phReply.Controls.Add(new LiteralControl(reply.UserAccount.Username + "    " + reply.TimePosted));
                phReply.Controls.Add(new LiteralControl("</span></div></div></div>"));
            }
        }

        protected void btnSubmitReply_Click(object sender, EventArgs e)
        {
            //Create an object of the object context
            SupportTicketEntities db = new SupportTicketEntities();

            //Create a new reply object
            Reply reply = new Reply();
            reply.Body = txtReplyBody.Text;
            reply.TimePosted = DateTime.Now;
            reply.TicketID = Convert.ToInt32(lblTicketID.Text);
            reply.UserID = 3; //Need to come back to this

            //Add the object to the reply table
            db.Replies.Add(reply);
            db.SaveChanges();
        }
    }
}