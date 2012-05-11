package com.onb.snaph;

import java.io.FileNotFoundException;
import java.io.IOException;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.MediaStore.Images.Media;
import android.util.Log;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.TextView;

public class SnaphMainActivity extends Activity {
    
	protected static final String TAG = SnaphMainActivity.class.getSimpleName();
	protected static final int ACTIVITY_IMAGE_CAPTURE = 1000;
	private static final int ACTIVITY_FROM_GALLERY = 1001;
	TextView greetings;
	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        Button snapPhoto = (Button) findViewById(R.id.snap_photo);
        snapPhoto.getBackground().setAlpha(70);
    }
    
    public void onSnapButtonActivity(View view){
    	 PopupMenu popup = new PopupMenu(this, view);
    	 MenuInflater inflater = popup.getMenuInflater();
    	 inflater.inflate(R.menu.photo_menu, popup.getMenu());
    	 popup.show();
    	 
    	 popup.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
			
    		 public boolean onMenuItemClick(MenuItem item) {
    		     switch (item.getItemId()) {
    		         case R.id.snap_image:
    		        	 Log.d(TAG, "SNAP IMAGE");
    		        	 snapImage();
    		             return true;
    		         case R.id.from_gallery:
    		        	 Log.d(TAG, "FROM GALLERY");
    		        	 fromGallery();
    		             return true;
    		         default:
    		             return false;
    		     }
    		 }
		});
    }
    
    private void snapImage(){
    	Intent launchCamera = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
		startActivityForResult(launchCamera, ACTIVITY_IMAGE_CAPTURE);
    }
    
    private void fromGallery(){
    	Intent photoPickerIntent = new Intent(Intent.ACTION_GET_CONTENT);
    	photoPickerIntent.setType("image/*");
    	startActivityForResult(photoPickerIntent, ACTIVITY_FROM_GALLERY);
    }
    
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(requestCode == ACTIVITY_IMAGE_CAPTURE && resultCode == RESULT_OK) {
			Bitmap capturedImage = (Bitmap) data.getExtras().get("data");
			setSelectedImage(capturedImage);
		} else if(requestCode == ACTIVITY_FROM_GALLERY && resultCode == RESULT_OK) {
			Uri selectedImageUri = data.getData();
			Bitmap chosenImage = null;
	        try {
				chosenImage = Media.getBitmap(this.getContentResolver(), selectedImageUri);
				setSelectedImage(chosenImage);
	        } catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}   
    
    private void setSelectedImage(Bitmap image){
    	Log.d(TAG, "SELECTED IMAGE 1");
    	SnaphApplication snaph = (SnaphApplication) getApplication();
    	snaph.setImage(image);
    	
    	Intent launchUploadFormActivity = new Intent(this, UploadFormActivity.class);
    	startActivity(launchUploadFormActivity);
    }
}