Class ObjectScript.Sample.Company Extends (%Persistent, %Populate, %XML.Adaptor)
{

/// The company's name.
Property Name As %String(MAXLEN = 80, POPSPEC = "Company()") [ Required ];

/// The company's mission statement.
Property Mission As %String(MAXLEN = 200, POPSPEC = "Mission()");

/// The unique Tax ID number for the company.
Property TaxID As %String [ Required ];

Property Revenue As %Integer;

Method Print() [ Language = python ]
{
    print ('\nName: ' + self.Name + ' TaxID: ' + self.TaxID)
}

Method Write() [ Language = objectscript ]
{
    write !, "Name: ", ..Name, " TaxID: ", ..TaxID
}

Storage Default
{
<Data name="CompanyDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Mission</Value>
</Value>
<Value name="4">
<Value>TaxID</Value>
</Value>
<Value name="5">
<Value>Revenue</Value>
</Value>
</Data>
<DataLocation>^ObjectScript.Sample.CompanyD</DataLocation>
<DefaultData>CompanyDefaultData</DefaultData>
<IdLocation>^ObjectScript.Sample.CompanyD</IdLocation>
<IndexLocation>^ObjectScript.Sample.CompanyI</IndexLocation>
<StreamLocation>^ObjectScript.Sample.CompanyS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
