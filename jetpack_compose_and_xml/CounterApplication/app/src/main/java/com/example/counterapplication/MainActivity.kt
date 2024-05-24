package com.example.counterapplication

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.foundation.layout.Row
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.counterapplication.ui.theme.CounterApplicationTheme
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material3.FilledTonalButton
import androidx.compose.ui.Alignment
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            CounterApplicationTheme {
                Surface (modifier = Modifier.fillMaxSize()) {
                    Column(verticalArrangement = Arrangement.SpaceBetween, horizontalAlignment = Alignment.CenterHorizontally){
                        Header()
                        CounterApp()
                        Footer()
                    }
                }
            }
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }
    Column (horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                "$count",
                modifier = Modifier.padding(all = 8.dp),
                color = MaterialTheme.colorScheme.secondary,
                style = TextStyle(fontWeight = FontWeight.Bold, fontSize = 34.sp),
            )
            Spacer(modifier = Modifier.height(10.dp))
            
            Row {
                FilledTonalButton(onClick = {count++}) {
                    Text("+", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium)
                }
                Spacer(modifier = Modifier.width(10.dp))
                FilledTonalButton(onClick = { count-- }) {
                    Text(
                        "-",
                        color = MaterialTheme.colorScheme.primary,
                        style = MaterialTheme.typography.titleMedium
                    )
                }
            }

            FilledTonalButton(onClick = { count = 0 }) {
                Text("Reset Count", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium)
            }
    }
}

@Composable
fun Header() {
    Text(text ="Counter Application", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleLarge, modifier = Modifier.padding(40.dp))
}

@Composable
fun Footer() {
    Text(text = "2024", style = MaterialTheme.typography.bodyMedium, modifier = Modifier.padding(10.dp))
}