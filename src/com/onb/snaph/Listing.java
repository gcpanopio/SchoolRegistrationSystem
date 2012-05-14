package com.onb.snaph;

import java.math.BigDecimal;

import android.graphics.Bitmap;

public class Listing {
	private String name;
	private String description;
	private BigDecimal price;
	private Bitmap image;
	
	public Listing(String name, String description, BigDecimal price, Bitmap image) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Bitmap getImage() {
		return image;
	}

	public void setImage(Bitmap image) {
		this.image = image;
	}
	
}
