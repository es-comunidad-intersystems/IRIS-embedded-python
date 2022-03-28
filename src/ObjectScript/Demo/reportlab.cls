Class Demo.reportlab
{

ClassMethod CreateSamplePDF(fileloc As %String) As %Status
{
    set canvaslib = ##class(%SYS.Python).Import("reportlab.pdfgen.canvas")
    set canvas = canvaslib.Canvas(fileloc)
    do canvas.drawImage("/opt/irisapp/misc/python.png", 50, 200)
    do canvas.drawImage("/opt/irisapp/misc/isc.png", 250,200)
    do canvas.setFont("Helvetica-Bold", 24)
    do canvas.drawString(25, 550, "InterSystems IRIS & Python. Perfect Together.")
    do canvas.save()
}

}
