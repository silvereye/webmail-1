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
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for InboxListReturnQuickSearch complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="InboxListReturnQuickSearch"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="QuickSuccess" type="{http://www.w3.org/2001/XMLSchema}boolean"/&gt;
 *         &lt;element name="QuickCount" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="InboxListReturnQuickSearch" type="{http://webmail.com/Search}ArrayOfInboxMailQuickSearch" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "InboxListReturnQuickSearch", namespace = "http://webmail.com/Search", propOrder = {
    "quickSuccess",
    "quickCount",
    "inboxListReturnQuickSearch"
})
public class InboxListReturnQuickSearch {

    @XmlElement(name = "QuickSuccess")
    protected boolean quickSuccess;
    @XmlElement(name = "QuickCount")
    protected int quickCount;
    @XmlElement(name = "InboxListReturnQuickSearch")
    protected ArrayOfInboxMailQuickSearch inboxListReturnQuickSearch;

    /**
     * Gets the value of the quickSuccess property.
     * 
     */
    public boolean isQuickSuccess() {
        return quickSuccess;
    }

    /**
     * Sets the value of the quickSuccess property.
     * 
     */
    public void setQuickSuccess(boolean value) {
        this.quickSuccess = value;
    }

    /**
     * Gets the value of the quickCount property.
     * 
     */
    public int getQuickCount() {
        return quickCount;
    }

    /**
     * Sets the value of the quickCount property.
     * 
     */
    public void setQuickCount(int value) {
        this.quickCount = value;
    }

    /**
     * Gets the value of the inboxListReturnQuickSearch property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfInboxMailQuickSearch }
     *     
     */
    public ArrayOfInboxMailQuickSearch getInboxListReturnQuickSearch() {
        return inboxListReturnQuickSearch;
    }

    /**
     * Sets the value of the inboxListReturnQuickSearch property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfInboxMailQuickSearch }
     *     
     */
    public void setInboxListReturnQuickSearch(ArrayOfInboxMailQuickSearch value) {
        this.inboxListReturnQuickSearch = value;
    }

}
