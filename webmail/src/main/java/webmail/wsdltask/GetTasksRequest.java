//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.7 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.06.10 at 12:23:05 PM IST 
//


package webmail.wsdltask;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="taskFileName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="calendarFileContent" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "taskFileName",
    "calendarFileContent"
})
@XmlRootElement(name = "getTasksRequest")
public class GetTasksRequest {

    @XmlElement(required = true)
    protected String taskFileName;
    @XmlElement(required = true)
    protected byte[] calendarFileContent;

    /**
     * Gets the value of the taskFileName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTaskFileName() {
        return taskFileName;
    }

    /**
     * Sets the value of the taskFileName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTaskFileName(String value) {
        this.taskFileName = value;
    }

    /**
     * Gets the value of the calendarFileContent property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getCalendarFileContent() {
        return calendarFileContent;
    }

    /**
     * Sets the value of the calendarFileContent property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setCalendarFileContent(byte[] value) {
        this.calendarFileContent = value;
    }

}
