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
 * <p>Java class for InboxListReturnSearch complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="InboxListReturnSearch"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Success" type="{http://www.w3.org/2001/XMLSchema}boolean"/&gt;
 *         &lt;element name="SearchCount" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="InboxListReturnSearch" type="{http://webmail.com/Search}ArrayOfInboxMailSearch" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "InboxListReturnSearch", namespace = "http://webmail.com/Search", propOrder = {
    "success",
    "searchCount",
    "inboxListReturnSearch"
})
public class InboxListReturnSearch {

    @XmlElement(name = "Success")
    protected boolean success;
    @XmlElement(name = "SearchCount")
    protected int searchCount;
    @XmlElement(name = "InboxListReturnSearch")
    protected ArrayOfInboxMailSearch inboxListReturnSearch;

    /**
     * Gets the value of the success property.
     * 
     */
    public boolean isSuccess() {
        return success;
    }

    /**
     * Sets the value of the success property.
     * 
     */
    public void setSuccess(boolean value) {
        this.success = value;
    }

    /**
     * Gets the value of the searchCount property.
     * 
     */
    public int getSearchCount() {
        return searchCount;
    }

    /**
     * Sets the value of the searchCount property.
     * 
     */
    public void setSearchCount(int value) {
        this.searchCount = value;
    }

    /**
     * Gets the value of the inboxListReturnSearch property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfInboxMailSearch }
     *     
     */
    public ArrayOfInboxMailSearch getInboxListReturnSearch() {
        return inboxListReturnSearch;
    }

    /**
     * Sets the value of the inboxListReturnSearch property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfInboxMailSearch }
     *     
     */
    public void setInboxListReturnSearch(ArrayOfInboxMailSearch value) {
        this.inboxListReturnSearch = value;
    }

}
