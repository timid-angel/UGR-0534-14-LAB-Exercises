package com.example.xmlcounterapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity

class MainActivity : ComponentActivity() {
    private var count = 0
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val counter: TextView = findViewById(R.id.counter)
        val incBtn: Button = findViewById(R.id.incBtn)
        val decBtn: Button = findViewById(R.id.decBtn)
        val resetBtn: Button = findViewById(R.id.resetBtn)
        counter.text = this.count.toString()

        incBtn.setOnClickListener {
            count++
            counter.text = count.toString()
        }

        decBtn.setOnClickListener {
            count--
            counter.text = count.toString()
        }

        resetBtn.setOnClickListener {
            count = 0
            counter.text = count.toString()
        }
    }
}
