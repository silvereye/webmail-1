//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.7 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.05.13 at 11:39:55 AM IST 
//


package webmail.wsdlcal;

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
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="eventList" type="{http://webmail.com/calendar}eventArray"/>
 *         &lt;element name="calendarname" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="calendarcolor" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "eventList",
    "calendarname",
    "calendarcolor"
})
@XmlRootElement(name = "getFilterEventsResponse")
public class GetFilterEventsResponse {

    @XmlElement(required = true)
    protected EventArray eventList;
    @XmlElement(required = true)
    protected String calendarname;
    @XmlElement(required = true)
    protected String calendarcolor;

    /**
     * Gets the value of the eventList property.
     * 
     * @return
     *     possible object is
     *     {@link EventArray }
     *     
     */
    public EventArray getEventList() {
        return eventList;
    }

    /**
     * Sets the value of the eventList property.
     * 
     * @param value
     *     allowed object is
     *     {@link EventArray }
     *     
     */
    public void setEventList(EventArray value) {
        this.eventList = value;
    }

    /**
     * Gets the value of the calendarname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalendarname() {
        return calendarname;
    }

    /**
     * Sets the value of the calendarname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalendarname(String value) {
        this.calendarname = value;
    }

    /**
     * Gets the value of the calendarcolor property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalendarcolor() {
        return calendarcolor;
    }

    /**
     * Sets the value of the calendarcolor property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalendarcolor(String value) {
        this.calendarcolor = value;
    }

}
