package com.access.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
//@Table(name="Product")
//@Component
public class Product1 {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private String p_id;
private String p_name;
private String p_desc;
private String p_price;
public String getP_id() {
	return p_id;
}
public void setP_id(String p_id) {
	this.p_id = p_id;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public String getP_desc() {
	return p_desc;
}
public void setP_desc(String p_desc) {
	this.p_desc = p_desc;
}
public String getP_price() {
	return p_price;
}
public void setP_price(String p_price) {
	this.p_price = p_price;
}

}
