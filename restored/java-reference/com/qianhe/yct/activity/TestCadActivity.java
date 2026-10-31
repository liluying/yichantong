package com.qianhe.yct.activity;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$GetContent;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AppCompatActivity;
import com.qianhe.yct.databinding.ActivityCadTestBinding;
import java.util.Arrays;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class TestCadActivity extends AppCompatActivity {
    private ActivityCadTestBinding binding;
    private ActivityResultLauncher cadEntityChooseLauncher;
    private ActivityResultLauncher importFileLauncher;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityCadTestBinding activityCadTestBindingInflate = ActivityCadTestBinding.inflate(getLayoutInflater());
        this.binding = activityCadTestBindingInflate;
        setContentView(activityCadTestBindingInflate.getRoot());
        setImportFileLauncher();
        setCadEntityChooseLauncher();
        this.binding.btn.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.TestCadActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.importFileLauncher.launch("*/*");
            }
        });
        System.gc();
    }

    private void setImportFileLauncher() {
        this.importFileLauncher = registerForActivityResult(new ActivityResultContracts$GetContent(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.TestCadActivity$$ExternalSyntheticLambda1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                TestCadActivity.m1502$r8$lambda$7UUfVYMXMHZgF1TjOAraul4X8(this.f$0, (Uri) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$7UUfVYMXMHZ-gF1TjOAraul4X-8, reason: not valid java name */
    public static /* synthetic */ void m1502$r8$lambda$7UUfVYMXMHZgF1TjOAraul4X8(TestCadActivity testCadActivity, Uri uri) {
        if (uri != null) {
            testCadActivity.loadCadFromUri(uri);
        } else {
            testCadActivity.getClass();
        }
    }

    private void setCadEntityChooseLauncher() {
        this.cadEntityChooseLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.TestCadActivity.1
            @Override // androidx.activity.result.ActivityResultCallback
            public void onActivityResult(ActivityResult activityResult) {
                Intent data;
                double[] doubleArrayExtra;
                if (-1 != activityResult.getResultCode() || (data = activityResult.getData()) == null || (doubleArrayExtra = data.getDoubleArrayExtra("cad_result_choose_point")) == null || doubleArrayExtra.length % 3 != 0) {
                    return;
                }
                String string = Arrays.toString(doubleArrayExtra);
                TestCadActivity.class.getSimpleName();
                String str = "已选取：" + string;
            }
        });
    }

    private void loadCadFromUri(Uri uri) {
        startCadEntityChooseActivity(getFilePathByUri(getApplicationContext(), uri));
    }

    private void startCadEntityChooseActivity(String str) {
        Intent intent = new Intent(this, (Class<?>) CADEntityChooseActivity.class);
        intent.putExtra("cad_file_path", str);
        intent.putExtra("cad_choose_max_count", 2);
        this.cadEntityChooseLauncher.launch(intent);
    }

    public String getFilePathByUri(Context context, Uri uri) {
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        "content".equals(uri.getScheme());
        Uri uri2 = null;
        if ("content".equals(uri.getScheme())) {
            if (DocumentsContract.isDocumentUri(context, uri)) {
                if (isExternalStorageDocument(uri)) {
                    String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                    if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                        return Environment.getExternalStorageDirectory() + InternalZipConstants.ZIP_FILE_SEPARATOR + strArrSplit[1];
                    }
                } else {
                    if (isDownloadsDocument(uri)) {
                        return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                    }
                    if (isMediaDocument(uri)) {
                        String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                        String str = strArrSplit2[0];
                        if ("image".equals(str)) {
                            uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                        } else if ("video".equals(str)) {
                            uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                        } else if ("audio".equals(str)) {
                            uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                        }
                        return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                    }
                }
            } else {
                String[] strArrSplit3 = uri.getPath().split(":");
                if (strArrSplit3 != null && strArrSplit3.length > 0) {
                    return strArrSplit3[strArrSplit3.length - 1];
                }
            }
        }
        return null;
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                        throw th;
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
