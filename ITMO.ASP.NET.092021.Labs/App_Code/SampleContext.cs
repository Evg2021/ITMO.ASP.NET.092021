using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ITMO.ASP.NET._092021.Labs.App_Code

{
    public class SampleContext : DbContext
    {
        public SampleContext()
        : base("SeminarBD")
        { }
        public DbSet<GuestResponse> GuestResponses { get; set; }
        public DbSet<Report> Reports { get; set; }
    }
}