import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.iec61499.stringify.HMIInterfaceTypeGenerator.Companion.generateDispatchIn
import org.fbme.lib.st.types.ElementaryType
import org.jdom.Document
import org.jdom.Element
import org.jdom.output.XMLOutputter
import org.junit.Test
import org.junit.runner.RunWith
import java.io.FileOutputStream
import java.io.OutputStream


@RunWith(PlatformTestRunner::class)
class HMIPrinterTest : PlatformTestBase() {
    @Test
    fun parseTest1() {
        print("Started")
        var fileName = "DISPATCH_IN.fbt"
        val resElement: Element = Element("DISPATCH_IN")
        var p = factory.createParameterDeclaration(null)
        p.type = ElementaryType.STRING
        p.name = "COUNT"
        p.initialValue = STConverter.parseLiteral(stFactory, "'1'")

//        generateDispatchIn(resElement, factory, stFactory, listOf(p))
//        resElement.print(PrettyPrinter())
            // List<Document> dependentList = new DependentDeclarationPrinter(declaration).print();
        val stream: OutputStream = FileOutputStream(fileName)
        val xmlOutputter = XMLOutputter()
        var doc = Document()
        doc.setRootElement(resElement)
        xmlOutputter.output(doc, stream)
    }
}