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
 *         &lt;element name="webamilId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilPassword" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilAttName" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilUrl" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailBase" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
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
    "webamilId",
    "webamilPassword",
    "webamilAttName",
    "webamilUrl",
    "webmailBase"
})
@XmlRootElement(name = "getLdapFNameRequest", namespace = "http://webmail.com/LdapAttribute")
public class GetLdapFNameRequest {

    @XmlElement(namespace = "http://webmail.com/LdapAttribute", required = true)
    protected String webamilId;
    @XmlElement(namespace = "http://webmail.com/LdapAttribute", required = true)
    protected String webamilPassword;
    @XmlElement(namespace = "http://webmail.com/LdapAttribute", required = true)
    protected String webamilAttName;
    @XmlElement(namespace = "http://webmail.com/LdapAttribute", required = true)
    protected String webamilUrl;
    @XmlElement(namespace = "http://webmail.com/LdapAttribute", required = true)
    protected String webmailBase;

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
     * Gets the value of the webamilAttName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilAttName() {
        return webamilAttName;
    }

    /**
     * Sets the value of the webamilAttName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilAttName(String value) {
        this.webamilAttName = value;
    }

    /**
     * Gets the value of the webamilUrl property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilUrl() {
        return webamilUrl;
    }

    /**
     * Sets the value of the webamilUrl property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilUrl(String value) {
        this.webamilUrl = value;
    }

    /**
     * Gets the value of the webmailBase property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailBase() {
        return webmailBase;
    }

    /**
     * Sets the value of the webmailBase property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailBase(String value) {
        this.webmailBase = value;
    }

}