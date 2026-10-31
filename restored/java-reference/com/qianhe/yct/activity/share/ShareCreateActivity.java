package com.qianhe.yct.activity.share;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.FragmentResultListener;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ShareProjectAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityShareCreateBinding;
import com.qianhe.yct.databinding.TitlebarBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.CreateShareResponse;
import com.qianhe.yct.event.ModifyShareResponse;
import com.qianhe.yct.event.QueryEngineeringResponse;
import com.qianhe.yct.event.QueryProjectByUUidResponse;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareCreateActivity extends BaseActivity {
    private ShareProjectAdapter adapter;
    private ActivityShareCreateBinding binding;
    private boolean isCreate;
    private boolean isProhibitEdit;
    private ActivityResultLauncher launcher;
    private String mShareCode;
    private ShareEntity mShareEntity;
    private BaseProEntity pendingOpenSharedProject;
    private boolean switchScreen;
    private List<BaseProEntity> mData = new ArrayList();
    private ArrayList<String> initProjectIds = new ArrayList<>();
    private ArrayList<String> selectedProjectIds = new ArrayList<>();
    private final SimpleDateFormat dateFormatD = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityShareCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        applyIntent(getIntent());
        initActivityResultLauncher();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("switchScreen", true);
        bundle.putStringArrayList("initProjectIds", this.initProjectIds);
        bundle.putStringArrayList("selectedProjectIds", this.selectedProjectIds);
        bundle.putBoolean("isProhibitEdit", this.isProhibitEdit);
        bundle.putString("expireTime", this.binding.tvExpireTime.getText().toString());
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.switchScreen = bundle.getBoolean("switchScreen");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("initProjectIds");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("selectedProjectIds");
        if (stringArrayList == null) {
            stringArrayList = new ArrayList<>();
        }
        this.initProjectIds = stringArrayList;
        if (stringArrayList2 == null) {
            stringArrayList2 = new ArrayList<>();
        }
        this.selectedProjectIds = stringArrayList2;
        this.isProhibitEdit = bundle.getBoolean("isProhibitEdit");
        this.binding.tvExpireTime.setText(bundle.getString("expireTime"));
        if (TextUtils.isEmpty(this.mShareCode)) {
            refreshSelectProject();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        TitlebarBinding titlebarBinding;
        super.onNewIntent(intent);
        setIntent(intent);
        resetSharePageState();
        applyIntent(intent);
        ActivityShareCreateBinding activityShareCreateBinding = this.binding;
        if (activityShareCreateBinding == null || (titlebarBinding = activityShareCreateBinding.topBar) == null) {
            return;
        }
        titlebarBinding.tvTitle.setText(this.isCreate ? R$string.create_share : R$string.share_project);
    }

    private void applyIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("ids");
        if (stringArrayListExtra != null && !stringArrayListExtra.isEmpty()) {
            int intExtra = intent.getIntExtra("proType", 0);
            Iterator<String> it = stringArrayListExtra.iterator();
            while (it.hasNext()) {
                List<BaseProEntity> listQueryEntityById = DatabaseManager.getInstance(this).queryEntityById(intExtra, Long.valueOf(it.next()));
                if (!listQueryEntityById.isEmpty()) {
                    BaseProEntity baseProEntity = listQueryEntityById.get(0);
                    this.mData.add(baseProEntity);
                    if (!this.initProjectIds.contains(String.valueOf(baseProEntity.projectId))) {
                        this.initProjectIds.add(String.valueOf(baseProEntity.projectId));
                    }
                }
            }
            this.selectedProjectIds.addAll(this.initProjectIds);
            ShareProjectAdapter shareProjectAdapter = this.adapter;
            if (shareProjectAdapter != null) {
                shareProjectAdapter.refrshData(this.mData, this.isProhibitEdit);
            }
        }
        this.mShareCode = intent.getStringExtra("shareCode");
        ShareEntity shareEntity = (ShareEntity) new Gson().fromJson(intent.getStringExtra("shareEntityJson"), ShareEntity.class);
        if (shareEntity == null && TextUtils.isEmpty(this.mShareCode)) {
            this.isCreate = true;
            this.binding.tvCopy.setVisibility(8);
            this.binding.tvExpireTime.setText(this.dateFormatD.format(Long.valueOf(System.currentTimeMillis() + 86400000)));
        } else {
            if (shareEntity != null) {
                this.mShareEntity = shareEntity;
                if (DatabaseManager.getInstance(this).queryShareByShareId(Long.valueOf(shareEntity.shareId)).isEmpty() && shareEntity.editState == 0) {
                    DatabaseManager.getInstance(this).insertShare(shareEntity);
                }
                showDataFormList();
                return;
            }
            NetworkUserLoader.getInstance().queryShare(null, null, new String[]{this.mShareCode}, "");
        }
    }

    private void resetSharePageState() {
        this.switchScreen = false;
        this.initProjectIds.clear();
        this.selectedProjectIds.clear();
        this.mData.clear();
        this.mShareCode = null;
        this.mShareEntity = null;
        this.isProhibitEdit = false;
        this.isCreate = false;
        this.pendingOpenSharedProject = null;
        this.binding.edtName.setEnabled(true);
        this.binding.edtName.setText("");
        this.binding.tvExpireTime.setEnabled(true);
        this.binding.fltClearName.setVisibility(0);
        this.binding.tvAdd.setVisibility(0);
        this.binding.tvSubmit.setVisibility(0);
        this.binding.tvCopy.setVisibility(0);
        ShareProjectAdapter shareProjectAdapter = this.adapter;
        if (shareProjectAdapter != null) {
            shareProjectAdapter.refrshData(this.mData, false);
        }
    }

    private void showDataFormList() {
        ShareEntity shareEntity = this.mShareEntity;
        if (shareEntity != null) {
            String str = shareEntity.projectUUids;
            this.binding.edtName.setText(shareEntity.name);
            EditText editText = this.binding.edtName;
            editText.setSelection(editText.getText().toString().length());
            this.binding.tvExpireTime.setText(this.dateFormatD.format(new Date(this.mShareEntity.expireTime * 1000)));
            ShareEntity shareEntity2 = this.mShareEntity;
            if (shareEntity2.editState == 1) {
                this.isProhibitEdit = true;
            }
            if (isShareExpired(shareEntity2)) {
                showShareExpiredDialog();
                prohibitEdit();
                return;
            } else {
                NetworkUserLoader.getInstance().queryProjectByUUid(str.split(","));
            }
        }
        prohibitEdit();
    }

    private boolean isShareExpired(ShareEntity shareEntity) {
        if (shareEntity == null) {
            return false;
        }
        long j = shareEntity.expireTime;
        return j > 0 && j * 1000 <= System.currentTimeMillis();
    }

    private void showShareExpiredDialog() {
        showTipDialog(getString(R$string.share_expired), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.1
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                ShareCreateActivity.this.finishSharePage();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                ShareCreateActivity.this.finishSharePage();
            }
        }, "share_expired");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishSharePage() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryProjectByUUidResponse queryProjectByUUidResponse) {
        List<BaseProEntity> listQueryEntityByUUId;
        if (queryProjectByUUidResponse.state == 0) {
            DatabaseManager databaseManager = DatabaseManager.getInstance(this);
            databaseManager.cleanupDuplicateProjectsByUuid();
            ArrayList arrayList = queryProjectByUUidResponse.list != null ? new ArrayList(queryProjectByUUidResponse.list) : new ArrayList();
            this.mData = arrayList;
            ShareProjectAdapter shareProjectAdapter = this.adapter;
            if (shareProjectAdapter != null) {
                shareProjectAdapter.refrshData(arrayList, this.isProhibitEdit);
            }
            this.initProjectIds.clear();
            for (BaseProEntity baseProEntity : this.mData) {
                if (this.mShareEntity != null) {
                    if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
                        listQueryEntityByUUId = new ArrayList<>();
                    } else {
                        listQueryEntityByUUId = databaseManager.queryEntityByUUId(baseProEntity.type, baseProEntity.projectUUid);
                    }
                    if (listQueryEntityByUUId.isEmpty()) {
                        baseProEntity.editState = this.mShareEntity.editState == 1 ? 1 : 0;
                        databaseManager.insert(baseProEntity);
                    } else {
                        BaseProEntity baseProEntity2 = listQueryEntityByUUId.get(0);
                        if (baseProEntity.version > baseProEntity2.version) {
                            baseProEntity.editState = baseProEntity2.editState;
                            baseProEntity.id = baseProEntity2.id;
                            if (TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
                                baseProEntity.engineeringUuid = baseProEntity2.engineeringUuid;
                            }
                            if (baseProEntity.belongEngineeringId <= 0) {
                                baseProEntity.belongEngineeringId = baseProEntity2.belongEngineeringId;
                            }
                            databaseManager.updateEntityByUUid(baseProEntity);
                        } else if (!TextUtils.isEmpty(baseProEntity.engineeringUuid) && TextUtils.isEmpty(baseProEntity2.engineeringUuid)) {
                            baseProEntity2.engineeringUuid = baseProEntity.engineeringUuid;
                            long j = baseProEntity.belongEngineeringId;
                            if (j > 0) {
                                baseProEntity2.belongEngineeringId = j;
                            }
                            databaseManager.updateEntityByUUid(baseProEntity2);
                        }
                    }
                }
                String strValueOf = String.valueOf(baseProEntity.projectId);
                if (!this.initProjectIds.contains(strValueOf)) {
                    this.initProjectIds.add(strValueOf);
                }
            }
            this.selectedProjectIds.clear();
            this.selectedProjectIds.addAll(this.initProjectIds);
            return;
        }
        List<BaseProEntity> listLoadProjectsByShareUuids = loadProjectsByShareUuids();
        this.mData = listLoadProjectsByShareUuids;
        ShareProjectAdapter shareProjectAdapter2 = this.adapter;
        if (shareProjectAdapter2 != null) {
            shareProjectAdapter2.refrshData(listLoadProjectsByShareUuids, this.isProhibitEdit);
        }
        this.initProjectIds.clear();
        Iterator<BaseProEntity> it = listLoadProjectsByShareUuids.iterator();
        while (it.hasNext()) {
            String strValueOf2 = String.valueOf(it.next().projectId);
            if (!this.initProjectIds.contains(strValueOf2)) {
                this.initProjectIds.add(strValueOf2);
            }
        }
        this.selectedProjectIds.clear();
        this.selectedProjectIds.addAll(this.initProjectIds);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryShareResponse queryShareResponse) {
        if (queryShareResponse.codes == null) {
            return;
        }
        int i = queryShareResponse.state;
        if (i == 0) {
            List<ShareEntity> list = queryShareResponse.list;
            if (list != null && !list.isEmpty()) {
                if (!TextUtils.isEmpty(this.mShareCode)) {
                    ShareEntity shareEntity = queryShareResponse.list.get(0);
                    this.mShareEntity = shareEntity;
                    if (isShareExpired(shareEntity)) {
                        showShareExpiredDialog();
                        return;
                    }
                    List<ShareEntity> listQueryShareByShareCode = DatabaseManager.getInstance(this).queryShareByShareCode(this.mShareCode);
                    if (listQueryShareByShareCode.isEmpty()) {
                        this.mShareEntity.editState = 1;
                        this.isProhibitEdit = true;
                        DatabaseManager.getInstance(this).insertShare(this.mShareEntity);
                    } else {
                        this.mShareEntity.editState = listQueryShareByShareCode.get(0).editState;
                        this.isProhibitEdit = this.mShareEntity.editState == 1;
                        DatabaseManager.getInstance(this).updateShare(this.mShareEntity);
                    }
                }
                showDataFormList();
                return;
            }
            if (this.switchScreen) {
                return;
            }
            showTipDialog(getString(R$string.data_empty), getString(R$string.ok), null);
            return;
        }
        showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
    }

    private void prohibitEdit() {
        if (this.isProhibitEdit) {
            this.binding.edtName.setEnabled(false);
            this.binding.tvExpireTime.setEnabled(false);
            this.binding.fltClearName.setVisibility(8);
            this.binding.tvAdd.setVisibility(8);
            this.binding.tvSubmit.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultName() {
        ShareEntity shareEntity;
        List<ShareEntity> listQueryShareByShareId = DatabaseManager.getInstance(this).queryShareByShareId(null);
        if (listQueryShareByShareId != null && !listQueryShareByShareId.isEmpty()) {
            String str = getString(R$string.share) + "%s";
            ShareEntity shareEntity2 = this.mShareEntity;
            int size = listQueryShareByShareId.size();
            if (shareEntity2 == null) {
                size++;
            }
            String str2 = String.format(str, Integer.valueOf(size));
            boolean zIsEntityNameExists = DatabaseManager.getInstance(this).isEntityNameExists("share", str2);
            if (zIsEntityNameExists && this.isCreate) {
                str2 = str2 + "_" + (System.currentTimeMillis() / 1000);
            } else if (!zIsEntityNameExists && !this.isCreate && (shareEntity = this.mShareEntity) != null) {
                str2 = shareEntity.name;
            }
            this.binding.edtName.setText(str2);
        } else {
            this.binding.edtName.setText(String.format("%s1", getString(R$string.share)));
        }
        EditText editText = this.binding.edtName;
        editText.setSelection(editText.getText().toString().length());
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ShareCreateActivity.$r8$lambda$4NSH8INYvW7elz5eYym2zkmG_mI((ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$4NSH8INYvW7elz5eYym2zkmG_mI(ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            activityResult.getData();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        this.binding.rcv.setLayoutManager(isPad() ? new GridLayoutManager(this, 2) : new LinearLayoutManager(this));
        ShareProjectAdapter shareProjectAdapter = new ShareProjectAdapter(this, this.mData, this.isProhibitEdit);
        this.adapter = shareProjectAdapter;
        this.binding.rcv.setAdapter(shareProjectAdapter);
        this.adapter.setOnActionListener(new ShareProjectAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.2
            @Override // com.qianhe.yct.adapter.ShareProjectAdapter.OnActionListener
            public void onAction(BaseProEntity baseProEntity) {
                ShareCreateActivity.this.openSharedOrLocalProject(baseProEntity);
            }

            @Override // com.qianhe.yct.adapter.ShareProjectAdapter.OnActionListener
            public void onDel(BaseProEntity baseProEntity) {
                if (baseProEntity != null) {
                    if (ShareCreateActivity.this.selectedProjectIds.size() > 1) {
                        Iterator it = ShareCreateActivity.this.mData.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                BaseProEntity baseProEntity2 = (BaseProEntity) it.next();
                                long j = baseProEntity2.projectId;
                                if (j != 0 && j == baseProEntity.projectId) {
                                    ShareCreateActivity.this.selectedProjectIds.remove(String.valueOf(baseProEntity2.projectId));
                                    break;
                                } else if (!it.hasNext()) {
                                    break;
                                }
                            }
                        }
                        ShareCreateActivity.this.refreshSelectProject();
                        return;
                    }
                    ShareCreateActivity shareCreateActivity = ShareCreateActivity.this;
                    shareCreateActivity.showTipDialog(shareCreateActivity.getString(R$string.project_empty), ShareCreateActivity.this.getString(R$string.ok), null);
                }
            }
        });
        this.binding.fltClearName.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShareCreateActivity.this.mShareEntity == null || ShareCreateActivity.this.mShareEntity.shareId == 0) {
                    ShareCreateActivity.this.binding.edtName.setText("");
                } else {
                    ShareCreateActivity.this.binding.edtName.setText(ShareCreateActivity.this.mShareEntity.name);
                }
            }
        });
        this.binding.tvCopy.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareCreateActivity.this.copyShareCodeToClipboard((!TextUtils.isEmpty(ShareCreateActivity.this.mShareCode) || ShareCreateActivity.this.mShareEntity == null) ? ShareCreateActivity.this.mShareCode : ShareCreateActivity.this.mShareEntity.shareCode, false);
            }
        });
        this.binding.tvAdd.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment = new ShareMultipleProjectDialogFragment();
                shareMultipleProjectDialogFragment.show(ShareCreateActivity.this.getSupportFragmentManager(), "ShareMultipleProjectDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, ShareCreateActivity.this.getString(R$string.please_select_project));
                bundle.putStringArrayList("selectedProjectIds", ShareCreateActivity.this.selectedProjectIds);
                bundle.putString("requestKey", "selectedproject");
                shareMultipleProjectDialogFragment.setArguments(bundle);
            }
        });
        this.binding.tvExpireTime.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.binding.tvSubmit.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strTrim = ShareCreateActivity.this.binding.edtName.getText().toString().trim();
                String string = ShareCreateActivity.this.binding.tvExpireTime.getText().toString();
                if (TextUtils.isEmpty(strTrim)) {
                    ShareCreateActivity shareCreateActivity = ShareCreateActivity.this;
                    shareCreateActivity.showTipDialog(shareCreateActivity.getString(R$string.name_empty), ShareCreateActivity.this.getString(R$string.use_default_values), null, "defaultname");
                    return;
                }
                if (ShareCreateActivity.this.selectedProjectIds.isEmpty()) {
                    ShareCreateActivity shareCreateActivity2 = ShareCreateActivity.this;
                    shareCreateActivity2.showTipDialog(shareCreateActivity2.getString(R$string.project_empty), ShareCreateActivity.this.getString(R$string.ok), null);
                    return;
                }
                if (ShareCreateActivity.this.selectedProjectIds.size() > 20) {
                    ShareCreateActivity shareCreateActivity3 = ShareCreateActivity.this;
                    shareCreateActivity3.showTipDialog(shareCreateActivity3.getString(R$string.maximum_20_projects), ShareCreateActivity.this.getString(R$string.ok), null);
                    return;
                }
                if (ShareCreateActivity.this.mShareEntity != null && ShareCreateActivity.this.mShareEntity.name.equals(strTrim) && ShareCreateActivity.this.mShareEntity.expireTime == ShareCreateActivity.this.dateStringToTimestamp(string)) {
                    ShareCreateActivity shareCreateActivity4 = ShareCreateActivity.this;
                    if (shareCreateActivity4.isEqualIgnoreOrder(shareCreateActivity4.initProjectIds, ShareCreateActivity.this.selectedProjectIds)) {
                        ShareCreateActivity shareCreateActivity5 = ShareCreateActivity.this;
                        shareCreateActivity5.showToastDialog(shareCreateActivity5.getString(R$string.no_modify_content));
                        return;
                    }
                }
                if (ShareCreateActivity.this.mShareEntity != null) {
                    if (ShareCreateActivity.this.mShareEntity.name.equals(ShareCreateActivity.this.binding.edtName.getText().toString().trim())) {
                        ShareCreateActivity shareCreateActivity6 = ShareCreateActivity.this;
                        if (shareCreateActivity6.haveSameElements(shareCreateActivity6.initProjectIds, ShareCreateActivity.this.selectedProjectIds)) {
                            ShareCreateActivity shareCreateActivity7 = ShareCreateActivity.this;
                            shareCreateActivity7.showToastDialog(shareCreateActivity7.getString(R$string.no_modify_content));
                            return;
                        }
                    }
                    NetworkUserLoader.getInstance().modifyShare(ShareCreateActivity.this.mShareEntity, strTrim, ShareCreateActivity.this.selectedProjectIds, (System.currentTimeMillis() + 86400000) / 1000);
                    return;
                }
                NetworkUserLoader.getInstance().createShare(strTrim, ShareCreateActivity.this.selectedProjectIds, ShareCreateActivity.this.dateStringToTimestamp(string));
            }
        });
        getSupportFragmentManager().setFragmentResultListener("selectedproject", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ShareCreateActivity.m1763$r8$lambda$wKIKbSzPdm2pny7zzvYu_MM9m4(this.f$0, str, bundle);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("defaultname", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.8
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("defaultname")) {
                    boolean z = bundle.getBoolean("confirm");
                    boolean z2 = bundle.getBoolean("manual_cancel");
                    if (z) {
                        ShareCreateActivity.this.setDefaultName();
                    } else if (z2) {
                        ShareCreateActivity.this.binding.edtName.requestFocus();
                        ShareCreateActivity.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                InputMethodManager inputMethodManager = (InputMethodManager) ShareCreateActivity.this.getSystemService("input_method");
                                if (inputMethodManager != null) {
                                    inputMethodManager.showSoftInput(ShareCreateActivity.this.binding.edtName, 1);
                                }
                            }
                        });
                    }
                }
            }
        });
    }

    /* renamed from: $r8$lambda$wKIKbSz-Pdm2pny7zzvYu_MM9m4, reason: not valid java name */
    public static /* synthetic */ void m1763$r8$lambda$wKIKbSzPdm2pny7zzvYu_MM9m4(final ShareCreateActivity shareCreateActivity, String str, Bundle bundle) {
        shareCreateActivity.getClass();
        if (str.equals("selectedproject") && bundle.getInt("action") == 0) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("selectedProjectIds");
            shareCreateActivity.selectedProjectIds.clear();
            if (stringArrayList != null) {
                shareCreateActivity.selectedProjectIds.addAll(stringArrayList);
            }
            shareCreateActivity.binding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ShareCreateActivity.$r8$lambda$I9Xd9kXj4z_QNLjXTihYKmUb4ns(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$I9Xd9kXj4z_QNLjXTihYKmUb4ns(ShareCreateActivity shareCreateActivity) {
        shareCreateActivity.refreshSelectProject();
        ShareProjectAdapter shareProjectAdapter = shareCreateActivity.adapter;
        if (shareProjectAdapter == null || shareProjectAdapter.getItemCount() <= 0) {
            return;
        }
        shareCreateActivity.binding.rcv.smoothScrollToPosition(shareCreateActivity.adapter.getItemCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSelectProject() {
        List<BaseProEntity> listLoadProjectsForSelection = loadProjectsForSelection();
        this.mData.clear();
        this.mData.addAll(listLoadProjectsForSelection);
        ShareProjectAdapter shareProjectAdapter = this.adapter;
        if (shareProjectAdapter != null) {
            shareProjectAdapter.refrshData(this.mData, this.isProhibitEdit);
        }
    }

    private List<BaseProEntity> loadProjectsForSelection() {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = this.selectedProjectIds;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            HashSet hashSet = new HashSet(this.selectedProjectIds);
            HashMap map = new HashMap();
            List<BaseProEntity> list = this.mData;
            if (list != null) {
                Iterator<BaseProEntity> it = list.iterator();
                while (it.hasNext()) {
                    putIfSelected(map, hashSet, it.next());
                }
            }
            Iterator<BaseProEntity> it2 = loadProjectsByShareUuids().iterator();
            while (it2.hasNext()) {
                putIfSelected(map, hashSet, it2.next());
            }
            if (map.size() < hashSet.size()) {
                ArrayList arrayList3 = new ArrayList();
                Iterator<String> it3 = this.selectedProjectIds.iterator();
                while (it3.hasNext()) {
                    String next = it3.next();
                    if (!map.containsKey(next)) {
                        arrayList3.add(next);
                    }
                }
                if (!arrayList3.isEmpty()) {
                    DatabaseManager databaseManager = DatabaseManager.getInstance(this);
                    for (ProjectEnum projectEnum : ProjectEnum.values()) {
                        Iterator<BaseProEntity> it4 = databaseManager.queryEntityByProjectIds(projectEnum.getType(), arrayList3).iterator();
                        while (it4.hasNext()) {
                            putIfSelected(map, hashSet, it4.next());
                        }
                        if (map.size() >= hashSet.size()) {
                            break;
                        }
                    }
                }
            }
            Iterator<String> it5 = this.selectedProjectIds.iterator();
            while (it5.hasNext()) {
                BaseProEntity baseProEntity = map.get(it5.next());
                if (baseProEntity != null) {
                    arrayList.add(baseProEntity);
                }
            }
        }
        return arrayList;
    }

    private void putIfSelected(Map<String, BaseProEntity> map, Set<String> set, BaseProEntity baseProEntity) {
        if (baseProEntity != null) {
            long j = baseProEntity.projectId;
            if (j == 0) {
                return;
            }
            String strValueOf = String.valueOf(j);
            if (!set.contains(strValueOf) || map.containsKey(strValueOf)) {
                return;
            }
            map.put(strValueOf, baseProEntity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.qianhe.baselib.base.BaseProEntity> loadProjectsByShareUuids() {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.qianhe.baselib.bean.ShareEntity r1 = r11.mShareEntity
            r2 = 0
            if (r1 == 0) goto L17
            java.lang.String r1 = r1.projectUUids
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L17
            com.qianhe.baselib.bean.ShareEntity r1 = r11.mShareEntity
            java.lang.String r1 = r1.projectUUids
            goto L3f
        L17:
            com.qianhe.baselib.bean.ShareEntity r1 = r11.mShareEntity
            if (r1 == 0) goto L3e
            java.lang.String r1 = r1.shareCode
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L3e
            com.qianhe.yct.db.DatabaseManager r1 = com.qianhe.yct.db.DatabaseManager.getInstance(r11)
            com.qianhe.baselib.bean.ShareEntity r3 = r11.mShareEntity
            java.lang.String r3 = r3.shareCode
            java.util.List r1 = r1.queryShareByShareCode(r3)
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto L3e
            java.lang.Object r1 = r1.get(r2)
            com.qianhe.baselib.bean.ShareEntity r1 = (com.qianhe.baselib.bean.ShareEntity) r1
            java.lang.String r1 = r1.projectUUids
            goto L3f
        L3e:
            r1 = 0
        L3f:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L46
            goto L7c
        L46:
            com.qianhe.yct.db.DatabaseManager r3 = com.qianhe.yct.db.DatabaseManager.getInstance(r11)
            java.lang.String r4 = ","
            java.lang.String[] r1 = r1.split(r4)
            int r4 = r1.length
            r5 = 0
        L52:
            if (r5 >= r4) goto L7c
            r6 = r1[r5]
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            if (r7 == 0) goto L5d
            goto L79
        L5d:
            java.lang.String r6 = r6.trim()
            com.qianhe.baselib.enums.ProjectEnum[] r7 = com.qianhe.baselib.enums.ProjectEnum.values()
            int r8 = r7.length
            r9 = 0
        L67:
            if (r9 >= r8) goto L79
            r10 = r7[r9]
            int r10 = r10.getType()
            java.util.List r10 = r3.queryEntityByUUId(r10, r6)
            r0.addAll(r10)
            int r9 = r9 + 1
            goto L67
        L79:
            int r5 = r5 + 1
            goto L52
        L7c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.share.ShareCreateActivity.loadProjectsByShareUuids():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEqualIgnoreOrder(List<String> list, List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList(list2);
        Collections.sort(arrayList);
        Collections.sort(arrayList2);
        return arrayList.equals(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long dateStringToTimestamp(String str) {
        try {
            return this.dateFormatD.parse(str).getTime() / 1000;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateShareResponse createShareResponse) {
        if (createShareResponse.state == 0) {
            Toast.makeText(this, R$string.create_success, 0).show();
            Intent intent = new Intent();
            intent.putExtra("shareCode", createShareResponse.shareCode);
            setResult(-1, intent);
            finish();
            return;
        }
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            Toast.makeText(this, R$string.current_not_login, 0).show();
            return;
        }
        if ("token error".equals(createShareResponse.msg)) {
            YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
            UserSession.get().clearLoginInfo();
            showTipDialog(getString(R$string.current_login_offline), getString(R$string.ok), null);
        } else {
            int i = createShareResponse.state;
            if (i == 9015) {
                showTipDialog(getString(R$string.project_not_exist), getString(R$string.ok), null);
            } else {
                showTipDialog(ErrorCodeUtils.getErrorMsg(this, i), getString(R$string.ok), null);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ModifyShareResponse modifyShareResponse) {
        if (modifyShareResponse.state == 0) {
            Toast.makeText(this, R$string.modify_success, 0).show();
            Intent intent = new Intent();
            intent.putExtra("shareCode", modifyShareResponse.entity.shareCode);
            setResult(-1, intent);
            finish();
            return;
        }
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            Toast.makeText(this, R$string.current_not_login, 0).show();
        } else {
            if ("token error".equals(modifyShareResponse.msg)) {
                YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
                UserSession.get().clearLoginInfo();
                showTipDialog(getString(R$string.current_login_offline), getString(R$string.ok), null);
                return;
            }
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, modifyShareResponse.state), getString(R$string.ok), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSharedOrLocalProject(BaseProEntity baseProEntity) {
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId;
        if (baseProEntity == null) {
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        if (!TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
            engineeringEntityQueryEngineeringByLocalId = databaseManager.findEngineeringByServerIdentity(baseProEntity.engineeringUuid, baseProEntity.belongEngineeringId);
        } else {
            long j = baseProEntity.belongEngineeringId;
            if (j > 0) {
                engineeringEntityQueryEngineeringByLocalId = databaseManager.findEngineeringByServerIdentity(null, j);
            } else {
                long j2 = baseProEntity.engineeringLocalId;
                engineeringEntityQueryEngineeringByLocalId = j2 > 0 ? databaseManager.queryEngineeringByLocalId(j2) : null;
            }
        }
        if (engineeringEntityQueryEngineeringByLocalId != null) {
            ShareProjectAdapter.startWorkActivity(this, baseProEntity, engineeringEntityQueryEngineeringByLocalId);
        } else if (!TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
            this.pendingOpenSharedProject = baseProEntity;
            NetworkUserLoader.getInstance().queryEngineeringByUuid(baseProEntity.engineeringUuid);
        } else {
            showSharedEngineeringNotFound();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryEngineeringResponse queryEngineeringResponse) {
        EngineeringEntity engineeringEntity;
        BaseProEntity baseProEntity = this.pendingOpenSharedProject;
        if (baseProEntity == null) {
            return;
        }
        String str = baseProEntity.engineeringUuid;
        if (TextUtils.isEmpty(queryEngineeringResponse.requestEngineeringUuid) || TextUtils.isEmpty(str) || str.equals(queryEngineeringResponse.requestEngineeringUuid)) {
            this.pendingOpenSharedProject = null;
            if (queryEngineeringResponse.state != 0 || (engineeringEntity = queryEngineeringResponse.engineering) == null) {
                showSharedEngineeringNotFound();
                return;
            }
            if (TextUtils.isEmpty(engineeringEntity.engineeringUuid)) {
                engineeringEntity.engineeringUuid = str;
            }
            EngineeringEntity engineeringEntityFindEngineeringByServerIdentity = DatabaseManager.getInstance(this).findEngineeringByServerIdentity(engineeringEntity.engineeringUuid, engineeringEntity.engineeringId);
            if (engineeringEntityFindEngineeringByServerIdentity == null) {
                engineeringEntity.editState = 1;
                engineeringEntity.currentUsage = 0;
                long jInsertEngineering = DatabaseManager.getInstance(this).insertEngineering(engineeringEntity);
                if (jInsertEngineering > 0) {
                    engineeringEntity.id = jInsertEngineering;
                }
            } else {
                engineeringEntity = engineeringEntityFindEngineeringByServerIdentity;
            }
            ShareProjectAdapter.startWorkActivity(this, baseProEntity, engineeringEntity);
        }
    }

    private void showSharedEngineeringNotFound() {
        showTipDialog(getString(R$string.project_not_bound_engineering), getString(R$string.ok), null);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(this.isCreate ? R$string.create_share : R$string.share_project);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean haveSameElements(List<String> list, List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList(list2);
        Collections.sort(arrayList);
        Collections.sort(arrayList2);
        return arrayList.equals(arrayList2);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (isShareExpired(this.mShareEntity)) {
            super.onBackPressed();
            return;
        }
        ShareEntity shareEntity = this.mShareEntity;
        if (shareEntity != null) {
            if (!shareEntity.name.equals(this.binding.edtName.getText().toString().trim()) || !haveSameElements(this.initProjectIds, this.selectedProjectIds)) {
                showTipDialog(getString(R$string.data_not_submitted), getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.share.ShareCreateActivity.9
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ShareCreateActivity.super.onBackPressed();
                    }
                });
                return;
            } else {
                super.onBackPressed();
                return;
            }
        }
        super.onBackPressed();
    }
}
