namespace Portal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ResultUpdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Results", "Date", c => c.DateTime(nullable: false));
            AddColumn("dbo.Results", "Metadata", c => c.String());
            DropColumn("dbo.Results", "Rating");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Results", "Rating", c => c.Int(nullable: false));
            DropColumn("dbo.Results", "Metadata");
            DropColumn("dbo.Results", "Date");
        }
    }
}
