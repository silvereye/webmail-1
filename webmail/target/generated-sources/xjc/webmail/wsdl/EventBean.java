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
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for EventBean complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="EventBean"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="summary" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="location" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="calendar" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="color" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="starteventdate" type="{http://www.w3.org/2001/XMLSchema}dateTime"/&gt;
 *         &lt;element name="endeventdate" type="{http://www.w3.org/2001/XMLSchema}dateTime"/&gt;
 *         &lt;element name="starttime" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="endtime" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="description" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="clazz" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="freebusy" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="frequency" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="count" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="until" type="{http://www.w3.org/2001/XMLSchema}date"/&gt;
 *         &lt;element name="interval" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="allday" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="reminderdata" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="uid" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="monthlyinfo" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="repeatdatetimelist" type="{http://webmail.com/calendar}DateTimeList"/&gt;
 *         &lt;element name="oldguest" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="newguest" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="organizer" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="sequence" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="organizerstatus" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="recurrenceEventID" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="repeatStatus" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="exdateList" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "EventBean", namespace = "http://webmail.com/calendar", propOrder = {
    "summary",
    "location",
    "calendar",
    "color",
    "starteventdate",
    "endeventdate",
    "starttime",
    "endtime",
    "description",
    "clazz",
    "freebusy",
    "frequency",
    "count",
    "until",
    "interval",
    "allday",
    "reminderdata",
    "uid",
    "monthlyinfo",
    "repeatdatetimelist",
    "oldguest",
    "newguest",
    "organizer",
    "sequence",
    "organizerstatus",
    "recurrenceEventID",
    "repeatStatus",
    "exdateList"
})
public class EventBean {

