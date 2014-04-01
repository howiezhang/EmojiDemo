package com.example.EmojiDemo;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;

public class MyActivity extends Activity
{
    /**
     * Called when the activity is first created.
     */

    private EmojiTextView emojiTextView;
    private EmojiEditText emojiEditText;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        emojiTextView = (EmojiTextView)findViewById(R.id.emojiTextView);
        emojiEditText = (EmojiEditText)findViewById(R.id.emojiEditText);
        emojiEditText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s)
            {
                String text = s.toString();
                emojiTextView.setText(text);
            }
        });
    }
}
