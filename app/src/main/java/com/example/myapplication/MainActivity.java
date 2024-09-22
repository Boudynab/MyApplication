package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.widget.Button;

import javax.swing.*;
public class MainActivity extends AppCompatActivity {

    private Object JOptionPane;
Button eee;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

         eee=findViewById(R.id.button);
        eee.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intx=new Intent(MainActivity.this,MainActivity2.class);


            }
        });
    }
}