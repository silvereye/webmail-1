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
 *         &lt;element name="renameFileRes" type="{http://edms.com/documentModule}renameFileRes"/&gt;
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
    "renameFileRes"
})
@XmlRootElement(name = "renameFileResponse")
public class RenameFileResponse {

    @XmlElement(required = true)
    protected RenameFileRes renameFileRes;

    /**
     * Gets the value of the renameFileRes property.
     * 
     * @return
     *     possible object is
     *     {@link RenameFileRes }
     *     
     */
    public RenameFileRes getRenameFileRes() {
        return renameFileRes;
    }

    /**
     * Sets the value of the renameFileRes property.
     * 
     * @param value
     *     allowed object is
     *     {@link RenameFileRes }
     *     
     */
    public void setRenameFileRes(RenameFileRes value) {
        this.renameFileRes = value;
    }

}
