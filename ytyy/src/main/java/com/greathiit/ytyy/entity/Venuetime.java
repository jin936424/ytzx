package com.greathiit.ytyy.entity;

import java.util.Date;

public class Venuetime {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column VENUE_TIME.VTIME_ID
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    private Integer vtimeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column VENUE_TIME.VTIME_OPEN_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    private Date vtimeOpenTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column VENUE_TIME.VTIME_CLOSE_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    private Date vtimeCloseTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column VENUE_TIME.VTIME_ID
     *
     * @return the value of VENUE_TIME.VTIME_ID
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public Integer getVtimeId() {
        return vtimeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column VENUE_TIME.VTIME_ID
     *
     * @param vtimeId the value for VENUE_TIME.VTIME_ID
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public void setVtimeId(Integer vtimeId) {
        this.vtimeId = vtimeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column VENUE_TIME.VTIME_OPEN_TIME
     *
     * @return the value of VENUE_TIME.VTIME_OPEN_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public Date getVtimeOpenTime() {
        return vtimeOpenTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column VENUE_TIME.VTIME_OPEN_TIME
     *
     * @param vtimeOpenTime the value for VENUE_TIME.VTIME_OPEN_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public void setVtimeOpenTime(Date vtimeOpenTime) {
        this.vtimeOpenTime = vtimeOpenTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column VENUE_TIME.VTIME_CLOSE_TIME
     *
     * @return the value of VENUE_TIME.VTIME_CLOSE_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public Date getVtimeCloseTime() {
        return vtimeCloseTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column VENUE_TIME.VTIME_CLOSE_TIME
     *
     * @param vtimeCloseTime the value for VENUE_TIME.VTIME_CLOSE_TIME
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    public void setVtimeCloseTime(Date vtimeCloseTime) {
        this.vtimeCloseTime = vtimeCloseTime;
    }
}