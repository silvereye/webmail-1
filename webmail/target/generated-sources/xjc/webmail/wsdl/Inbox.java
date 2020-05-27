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
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Inbox complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Inbox"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ToId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="FromId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="CCId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="BCCId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="ReplyId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Uid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="MsgNo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Subject" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Attachment" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="AttachmentName" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element name="AttachmentSize" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element name="SendDtae" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="SendDtaeTitle" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="MailFlage" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="MailSeen" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="MailDraft" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="MailContent" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="MailContentOtr" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="MailTag" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="MailPriority" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Inbox", namespace = "http://webmail.com/Inbox", propOrder = {
    "toId",
    "fromId",
    "ccId",
    "bccId",
    "replyId",
    "uid",
    "msgNo",
    "subject",
    "attachment",
    "attachmentName",
    "attachmentSize",
    "sendDtae",
    "sendDtaeTitle",
    "mailFlage",
    "mailSeen",
    "mailDraft",
    "mailContent",
    "mailContentOtr",
    "mailTag",
    "mailPriority"
})
public class Inbox {

    @XmlElement(name = "ToId")
    protected String toId;
    @XmlElement(name = "FromId")
    protected String fromId;
    @XmlElement(name = "CCId")
    protected String ccId;
    @XmlElement(name = "BCCId")
    protected String bccId;
    @XmlElement(name = "ReplyId")
    protected String replyId;
    @XmlElement(name = "Uid")
    protected String uid;
    @XmlElement(name = "MsgNo")
    protected String msgNo;
    @XmlElement(name = "Subject")
    protected String subject;
    @XmlElement(name = "Attachment")
    protected String attachment;
    @XmlElement(name = "AttachmentName")
    protected List<String> attachmentName;
    @XmlElement(name = "AttachmentSize")
    protected List<String> attachmentSize;
    @XmlElement(name = "SendDtae")
    protected String sendDtae;
    @XmlElement(name = "SendDtaeTitle")
    protected String sendDtaeTitle;
    @XmlElement(name = "MailFlage")
    protected Boolean mailFlage;
    @XmlElement(name = "MailSeen")
    protected Boolean mailSeen;
    @XmlElement(name = "MailDraft")
    protected Boolean mailDraft;
    @XmlElement(name = "MailContent")
    protected String mailContent;
    @XmlElement(name = "MailContentOtr")
    protected String mailContentOtr;
    @XmlElement(name = "MailTag")
    protected String mailTag;
    @XmlElement(name = "MailPriority")
    protected String mailPriority;

    /**
     * Gets the value of the toId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getToId() {
        return toId;
    }

    /**
     * Sets the value of the toId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setToId(String value) {
        this.toId = value;
    }

    /**
     * Gets the value of the fromId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFromId() {
        return fromId;
    }

    /**
     * Sets the value of the fromId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFromId(String value) {
        this.fromId = value;
    }

    /**
     * Gets the value of the ccId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCCId() {
        return ccId;
    }

    /**
     * Sets the value of the ccId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCCId(String value) {
        this.ccId = value;
    }

    /**
     * Gets the value of the bccId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getBCCId() {
        return bccId;
    }

    /**
     * Sets the value of the bccId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setBCCId(String value) {
        this.bccId = value;
    }

    /**
     * Gets the value of the replyId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getReplyId() {
        return replyId;
    }

    /**
     * Sets the value of the replyId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReplyId(String value) {
        this.replyId = value;
    }

    /**
     * Gets the value of the uid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUid() {
        return uid;
    }

    /**
     * Sets the value of the uid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUid(String value) {
        this.uid = value;
    }

    /**
     * Gets the value of the msgNo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMsgNo() {
        return msgNo;
    }

    /**
     * Sets the value of the msgNo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMsgNo(String value) {
        this.msgNo = value;
    }

    /**
     * Gets the value of the subject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSubject() {
        return subject;
    }

    /**
     * Sets the value of the subject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSubject(String value) {
        this.subject = value;
    }

    /**
     * Gets the value of the attachment property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAttachment() {
        return attachment;
    }

    /**
     * Sets the value of the attachment property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAttachment(String value) {
        this.attachment = value;
    }

    /**
     * Gets the value of the attachmentName property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the attachmentName property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAttachmentName().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getAttachmentName() {
        if (attachmentName == null) {
            attachmentName = new ArrayList<String>();
        }
        return this.attachmentName;
    }

    /**
     * Gets the value of the attachmentSize property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the attachmentSize property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAttachmentSize().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getAttachmentSize() {
        if (attachmentSize == null) {
            attachmentSize = new ArrayList<String>();
        }
        return this.attachmentSize;
    }

    /**
     * Gets the value of the sendDtae property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSendDtae() {
        return sendDtae;
    }

    /**
     * Sets the value of the sendDtae property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSendDtae(String value) {
        this.sendDtae = value;
    }

    /**
     * Gets the value of the sendDtaeTitle property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSendDtaeTitle() {
        return sendDtaeTitle;
    }

    /**
     * Sets the value of the sendDtaeTitle property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSendDtaeTitle(String value) {
        this.sendDtaeTitle = value;
    }

    /**
     * Gets the value of the mailFlage property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isMailFlage() {
        return mailFlage;
    }

    /**
     * Sets the value of the mailFlage property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setMailFlage(Boolean value) {
        this.mailFlage = value;
    }

    /**
     * Gets the value of the mailSeen property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isMailSeen() {
        return mailSeen;
    }

    /**
     * Sets the value of the mailSeen property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setMailSeen(Boolean value) {
        this.mailSeen = value;
    }

    /**
     * Gets the value of the mailDraft property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isMailDraft() {
        return mailDraft;
    }

    /**
     * Sets the value of the mailDraft property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setMailDraft(Boolean value) {
        this.mailDraft = value;
    }

    /**
     * Gets the value of the mailContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailContent() {
        return mailContent;
    }

    /**
     * Sets the value of the mailContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailContent(String value) {
        this.mailContent = value;
    }

    /**
     * Gets the value of the mailContentOtr property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailContentOtr() {
        return mailContentOtr;
    }

    /**
     * Sets the value of the mailContentOtr property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailContentOtr(String value) {
        this.mailContentOtr = value;
    }

    /**
     * Gets the value of the mailTag property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailTag() {
        return mailTag;
    }

    /**
     * Sets the value of the mailTag property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailTag(String value) {
        this.mailTag = value;
    }

    /**
     * Gets the value of the mailPriority property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailPriority() {
        return mailPriority;
    }

    /**
     * Sets the value of the mailPriority property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailPriority(String value) {
        this.mailPriority = value;
    }

}
