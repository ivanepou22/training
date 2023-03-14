xmlport 50000 "Student"
{
    Format = VariableText;
    schema
    {
        textelement(root)
        {
            tableelement(Student; Student)
            {
                fieldattribute(StudentNo; Student."No.")
                {
                }
                fieldelement(FirstName; Student."First Name")
                {
                }
                fieldelement(LastName; Student."Last Name")
                {
                }
                fieldelement(Email; Student.Email)
                {
                }
                fieldelement(Phone; Student.Phone)
                {
                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}