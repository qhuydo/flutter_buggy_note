package com.example.flutter_buggy_note

import android.content.ContentResolver
import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "vn.hcmus/flutter_buggy_note"
        ).setMethodCallHandler { call, result ->
            if ("drawableToUri" == call.method) {
                val resourceId = this@MainActivity.resources.getIdentifier(
                    call.arguments as String,
                    "drawable",
                    this@MainActivity.packageName
                )
                result.success(
                    resourceToUriString(
                        this@MainActivity.applicationContext,
                        resourceId
                    )
                )
            }
//            if ("getAlarmUri" == call.method) {
//                result.success(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_ALARM).toString())
//            }
        }
    }

    private fun resourceToUriString(context: Context, resId: Int): String? {
        return (ContentResolver.SCHEME_ANDROID_RESOURCE + "://"
                + context.resources.getResourcePackageName(resId)
                + "/"
                + context.resources.getResourceTypeName(resId)
                + "/"
                + context.resources.getResourceEntryName(resId))
    }
}
