report 50002 "Query Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        // dataitem(TopCustomers; QueryReport)
        // {
        //     column(ColumnName; SourceFieldName)
        //     {

        //     }
        // }
    }


    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'QueryReport.rdl';
        }
    }

    var
        QueryReport: Query "Top 10 Customers - Sales";
}