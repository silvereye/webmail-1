//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.11 at 12:09:55 PM IST 
//


package webmail.wsdl;

import java.util.ArrayList;
import java.util.List;
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
 *         &lt;element name="webmailUrl" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailBase" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailAttList" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element name="webmailAttListValue" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
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
    "webmailUrl",
    "webmailBase",
    "webmailAttList",
    "webmailAttListValue"
})
@XmlRootElement(name = "getLdapModifyListAttRequest", namespace = "http://webmail.com/LdapModifyAttribute")
public class GetLdapModifyListAttRequest {

    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute", required = true)
    protected String webmailId;
    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute", required = true)
    protected String webmailPassword;
    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute", required = true)
    protected String webmailUrl;
    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute", required = true)
    protected String webmailBase;
    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute")
    protected List<String> webmailAttList;
    @XmlElement(namespace = "http://webmail.com/LdapModifyAttribute")
    protected List<String> webmailAttListValue;

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
     * Gets the value of the webmailUrl property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailUrl() {
        return webmailUrl;
    }

    /**
     * Sets the value of the webmailUrl property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailUrl(String value) {
        this.webmailUrl = value;
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

    /**
     * Gets the value of the webmailAttList property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the webmailAttList property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getWebmailAttList().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getWebmailAttList() {
        if (webmailAttList == null) {
            webmailAttList = new ArrayList<String>();
        }
        return this.webmailAttList;
    }

    /**
     * Gets the value of the webmailAttListValue property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the webmailAttListValue property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getWebmailAttListValue().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getWebmailAttListValue() {
        if (webmailAttListValue == null) {
            webmailAttListValue = new ArrayList<String>();
        }
        return this.webmailAttListValue;
    }

}
