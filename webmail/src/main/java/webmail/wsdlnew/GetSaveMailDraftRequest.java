//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.12.31 at 05:59:11 PM IST 
//


package webmail.wsdlnew;

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
 *         &lt;element name="webmailIp" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailPassword" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailFromName" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webamilHost" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailPort" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailIMAPPort" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailUid" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailTo" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailCc" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailBcc" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailSubject" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailBodyContent" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailTextType" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="webmailAttach" type="{http://www.w3.org/2001/XMLSchema}boolean"/&gt;
 *         &lt;element name="webmailXMailer" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="AttachmentFileName" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element name="AttachmentFileNewName" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
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
    "webmailIp",
    "webmailId",
    "webmailPassword",
    "webmailFromName",
    "webamilHost",
    "webmailPort",
    "webmailIMAPPort",
    "webmailUid",
    "webmailTo",
    "webmailCc",
    "webmailBcc",
    "webmailSubject",
    "webmailBodyContent",
    "webmailTextType",
    "webmailAttach",
    "webmailXMailer",
    "attachmentFileName",
    "attachmentFileNewName"
})
@XmlRootElement(name = "getSaveMailDraftRequest", namespace = "http://webmail.com/Compose")
public class GetSaveMailDraftRequest {

    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailIp;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailId;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailPassword;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailFromName;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webamilHost;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailPort;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailIMAPPort;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailUid;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailTo;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailCc;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailBcc;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailSubject;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailBodyContent;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailTextType;
    @XmlElement(namespace = "http://webmail.com/Compose")
    protected boolean webmailAttach;
    @XmlElement(namespace = "http://webmail.com/Compose", required = true)
    protected String webmailXMailer;
    @XmlElement(name = "AttachmentFileName", namespace = "http://webmail.com/Compose")
    protected List<String> attachmentFileName;
    @XmlElement(name = "AttachmentFileNewName", namespace = "http://webmail.com/Compose")
    protected List<String> attachmentFileNewName;

    /**
     * Gets the value of the webmailIp property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailIp() {
        return webmailIp;
    }

    /**
     * Sets the value of the webmailIp property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailIp(String value) {
        this.webmailIp = value;
    }

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
     * Gets the value of the webmailFromName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailFromName() {
        return webmailFromName;
    }

    /**
     * Sets the value of the webmailFromName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailFromName(String value) {
        this.webmailFromName = value;
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
     * Gets the value of the webmailPort property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailPort() {
        return webmailPort;
    }

    /**
     * Sets the value of the webmailPort property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailPort(String value) {
        this.webmailPort = value;
    }

    /**
     * Gets the value of the webmailIMAPPort property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailIMAPPort() {
        return webmailIMAPPort;
    }

    /**
     * Sets the value of the webmailIMAPPort property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailIMAPPort(String value) {
        this.webmailIMAPPort = value;
    }

    /**
     * Gets the value of the webmailUid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailUid() {
        return webmailUid;
    }

    /**
     * Sets the value of the webmailUid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailUid(String value) {
        this.webmailUid = value;
    }

    /**
     * Gets the value of the webmailTo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailTo() {
        return webmailTo;
    }

    /**
     * Sets the value of the webmailTo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailTo(String value) {
        this.webmailTo = value;
    }

    /**
     * Gets the value of the webmailCc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailCc() {
        return webmailCc;
    }

    /**
     * Sets the value of the webmailCc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailCc(String value) {
        this.webmailCc = value;
    }

    /**
     * Gets the value of the webmailBcc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailBcc() {
        return webmailBcc;
    }

    /**
     * Sets the value of the webmailBcc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailBcc(String value) {
        this.webmailBcc = value;
    }

    /**
     * Gets the value of the webmailSubject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailSubject() {
        return webmailSubject;
    }

    /**
     * Sets the value of the webmailSubject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailSubject(String value) {
        this.webmailSubject = value;
    }

    /**
     * Gets the value of the webmailBodyContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailBodyContent() {
        return webmailBodyContent;
    }

    /**
     * Sets the value of the webmailBodyContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailBodyContent(String value) {
        this.webmailBodyContent = value;
    }

    /**
     * Gets the value of the webmailTextType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWebmailTextType() {
        return webmailTextType;
    }

    /**
     * Sets the value of the webmailTextType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWebmailTextType(String value) {
        this.webmailTextType = value;
    }

    /**
     * Gets the value of the webmailAttach property.
     * 
     */
    public boolean isWebmailAttach() {
        return webmailAttach;
    }

    /**
     * Sets the value of the webmailAttach property.
     * 
     */
    public void setWebmailAttach(boolean value) {
        this.webmailAttach = value;
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

    /**
     * Gets the value of the attachmentFileName property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the attachmentFileName property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAttachmentFileName().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getAttachmentFileName() {
        if (attachmentFileName == null) {
            attachmentFileName = new ArrayList<String>();
        }
        return this.attachmentFileName;
    }

    /**
     * Gets the value of the attachmentFileNewName property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the attachmentFileNewName property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAttachmentFileNewName().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getAttachmentFileNewName() {
        if (attachmentFileNewName == null) {
            attachmentFileNewName = new ArrayList<String>();
        }
        return this.attachmentFileNewName;
    }

}
