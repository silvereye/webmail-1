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
 *         &lt;element name="GetVCFLdapDirByParentFile" type="{http://webmail.com/LdapAttribute}VCFLdapDirListReturn" minOccurs="0"/&gt;
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
    "getVCFLdapDirByParentFile"
})
@XmlRootElement(name = "getVCFLdapDirResponse", namespace = "http://webmail.com/LdapAttribute")
public class GetVCFLdapDirResponse {

    @XmlElement(name = "GetVCFLdapDirByParentFile", namespace = "http://webmail.com/LdapAttribute")
    protected VCFLdapDirListReturn getVCFLdapDirByParentFile;

    /**
     * Gets the value of the getVCFLdapDirByParentFile property.
     * 
     * @return
     *     possible object is
     *     {@link VCFLdapDirListReturn }
     *     
     */
    public VCFLdapDirListReturn getGetVCFLdapDirByParentFile() {
        return getVCFLdapDirByParentFile;
    }

    /**
     * Sets the value of the getVCFLdapDirByParentFile property.
     * 
     * @param value
     *     allowed object is
     *     {@link VCFLdapDirListReturn }
     *     
     */
    public void setGetVCFLdapDirByParentFile(VCFLdapDirListReturn value) {
        this.getVCFLdapDirByParentFile = value;
    }

}
