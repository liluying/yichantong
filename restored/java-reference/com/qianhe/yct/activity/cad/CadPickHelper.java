package com.qianhe.yct.activity.cad;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$GetContent;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.Fragment;
import com.leon.lfilepickerlibrary.LFilePicker;
import com.leon.lfilepickerlibrary.utils.Constant;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class CadPickHelper {
    private final Context appContext;
    private final ActivityResultLauncher cadEntityChooseLauncher;
    private final Callback callback;
    private final Activity hostActivity;
    private final ActivityResultLauncher importFileLauncher;
    private final ActivityResultLauncher lFilePickerLauncher;
    private String pendingCadPath;
    private double[] pendingInitialPoints;
    private int pendingMaxCount;
    private final Context uiContext;
    private final UiExecutor uiExecutor;

    /* JADX INFO: Access modifiers changed from: private */
    interface UiExecutor {
        void runOnUiThread(Runnable runnable);
    }

    public interface Callback {
        void onFileLoadFailed();

        void onPickCancelled();

        void onPickResult(String str, double[] dArr);

        /* renamed from: com.qianhe.yct.activity.cad.CadPickHelper$Callback$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onPickCancelled(Callback callback) {
            }

            public static void $default$onFileLoadFailed(Callback callback) {
            }
        }
    }

    public CadPickHelper(final Fragment fragment, Callback callback) {
        this(fragment, fragment.requireActivity(), fragment.requireContext(), fragment.requireContext(), callback, new UiExecutor() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.activity.cad.CadPickHelper.UiExecutor
            public final void runOnUiThread(Runnable runnable) {
                fragment.requireActivity().runOnUiThread(runnable);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CadPickHelper(final ComponentActivity componentActivity, Callback callback) {
        this(componentActivity, componentActivity, componentActivity, componentActivity, callback, new UiExecutor() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda1
            @Override // com.qianhe.yct.activity.cad.CadPickHelper.UiExecutor
            public final void runOnUiThread(Runnable runnable) {
                componentActivity.runOnUiThread(runnable);
            }
        });
        Objects.requireNonNull(componentActivity);
    }

    private CadPickHelper(ActivityResultCaller activityResultCaller, Activity activity, Context context, Context context2, final Callback callback, UiExecutor uiExecutor) {
        this.pendingMaxCount = 1;
        this.hostActivity = activity;
        this.appContext = context.getApplicationContext();
        this.uiContext = context2;
        this.callback = callback;
        this.uiExecutor = uiExecutor;
        this.importFileLauncher = activityResultCaller.registerForActivityResult(new ActivityResultContracts$GetContent(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CadPickHelper.$r8$lambda$aKGy8QK4q2RVrmF594YFU3tqRzI(this.f$0, (Uri) obj);
            }
        });
        this.lFilePickerLauncher = activityResultCaller.registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda3
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CadPickHelper.$r8$lambda$VWMimKOh4MbCvCajroeHCt3JK6I(this.f$0, callback, (ActivityResult) obj);
            }
        });
        this.cadEntityChooseLauncher = activityResultCaller.registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda4
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CadPickHelper.m1574$r8$lambda$0qYJjEdh5dFz2zr44rYLG3NgaE(this.f$0, callback, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$aKGy8QK4q2RVrmF594YFU3tqRzI(CadPickHelper cadPickHelper, Uri uri) {
        if (uri != null) {
            cadPickHelper.loadCadFromUri(uri, cadPickHelper.pendingMaxCount);
        } else {
            cadPickHelper.getClass();
        }
    }

    public static /* synthetic */ void $r8$lambda$VWMimKOh4MbCvCajroeHCt3JK6I(CadPickHelper cadPickHelper, Callback callback, ActivityResult activityResult) {
        cadPickHelper.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            callback.onPickCancelled();
            return;
        }
        ArrayList<String> stringArrayListExtra = activityResult.getData().getStringArrayListExtra(Constant.RESULT_INFO);
        if (stringArrayListExtra != null && !stringArrayListExtra.isEmpty() && !TextUtils.isEmpty(stringArrayListExtra.get(0))) {
            cadPickHelper.openCadPick(stringArrayListExtra.get(0), cadPickHelper.pendingMaxCount, cadPickHelper.pendingInitialPoints);
        } else {
            callback.onPickCancelled();
        }
    }

    /* renamed from: $r8$lambda$0q-YJjEdh5dFz2zr44rYLG3NgaE, reason: not valid java name */
    public static /* synthetic */ void m1574$r8$lambda$0qYJjEdh5dFz2zr44rYLG3NgaE(CadPickHelper cadPickHelper, Callback callback, ActivityResult activityResult) {
        cadPickHelper.getClass();
        if (activityResult.getResultCode() != -1) {
            callback.onPickCancelled();
            return;
        }
        double[] pickResult = CadEntityChooseContract.parsePickResult(activityResult.getData());
        if (pickResult != null && !TextUtils.isEmpty(cadPickHelper.pendingCadPath)) {
            callback.onPickResult(cadPickHelper.pendingCadPath, pickResult);
        } else {
            callback.onPickCancelled();
        }
    }

    public void pickFromFile(int i) {
        pickFromFile(null, i, null);
    }

    public void pickFromFile(String str, int i, double[] dArr) {
        this.pendingInitialPoints = dArr;
        if (!TextUtils.isEmpty(str)) {
            openCadPick(str, i, dArr);
            return;
        }
        this.pendingMaxCount = i;
        if (YCTApplication.getInstance().isAT80orAT85()) {
            startLFilePicker();
        } else {
            this.importFileLauncher.launch("*/*");
        }
    }

    private void startLFilePicker() {
        this.lFilePickerLauncher.launch(new LFilePicker().withActivity(this.hostActivity).withTitle(this.uiContext.getString(R$string.file_selection)).withMutilyMode(false).withMaxNum(this.pendingMaxCount).withNotFoundBooks(this.uiContext.getString(R$string.select_at_least_one_file)).withChooseMode(true).withFileFilter(new String[]{"dwg", "dxf"}).createIntent());
    }

    private void openCadPick(String str, int i, double[] dArr) {
        this.pendingCadPath = str;
        this.pendingInitialPoints = dArr;
        this.cadEntityChooseLauncher.launch(CadEntityChooseIntent.create(this.uiContext, str, i, dArr));
    }

    private void loadCadFromUri(final Uri uri, final int i) {
        String filePathByUri = FileUtil.getFilePathByUri(this.appContext, uri);
        if (!TextUtils.isEmpty(filePathByUri) && new File(filePathByUri).exists()) {
            openCadPick(filePathByUri, i, this.pendingInitialPoints);
        } else {
            new Thread(new Runnable() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    CadPickHelper.$r8$lambda$x9lnhgN7JHfhRaHiKFLBdZkqyDo(this.f$0, uri, i);
                }
            }, "cad-pick-copy").start();
        }
    }

    public static /* synthetic */ void $r8$lambda$x9lnhgN7JHfhRaHiKFLBdZkqyDo(final CadPickHelper cadPickHelper, Uri uri, final int i) throws IOException {
        final String strCopyUriToCache = cadPickHelper.copyUriToCache(uri);
        cadPickHelper.uiExecutor.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.cad.CadPickHelper$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CadPickHelper.$r8$lambda$iHwG9Y4m8XHlgWIWNcsNGCaRPYk(this.f$0, strCopyUriToCache, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$iHwG9Y4m8XHlgWIWNcsNGCaRPYk(CadPickHelper cadPickHelper, String str, int i) {
        if (str != null) {
            cadPickHelper.openCadPick(str, i, cadPickHelper.pendingInitialPoints);
        } else {
            cadPickHelper.callback.onFileLoadFailed();
        }
    }

    private String copyUriToCache(Uri uri) throws IOException {
        String strQueryDisplayName = queryDisplayName(uri);
        String str = "dwg";
        if (!TextUtils.isEmpty(strQueryDisplayName)) {
            String lowerCase = strQueryDisplayName.toLowerCase(Locale.ROOT);
            if (lowerCase.endsWith(".dxf")) {
                str = "dxf";
            } else {
                lowerCase.endsWith(".dwg");
            }
        }
        File file = new File(this.appContext.getCacheDir(), "cad_pick");
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        File file2 = new File(file, "cad_pick_" + System.currentTimeMillis() + "." + str);
        try {
            InputStream inputStreamOpenInputStream = this.appContext.getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                if (inputStreamOpenInputStream != null) {
                    try {
                        byte[] bArr = new byte[65536];
                        while (true) {
                            int i = inputStreamOpenInputStream.read(bArr);
                            if (i > 0) {
                                fileOutputStream.write(bArr, 0, i);
                            } else {
                                fileOutputStream.flush();
                                String absolutePath = file2.getAbsolutePath();
                                fileOutputStream.close();
                                inputStreamOpenInputStream.close();
                                return absolutePath;
                            }
                        }
                    } finally {
                    }
                } else {
                    fileOutputStream.close();
                    if (inputStreamOpenInputStream == null) {
                        return null;
                    }
                    inputStreamOpenInputStream.close();
                    return null;
                }
            } finally {
            }
        } catch (Exception unused) {
            if (file2.exists()) {
                file2.delete();
            }
            return null;
        }
    }

    private String queryDisplayName(Uri uri) {
        int columnIndex;
        try {
            Cursor cursorQuery = this.appContext.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) >= 0) {
                        String string = cursorQuery.getString(columnIndex);
                        cursorQuery.close();
                        return string;
                    }
                } finally {
                }
            }
            if (cursorQuery == null) {
                return null;
            }
            cursorQuery.close();
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
