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
 *         &lt;element name="webmailId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailPassword" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailHost" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailFolderName" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailFolderSubStatus" type="{http://www.w3.org/2001/XMLSchema}boolean"/&gt;
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
    "webmailId",
    "webmailPassword",
    "webmailHost",
    "webmailFolderName",
    "webmailFolderSubStatus"
})
@XmlRootElement(name = "getWebmailSubscriptionFolderRequest", namespace = "http://webmail.com/Folder")
public class GetWebmailSubscriptionFolderRequest {

    @XmlElement(namespace = "http://webmail.com/Folder", required = true)
    protected String webmailId;
    @XmlElement(namespace = "http://webmail.com/Folder", required = true)
    protected String webmailPassword;
    @XmlElement(namespace = "http://webmail.com/Folder", required = true)
    protected String webmailHost;
    @XmlElement(namespace = "http://webmail.com/Folder", required = true)
    protected String webmailFolderName;
    @XmlElement(namespace = "http://webmail.com/Folder")
    protected boolean webmailFolderSubStatus;

    /**
     * Gets the value of the webmailId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailId() {
        return webmailId;
    }

    /**
     * Sets the value of the webmailId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailId(String value) {
        this.webmailId = value;
    }

    /**
     * Gets the value of the webmailPassword property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailPassword() {
        return webmailPassword;
    }

    /**
     * Sets the value of the webmailPassword property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailPassword(String value) {
        this.webmailPassword = value;
    }

    /**
     * Gets the value of the webmailHost property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailHost() {
        return webmailHost;
    }

    /**
     * Sets the value of the webmailHost property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailHost(String value) {
        this.webmailHost = value;
    }

    /**
     * Gets the value of the webmailFolderName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailFolderName() {
        return webmailFolderName;
    }

    /**
     * Sets the value of the webmailFolderName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailFolderName(String value) {
        this.webmailFolderName = value;
    }

    /**
     * Gets the value of the webmailFolderSubStatus property.
     * 
     */
    public boolean isWebmailFolderSubStatus() {
        return webmailFolderSubStatus;
    }

    /**
     * Sets the value of the webmailFolderSubStatus property.
     * 
     */
    public void setWebmailFolderSubStatus(boolean value) {
        this.webmailFolderSubStatus = value;
    }

}
