package com.greathiit.ytyy.mapper;

import com.greathiit.ytyy.entity.Usrcollege;
import java.util.List;

public interface UsrcollegeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table USR_COLLEGE
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    int deleteByPrimaryKey(Integer usCollegeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table USR_COLLEGE
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    int insert(Usrcollege record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table USR_COLLEGE
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    Usrcollege selectByPrimaryKey(Integer usCollegeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table USR_COLLEGE
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    List<Usrcollege> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table USR_COLLEGE
     *
     * @mbg.generated Fri Sep 25 13:21:03 CST 2020
     */
    int updateByPrimaryKey(Usrcollege record);
}