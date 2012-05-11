package com.onb.snaph;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class UploadFormActivity extends Activity{
	protected static final String TAG = UploadFormActivity.class.getSimpleName();
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	
        super.onCreate(savedInstanceState);
        setContentView(R.layout.upload_form);
        
        Button upload = (Button) findViewById(R.id.upload_photo);
        upload.getBackground().setAlpha(70);
        
        Log.d(TAG, "UPLOAD FORM!");
        Button cancelUpload = (Button) findViewById(R.id.cancel_upload);
        cancelUpload.getBackground().setAlpha(70);
        
        SnaphApplication snaph = (SnaphApplication) getApplication();
        
        ImageView image = (ImageView) findViewById(R.id.image);
        image.setImageBitmap(snaph.getImage());
    }
    
    public void onCancel(View view){
    	finish();
    }
}
