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
 *         &lt;element name="webamilIp" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilId" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilPassword" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilFromName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilHost" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilPort" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilTo" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilSubject" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilBodyContent" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webamilCalendarContent" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="webmailXMailer" type="{http://www.w3.org/2001/XMLSchema}string"/>
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
    "webamilIp",
    "webamilId",
    "webamilPassword",
    "webamilFromName",
    "webamilHost",
    "webamilPort",
    "webamilTo",
    "webamilSubject",
    "webamilBodyContent",
    "webamilCalendarContent",
    "webmailXMailer"
})
@XmlRootElement(name = "getCalendarMailRequest")
public class GetCalendarMailRequest {

    @XmlElement(required = true)
    protected String webamilIp;
    @XmlElement(required = true)
    protected String webamilId;
    @XmlElement(required = true)
    protected String webamilPassword;
    @XmlElement(required = true)
    protected String webamilFromName;
    @XmlElement(required = true)
    protected String webamilHost;
    @XmlElement(required = true)
    protected String webamilPort;
    @XmlElement(required = true)
    protected String webamilTo;
    @XmlElement(required = true)
    protected String webamilSubject;
    @XmlElement(required = true)
    protected String webamilBodyContent;
    @XmlElement(required = true)
    protected String webamilCalendarContent;
    @XmlElement(required = true)
    protected String webmailXMailer;

    /**
     * Gets the value of the webamilIp property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilIp() {
        return webamilIp;
    }

    /**
     * Sets the value of the webamilIp property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilIp(String value) {
        this.webamilIp = value;
    }

    /**
     * Gets the value of the webamilId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilId() {
        return webamilId;
    }

    /**
     * Sets the value of the webamilId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilId(String value) {
        this.webamilId = value;
    }

    /**
     * Gets the value of the webamilPassword property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilPassword() {
        return webamilPassword;
    }

    /**
     * Sets the value of the webamilPassword property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilPassword(String value) {
        this.webamilPassword = value;
    }

    /**
     * Gets the value of the webamilFromName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilFromName() {
        return webamilFromName;
    }

    /**
     * Sets the value of the webamilFromName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilFromName(String value) {
        this.webamilFromName = value;
    }

    /**
     * Gets the value of the webamilHost property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilHost() {
        return webamilHost;
    }

    /**
     * Sets the value of the webamilHost property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilHost(String value) {
        this.webamilHost = value;
    }

    /**
     * Gets the value of the webamilPort property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilPort() {
        return webamilPort;
    }

    /**
     * Sets the value of the webamilPort property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilPort(String value) {
        this.webamilPort = value;
    }

    /**
     * Gets the value of the webamilTo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilTo() {
        return webamilTo;
    }

    /**
     * Sets the value of the webamilTo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilTo(String value) {
        this.webamilTo = value;
    }

    /**
     * Gets the value of the webamilSubject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilSubject() {
        return webamilSubject;
    }

    /**
     * Sets the value of the webamilSubject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilSubject(String value) {
        this.webamilSubject = value;
    }

    /**
     * Gets the value of the webamilBodyContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilBodyContent() {
        return webamilBodyContent;
    }

    /**
     * Sets the value of the webamilBodyContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilBodyContent(String value) {
        this.webamilBodyContent = value;
    }

    /**
     * Gets the value of the webamilCalendarContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilCalendarContent() {
        return webamilCalendarContent;
    }

    /**
     * Sets the value of the webamilCalendarContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilCalendarContent(String value) {
        this.webamilCalendarContent = value;
    }

    /**
     * Gets the value of the webmailXMailer property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailXMailer() {
        return webmailXMailer;
    }

    /**
     * Sets the value of the webmailXMailer property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailXMailer(String value) {
        this.webmailXMailer = value;
    }

}