    @XmlElement(required = true)
    protected String summary;
    @XmlElement(required = true)
    protected String location;
    @XmlElement(required = true)
    protected String calendar;
    @XmlElement(required = true)
    protected String color;
    @XmlElement(required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar starteventdate;
    @XmlElement(required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar endeventdate;
    @XmlElement(required = true)
    protected String starttime;
    @XmlElement(required = true)
    protected String endtime;
    @XmlElement(required = true)
    protected String description;
    @XmlElement(required = true)
    protected String clazz;
    @XmlElement(required = true)
    protected String freebusy;
    @XmlElement(required = true)
    protected String frequency;
    @XmlElement(required = true, type = Integer.class, nillable = true)
    protected Integer count;
    @XmlElement(required = true)
    @XmlSchemaType(name = "date")
    protected XMLGregorianCalendar until;
    protected int interval;
    @XmlElement(required = true)
    protected String allday;
    @XmlElement(required = true)
    protected String reminderdata;
    @XmlElement(required = true)
    protected String uid;
    @XmlElement(required = true)
    protected String monthlyinfo;
    @XmlElement(required = true)
    protected DateTimeList repeatdatetimelist;
    @XmlElement(required = true)
    protected String oldguest;
    @XmlElement(required = true)
    protected String newguest;
    @XmlElement(required = true)
    protected String organizer;
    protected int sequence;
    @XmlElement(required = true)
    protected String organizerstatus;
    @XmlElement(required = true)
    protected String recurrenceEventID;
    @XmlElement(required = true)
    protected String repeatStatus;
    @XmlElement(required = true)
    protected String exdateList;

    /**
     * Gets the value of the summary property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSummary() {
        return summary;
    }

    /**
     * Sets the value of the summary property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSummary(String value) {
        this.summary = value;
    }

    /**
     * Gets the value of the location property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocation() {
        return location;
    }

    /**
     * Sets the value of the location property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocation(String value) {
        this.location = value;
    }

    /**
     * Gets the value of the calendar property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCalendar() {
        return calendar;
    }

    /**
     * Sets the value of the calendar property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCalendar(String value) {
        this.calendar = value;
    }

    /**
     * Gets the value of the color property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getColor() {
        return color;
    }

    /**
     * Sets the value of the color property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setColor(String value) {
        this.color = value;
    }

    /**
     * Gets the value of the starteventdate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getStarteventdate() {
        return starteventdate;
    }

    /**
     * Sets the value of the starteventdate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setStarteventdate(XMLGregorianCalendar value) {
        this.starteventdate = value;
    }

    /**
     * Gets the value of the endeventdate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getEndeventdate() {
        return endeventdate;
    }

    /**
     * Sets the value of the endeventdate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setEndeventdate(XMLGregorianCalendar value) {
        this.endeventdate = value;
    }

    /**
     * Gets the value of the starttime property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStarttime() {
        return starttime;
    }

    /**
     * Sets the value of the starttime property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStarttime(String value) {
        this.starttime = value;
    }

    /**
     * Gets the value of the endtime property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEndtime() {
        return endtime;
    }

    /**
     * Sets the value of the endtime property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEndtime(String value) {
        this.endtime = value;
    }

    /**
     * Gets the value of the description property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the value of the description property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescription(String value) {
        this.description = value;
    }

    /**
     * Gets the value of the clazz property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getClazz() {
        return clazz;
    }

    /**
     * Sets the value of the clazz property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setClazz(String value) {
        this.clazz = value;
    }

    /**
     * Gets the value of the freebusy property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFreebusy() {
        return freebusy;
    }

    /**
     * Sets the value of the freebusy property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFreebusy(String value) {
        this.freebusy = value;
    }

    /**
     * Gets the value of the frequency property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFrequency() {
        return frequency;
    }

    /**
     * Sets the value of the frequency property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFrequency(String value) {
        this.frequency = value;
    }

    /**
     * Gets the value of the count property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCount() {
        return count;
    }

    /**
     * Sets the value of the count property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCount(Integer value) {
        this.count = value;
    }

    /**
     * Gets the value of the until property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getUntil() {
        return until;
    }

    /**
     * Sets the value of the until property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setUntil(XMLGregorianCalendar value) {
        this.until = value;
    }

    /**
     * Gets the value of the interval property.
     * 
     */
    public int getInterval() {
        return interval;
    }

    /**
     * Sets the value of the interval property.
     * 
     */
    public void setInterval(int value) {
        this.interval = value;
    }

    /**
     * Gets the value of the allday property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAllday() {
        return allday;
    }

    /**
     * Sets the value of the allday property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAllday(String value) {
        this.allday = value;
    }

    /**
     * Gets the value of the reminderdata property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getReminderdata() {
        return reminderdata;
    }

    /**
     * Sets the value of the reminderdata property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReminderdata(String value) {
        this.reminderdata = value;
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
     * Gets the value of the monthlyinfo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMonthlyinfo() {
        return monthlyinfo;
    }

    /**
     * Sets the value of the monthlyinfo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMonthlyinfo(String value) {
        this.monthlyinfo = value;
    }

    /**
     * Gets the value of the repeatdatetimelist property.
     * 
     * @return
     *     possible object is
     *     {@link DateTimeList }
     *     
     */
    public DateTimeList getRepeatdatetimelist() {
        return repeatdatetimelist;
    }

    /**
     * Sets the value of the repeatdatetimelist property.
     * 
     * @param value
     *     allowed object is
     *     {@link DateTimeList }
     *     
     */
    public void setRepeatdatetimelist(DateTimeList value) {
        this.repeatdatetimelist = value;
    }

    /**
     * Gets the value of the oldguest property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOldguest() {
        return oldguest;
    }

    /**
     * Sets the value of the oldguest property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOldguest(String value) {
        this.oldguest = value;
    }

    /**
     * Gets the value of the newguest property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNewguest() {
        return newguest;
    }

    /**
     * Sets the value of the newguest property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNewguest(String value) {
        this.newguest = value;
    }

    /**
     * Gets the value of the organizer property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrganizer() {
        return organizer;
    }

    /**
     * Sets the value of the organizer property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrganizer(String value) {
        this.organizer = value;
    }

    /**
     * Gets the value of the sequence property.
     * 
     */
    public int getSequence() {
        return sequence;
    }

    /**
     * Sets the value of the sequence property.
     * 
     */
    public void setSequence(int value) {
        this.sequence = value;
    }

    /**
     * Gets the value of the organizerstatus property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrganizerstatus() {
        return organizerstatus;
    }

    /**
     * Sets the value of the organizerstatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrganizerstatus(String value) {
        this.organizerstatus = value;
    }

    /**
     * Gets the value of the recurrenceEventID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRecurrenceEventID() {
        return recurrenceEventID;
    }

    /**
     * Sets the value of the recurrenceEventID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRecurrenceEventID(String value) {
        this.recurrenceEventID = value;
    }

    /**
     * Gets the value of the repeatStatus property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRepeatStatus() {
        return repeatStatus;
    }

    /**
     * Sets the value of the repeatStatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRepeatStatus(String value) {
        this.repeatStatus = value;
    }

    /**
     * Gets the value of the exdateList property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getExdateList() {
        return exdateList;
    }

    /**
     * Sets the value of the exdateList property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setExdateList(String value) {
        this.exdateList = value;
    }

}
