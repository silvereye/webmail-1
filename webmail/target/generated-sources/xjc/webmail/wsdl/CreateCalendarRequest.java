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
 *         &lt;element name="CalID" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="CalColor" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="CalMethod" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="userid" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="permission" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="sharedPermission" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
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
    "calID",
    "calColor",
    "calMethod",
    "userid",
    "permission",
    "sharedPermission"
})
@XmlRootElement(name = "createCalendarRequest", namespace = "http://webmail.com/calendar")
public class CreateCalendarRequest {

    @XmlElement(name = "CalID", namespace = "http://webmail.com/calendar", required = true)
    protected String calID;
    @XmlElement(name = "CalColor", namespace = "http://webmail.com/calendar", required = true)
    protected String calColor;
    @XmlElement(name = "CalMethod", namespace = "http://webmail.com/calendar", required = true)
    protected String calMethod;
    @XmlElement(namespace = "http://webmail.com/calendar", required = true)
    protected String userid;
    @XmlElement(namespace = "http://webmail.com/calendar", required = true)
    protected String permission;
    @XmlElement(namespace = "http://webmail.com/calendar", required = true)
    protected String sharedPermission;

    /**
     * Gets the value of the calID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalID() {
        return calID;
    }

    /**
     * Sets the value of the calID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalID(String value) {
        this.calID = value;
    }

    /**
     * Gets the value of the calColor property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalColor() {
        return calColor;
    }

    /**
     * Sets the value of the calColor property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalColor(String value) {
        this.calColor = value;
    }

    /**
     * Gets the value of the calMethod property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalMethod() {
        return calMethod;
    }

    /**
     * Sets the value of the calMethod property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalMethod(String value) {
        this.calMethod = value;
    }

    /**
     * Gets the value of the userid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUserid() {
        return userid;
    }

    /**
     * Sets the value of the userid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUserid(String value) {
        this.userid = value;
    }

    /**
     * Gets the value of the permission property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPermission() {
        return permission;
    }

    /**
     * Sets the value of the permission property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermission(String value) {
        this.permission = value;
    }

    /**
     * Gets the value of the sharedPermission property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSharedPermission() {
        return sharedPermission;
    }

    /**
     * Sets the value of the sharedPermission property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSharedPermission(String value) {
        this.sharedPermission = value;
    }

}
