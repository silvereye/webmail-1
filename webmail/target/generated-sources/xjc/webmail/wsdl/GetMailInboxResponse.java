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
 *         &lt;element name="GetInboxByMailLimit" type="{http://webmail.com/Inbox}InboxListReturn" minOccurs="0"/&gt;
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
    "getInboxByMailLimit"
})
@XmlRootElement(name = "getMailInboxResponse", namespace = "http://webmail.com/Inbox")
public class GetMailInboxResponse {

    @XmlElement(name = "GetInboxByMailLimit", namespace = "http://webmail.com/Inbox")
    protected InboxListReturn getInboxByMailLimit;

    /**
     * Gets the value of the getInboxByMailLimit property.
     * 
     * @return
     *     possible object is
     *     {@link InboxListReturn }
     *     
     */
    public InboxListReturn getGetInboxByMailLimit() {
        return getInboxByMailLimit;
    }

    /**
     * Sets the value of the getInboxByMailLimit property.
     * 
     * @param value
     *     allowed object is
     *     {@link InboxListReturn }
     *     
     */
    public void setGetInboxByMailLimit(InboxListReturn value) {
        this.getInboxByMailLimit = value;
    }

}
