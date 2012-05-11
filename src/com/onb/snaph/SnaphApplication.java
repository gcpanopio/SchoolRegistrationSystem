package com.onb.snaph;

import android.app.Application;
import android.graphics.Bitmap;

public class SnaphApplication extends Application{

	private Bitmap image;
	@Override
	public void onCreate() {
        super.onCreate();
	}
	
	public void setImage(Bitmap image){
		this.image = image;
	}
	
	public Bitmap getImage(){
		return this.image;
	}
}
