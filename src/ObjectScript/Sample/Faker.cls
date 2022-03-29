Class ObjectScript.Sample.Faker
{

/// Faker example
ClassMethod FakerExample() As %Status
{
    Set sc = $$$OK

    Set params = {
        "previewRows": 3,         // How many items generate
        "locale": "en",           // Select Locale for generated data
        "columns": [{
            "type": "person_name",
            "name": "name"
        }, {
        "type": "date_of_birth",
        "name": "dob"
        }, {
        "type": "boolean",
        "name": "flag"
        }]
    }
    Set faker = ##class("caretdev.Faker.Main").%New()
    
    Do faker.%JSONImport(params)
    Set result = faker.Generate()

    If $Extract(result)=0 Do $system.OBJ.DisplayError(result)

    Set items = result."getitem"("items")

    Set count = items."len"()

    For i=0:1:count-1 {

    Set item = items."getitem"(i)

    Set name = item."getitem"("name")

    Set dob = item."getitem"("dob")

    Set flag = item."getitem"("flag")

    write !, item, name, dob,flag

    }

    Return sc
}

}
