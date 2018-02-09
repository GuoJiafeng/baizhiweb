package com.baizhi.entity;

import java.io.Serializable;

public class BaiZhiOrder implements Serializable{
	private String id;
	private String userid;
	private String type;
	private String number;
	private String demand;
	private Double price;
	private String description;

	public String getDescription() {
		return description;
	}
	public BaiZhiOrder(String type,String demand,String number){
		this.type=type;
		this.demand=demand;
		this.number=number;
	}
	public BaiZhiOrder(){}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDemand() {
		return demand;
	}
	public void setDemand(String demand) {
		this.demand = demand;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
}
