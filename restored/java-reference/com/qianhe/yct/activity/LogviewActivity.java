package com.qianhe.yct.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.utils.AESCrypto;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.LogviewActivity;
import com.qianhe.yct.databinding.ActivityLogviewBinding;
import com.qianhe.yct.utils.ScreenOrientationHelper;
import com.qianhe.yct.utils.ThemeModeManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LogviewActivity extends AppCompatActivity {
    private ActivityLogviewBinding binding;
    private volatile int loadToken;
    private LogAdapter logAdapter;
    private List<String> mData;

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) LogviewActivity.class);
        intent.putExtra("extra_log_path", str);
        context.startActivity(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setRequestedOrientation(4);
        ActivityLogviewBinding activityLogviewBindingInflate = ActivityLogviewBinding.inflate(getLayoutInflater());
        this.binding = activityLogviewBindingInflate;
        setContentView(activityLogviewBindingInflate.getRoot());
        ThemeModeManager.applySystemBars(this);
        ScreenOrientationHelper.applyTabletNavigationBar(this);
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
        ArrayList arrayList = new ArrayList();
        this.mData = arrayList;
        LogAdapter logAdapter = new LogAdapter(arrayList);
        this.logAdapter = logAdapter;
        this.binding.rcv.setAdapter(logAdapter);
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.LogviewActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.finish();
            }
        });
        this.binding.topBar.tvTitle.setSingleLine(true);
        this.binding.topBar.tvTitle.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        this.binding.btn.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.LogviewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!LogviewActivity.this.binding.btn.isSelected()) {
                    LogviewActivity.this.binding.btn.setText("滚到顶部");
                    if (LogviewActivity.this.logAdapter.getItemCount() > 0) {
                        LogviewActivity.this.binding.rcv.scrollToPosition(LogviewActivity.this.logAdapter.getItemCount() - 1);
                    }
                } else {
                    LogviewActivity.this.binding.btn.setText("滚到底部");
                    LogviewActivity.this.binding.rcv.scrollToPosition(0);
                }
                LogviewActivity.this.binding.btn.setSelected(!LogviewActivity.this.binding.btn.isSelected());
            }
        });
        loadLog(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        loadLog(intent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.loadToken++;
        super.onDestroy();
    }

    private void loadLog(Intent intent) {
        final int i = this.loadToken + 1;
        this.loadToken = i;
        final String strResolveLogPath = resolveLogPath(intent);
        updateTitle(strResolveLogPath);
        this.logAdapter.clear();
        this.binding.progress.setVisibility(0);
        new Thread(new Runnable() { // from class: com.qianhe.yct.activity.LogviewActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                LogviewActivity.$r8$lambda$L1kEdXSRftURii5K3Ky_nV_J8ek(this.f$0, strResolveLogPath, i);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$L1kEdXSRftURii5K3Ky_nV_J8ek(final LogviewActivity logviewActivity, String str, final int i) throws IOException {
        logviewActivity.readTextFromSDCard(str, i);
        logviewActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.LogviewActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LogviewActivity.$r8$lambda$Y6qJYBI6P62g3d9IykcpSkF5Wyo(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Y6qJYBI6P62g3d9IykcpSkF5Wyo(LogviewActivity logviewActivity, int i) {
        if (logviewActivity.isDestroyed() || i != logviewActivity.loadToken) {
            return;
        }
        logviewActivity.binding.progress.setVisibility(8);
    }

    private String resolveLogPath(Intent intent) {
        String stringExtra = intent != null ? intent.getStringExtra("extra_log_path") : null;
        return TextUtils.isEmpty(stringExtra) ? LogToFile.getLatestLogPath() : stringExtra;
    }

    private void updateTitle(String str) {
        String string = getString(R$string.log_list);
        if (!TextUtils.isEmpty(str)) {
            String name = new File(str).getName();
            if (!TextUtils.isEmpty(name)) {
                string = name;
            }
        }
        this.binding.topBar.tvTitle.setText(string);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        if (r6.isEmpty() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        appendOnUi(r7, r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readTextFromSDCard(java.lang.String r6, int r7) throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            java.lang.String r1 = "日志文件不存在!"
            if (r0 == 0) goto Ld
            r5.appendOnUi(r7, r1)
            return
        Ld:
            java.io.File r0 = new java.io.File
            r0.<init>(r6)
            boolean r6 = r0.exists()
            if (r6 != 0) goto L1c
            r5.appendOnUi(r7, r1)
            return
        L1c:
            java.util.ArrayList r6 = new java.util.ArrayList
            r1 = 80
            r6.<init>(r1)
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L42
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L42
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.io.IOException -> L42
            r4.<init>(r0)     // Catch: java.io.IOException -> L42
            java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.io.IOException -> L42
            r3.<init>(r4, r0)     // Catch: java.io.IOException -> L42
            r2.<init>(r3)     // Catch: java.io.IOException -> L42
        L34:
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L5f
            int r3 = r5.loadToken     // Catch: java.lang.Throwable -> L5d
            if (r7 == r3) goto L44
        L3e:
            r2.close()     // Catch: java.io.IOException -> L42
            return
        L42:
            r6 = move-exception
            goto L72
        L44:
            java.lang.String r0 = decryptLineIfNeeded(r0)     // Catch: java.lang.Throwable -> L5d
            r6.add(r0)     // Catch: java.lang.Throwable -> L5d
            int r0 = r6.size()     // Catch: java.lang.Throwable -> L5d
            if (r0 < r1) goto L34
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L5d
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L5d
            r5.appendOnUi(r7, r0)     // Catch: java.lang.Throwable -> L5d
            r6.clear()     // Catch: java.lang.Throwable -> L5d
            goto L34
        L5d:
            r6 = move-exception
            goto L69
        L5f:
            boolean r0 = r6.isEmpty()     // Catch: java.lang.Throwable -> L5d
            if (r0 != 0) goto L3e
            r5.appendOnUi(r7, r6)     // Catch: java.lang.Throwable -> L5d
            goto L3e
        L69:
            r2.close()     // Catch: java.lang.Throwable -> L6d
            goto L71
        L6d:
            r0 = move-exception
            r6.addSuppressed(r0)     // Catch: java.io.IOException -> L42
        L71:
            throw r6     // Catch: java.io.IOException -> L42
        L72:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "日志文件读取错误: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            com.qianhe.baselib.utils.LogToFile.e(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r1)
            java.lang.String r6 = r6.getMessage()
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r5.appendOnUi(r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.LogviewActivity.readTextFromSDCard(java.lang.String, int):void");
    }

    private static String decryptLineIfNeeded(String str) {
        if (!TextUtils.isEmpty(str) && AESCrypto.isEncrypted(str)) {
            try {
                String strDecrypt = AESCrypto.decrypt(str);
                if (!TextUtils.isEmpty(strDecrypt)) {
                    return strDecrypt;
                }
            } catch (Exception e) {
                LogToFile.e("日志解密失败：" + e);
            }
        }
        return str;
    }

    private void appendOnUi(int i, String str) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(str);
        appendOnUi(i, arrayList);
    }

    private void appendOnUi(final int i, final List<String> list) {
        runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.LogviewActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LogviewActivity.$r8$lambda$HVkU5KaKztleOfrRl8XBkcHk2pc(this.f$0, i, list);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$HVkU5KaKztleOfrRl8XBkcHk2pc(LogviewActivity logviewActivity, int i, List list) {
        if (logviewActivity.isDestroyed() || i != logviewActivity.loadToken) {
            return;
        }
        logviewActivity.logAdapter.appendData(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LogAdapter extends RecyclerView.Adapter {
        private final List<String> mList;

        public LogAdapter(List<String> list) {
            this.mList = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            final MyViewHolder myViewHolder = new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_log, viewGroup, false));
            myViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.activity.LogviewActivity$LogAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return LogviewActivity.LogAdapter.$r8$lambda$brD9S6YLrqBFbbtzWgo2bpb29pI(this.f$0, myViewHolder, view);
                }
            });
            return myViewHolder;
        }

        public static /* synthetic */ boolean $r8$lambda$brD9S6YLrqBFbbtzWgo2bpb29pI(LogAdapter logAdapter, MyViewHolder myViewHolder, View view) {
            logAdapter.getClass();
            int bindingAdapterPosition = myViewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition != -1 && bindingAdapterPosition < logAdapter.mList.size()) {
                String str = logAdapter.mList.get(bindingAdapterPosition);
                if (!TextUtils.isEmpty(str)) {
                    Context context = view.getContext();
                    ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
                    if (clipboardManager != null) {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText("log", str));
                        Toast.makeText(context, R$string.copy_to_clipboard, 0).show();
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
            myViewHolder.tvLog.setText(this.mList.get(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mList.size();
        }

        public void clear() {
            int size = this.mList.size();
            this.mList.clear();
            if (size > 0) {
                notifyItemRangeRemoved(0, size);
            }
        }

        public void appendData(List<String> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            int size = this.mList.size();
            this.mList.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }

        /* JADX INFO: Access modifiers changed from: private */
        static class MyViewHolder extends RecyclerView.ViewHolder {
            TextView tvLog;

            public MyViewHolder(View view) {
                super(view);
                this.tvLog = (TextView) view.findViewById(R$id.tvLog);
            }
        }
    }
}
