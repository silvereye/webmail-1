//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.7 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.05.13 at 11:39:55 AM IST 
//


package webmail.wsdlcal;

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
 *         &lt;element name="eventbean" type="{http://webmail.com/calendar}EventBean"/>
 *         &lt;element name="orgname" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="orgemail" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="filecontent" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/>
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
    "eventbean",
    "orgname",
    "orgemail",
    "filecontent"
})
@XmlRootElement(name = "createEventRequest")
public class CreateEventRequest {

    @XmlElement(required = true)
    protected EventBean eventbean;
    @XmlElement(required = true)
    protected String orgname;
    @XmlElement(required = true)
    protected String orgemail;
    @XmlElement(required = true)
    protected byte[] filecontent;

    /**
     * Gets the value of the eventbean property.
     * 
     * @return
     *     possible object is
     *     {@link EventBean }
     *     
     */
    public EventBean getEventbean() {
        return eventbean;
    }

    /**
     * Sets the value of the eventbean property.
     * 
     * @param value
     *     allowed object is
     *     {@link EventBean }
     *     
     */
    public void setEventbean(EventBean value) {
        this.eventbean = value;
    }

    /**
     * Gets the value of the orgname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrgname() {
        return orgname;
    }

    /**
     * Sets the value of the orgname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrgname(String value) {
        this.orgname = value;
    }

    /**
     * Gets the value of the orgemail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrgemail() {
        return orgemail;
    }

    /**
     * Sets the value of the orgemail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrgemail(String value) {
        this.orgemail = value;
    }

    /**
     * Gets the value of the filecontent property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getFilecontent() {
        return filecontent;
    }

    /**
     * Sets the value of the filecontent property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setFilecontent(byte[] value) {
        this.filecontent = value;
    }

}
