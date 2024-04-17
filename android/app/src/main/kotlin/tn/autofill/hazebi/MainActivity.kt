package tn.autofill.HackYourWaste

import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory
class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("f18a4839-82df-4c2f-b035-cc744b452f9b") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}
