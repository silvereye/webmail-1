//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.11 at 12:09:55 PM IST 
//


package webmail.wsdl;

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
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="newCalendar" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/&gt;
 *         &lt;element name="existingCalendar" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "newCalendar",
    "existingCalendar"
})
@XmlRootElement(name = "getImportCalendarRequest", namespace = "http://webmail.com/calendar")
public class GetImportCalendarRequest {

    @XmlElement(namespace = "http://webmail.com/calendar", required = true)
    protected byte[] newCalendar;
    @XmlElement(namespace = "http://webmail.com/calendar", required = true)
    protected byte[] existingCalendar;

    /**
     * Gets the value of the newCalendar property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getNewCalendar() {
        return newCalendar;
    }

    /**
     * Sets the value of the newCalendar property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setNewCalendar(byte[] value) {
        this.newCalendar = value;
    }

    /**
     * Gets the value of the existingCalendar property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getExistingCalendar() {
        return existingCalendar;
    }

    /**
     * Sets the value of the existingCalendar property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setExistingCalendar(byte[] value) {
        this.existingCalendar = value;
    }

}
