//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.12.31 at 05:59:11 PM IST 
//


package webmail.wsdlnew;

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
 *         &lt;element name="webamilHost" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilPort" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailFolder" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilUids" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
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
    "webamilHost",
    "webamilPort",
    "webmailFolder",
    "webamilUids"
})
@XmlRootElement(name = "setWebmailFlageRequest", namespace = "http://webmail.com/Flagaction")
public class SetWebmailFlageRequest {

    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webamilId;
    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webamilPassword;
    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webamilHost;
    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webamilPort;
    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webmailFolder;
    @XmlElement(namespace = "http://webmail.com/Flagaction", required = true)
    protected String webamilUids;

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
     * Gets the value of the webmailFolder property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailFolder() {
        return webmailFolder;
    }

    /**
     * Sets the value of the webmailFolder property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailFolder(String value) {
        this.webmailFolder = value;
    }

    /**
     * Gets the value of the webamilUids property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilUids() {
        return webamilUids;
    }

    /**
     * Sets the value of the webamilUids property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilUids(String value) {
        this.webamilUids = value;
    }

}
