package com.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.cy.entity.repaire;

@Mapper
public interface repaireDao {
	@Select("select * from repaire where id=#{id}")
	List<repaire> findRepairesById(String id);
	

}
