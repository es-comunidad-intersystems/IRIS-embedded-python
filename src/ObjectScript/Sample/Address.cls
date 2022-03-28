Class ObjectScript.Sample.Address Extends %Library.Persistent
{

Property AddressLine1 As %String;

Property AddressLine2 As %String;

Property City As %String;

Property State As %String;

Property PostalCode As %String;

Method Normalize(addr As %String) [ Language = python ]
{

        from scourgify import normalize_address_record
        normalized = normalize_address_record(addr)

        self.AddressLine1 = normalized['address_line_1']
        self.AddressLine2 = normalized['address_line_2']
        self.City = normalized['city']
        self.State = normalized['state']
        self.PostalCode = normalized['postal_code']
}

Storage Default
{
<Data name="AddressDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AddressLine1</Value>
</Value>
<Value name="3">
<Value>AddressLine2</Value>
</Value>
<Value name="4">
<Value>City</Value>
</Value>
<Value name="5">
<Value>State</Value>
</Value>
<Value name="6">
<Value>PostalCode</Value>
</Value>
</Data>
<DataLocation>^ObjectScript.Sample.AddressD</DataLocation>
<DefaultData>AddressDefaultData</DefaultData>
<IdLocation>^ObjectScript.Sample.AddressD</IdLocation>
<IndexLocation>^ObjectScript.Sample.AddressI</IndexLocation>
<StreamLocation>^ObjectScript.Sample.AddressS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
