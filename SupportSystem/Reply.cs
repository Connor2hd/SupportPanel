//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SupportSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reply
    {
        public int ID { get; set; }
        public Nullable<int> TicketID { get; set; }
        public Nullable<int> UserID { get; set; }
        public string Body { get; set; }
        public Nullable<System.DateTime> TimePosted { get; set; }
    
        public virtual Ticket Ticket { get; set; }
        public virtual UserAccount UserAccount { get; set; }
    }
}
