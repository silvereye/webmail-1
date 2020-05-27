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
 *         &lt;element name="webamilHost" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilPort" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilStart" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilEnd" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilFolder" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchTo" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchFrom" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchSubject" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchContent" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchDateStart" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchDateEnd" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchTag" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="searchStatus" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
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
    "webamilStart",
    "webamilEnd",
    "webamilFolder",
    "searchTo",
    "searchFrom",
    "searchSubject",
    "searchContent",
    "searchDateStart",
    "searchDateEnd",
    "searchTag",
    "searchStatus"
})
@XmlRootElement(name = "getInboxMailSearchRequest", namespace = "http://webmail.com/Search")
public class GetInboxMailSearchRequest {

    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilId;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilPassword;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilHost;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilPort;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilStart;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilEnd;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String webamilFolder;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchTo;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchFrom;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchSubject;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchContent;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchDateStart;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchDateEnd;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchTag;
    @XmlElement(namespace = "http://webmail.com/Search", required = true)
    protected String searchStatus;

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
     * Gets the value of the webamilStart property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilStart() {
        return webamilStart;
    }

    /**
     * Sets the value of the webamilStart property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilStart(String value) {
        this.webamilStart = value;
    }

    /**
     * Gets the value of the webamilEnd property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilEnd() {
        return webamilEnd;
    }

    /**
     * Sets the value of the webamilEnd property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilEnd(String value) {
        this.webamilEnd = value;
    }

    /**
     * Gets the value of the webamilFolder property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebamilFolder() {
        return webamilFolder;
    }

    /**
     * Sets the value of the webamilFolder property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebamilFolder(String value) {
        this.webamilFolder = value;
    }

    /**
     * Gets the value of the searchTo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchTo() {
        return searchTo;
    }

    /**
     * Sets the value of the searchTo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchTo(String value) {
        this.searchTo = value;
    }

    /**
     * Gets the value of the searchFrom property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchFrom() {
        return searchFrom;
    }

    /**
     * Sets the value of the searchFrom property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchFrom(String value) {
        this.searchFrom = value;
    }

    /**
     * Gets the value of the searchSubject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchSubject() {
        return searchSubject;
    }

    /**
     * Sets the value of the searchSubject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchSubject(String value) {
        this.searchSubject = value;
    }

    /**
     * Gets the value of the searchContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchContent() {
        return searchContent;
    }

    /**
     * Sets the value of the searchContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchContent(String value) {
        this.searchContent = value;
    }

    /**
     * Gets the value of the searchDateStart property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchDateStart() {
        return searchDateStart;
    }

    /**
     * Sets the value of the searchDateStart property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchDateStart(String value) {
        this.searchDateStart = value;
    }

    /**
     * Gets the value of the searchDateEnd property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchDateEnd() {
        return searchDateEnd;
    }

    /**
     * Sets the value of the searchDateEnd property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchDateEnd(String value) {
        this.searchDateEnd = value;
    }

    /**
     * Gets the value of the searchTag property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchTag() {
        return searchTag;
    }

    /**
     * Sets the value of the searchTag property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchTag(String value) {
        this.searchTag = value;
    }

    /**
     * Gets the value of the searchStatus property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSearchStatus() {
        return searchStatus;
    }

    /**
     * Sets the value of the searchStatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSearchStatus(String value) {
        this.searchStatus = value;
    }

}