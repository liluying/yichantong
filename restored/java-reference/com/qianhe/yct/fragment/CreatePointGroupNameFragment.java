package com.qianhe.yct.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.PointListActivity;
import com.qianhe.yct.activity.pointlib.PointGroupCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCreateNameBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.utils.NetworkUserLoader;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreatePointGroupNameFragment extends BaseProjectFragment {
    private FragmentCreateNameBinding binding;
    private long editGroupLocalId;
    private boolean editGroupOnly;
    private PointlibEntity initEntity;
    private boolean isGroupName;
    private DatabaseManager mDatabaseManager;
    private PointGroupEntity pointGroupEntity;
    private PointlibEntity pointlibEntity;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCreateNameBinding.inflate(getLayoutInflater());
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (PointlibEntity) arguments.getSerializable("initEntity");
            this.pointlibEntity = (PointlibEntity) arguments.getSerializable("pointlibEntity");
            this.pointGroupEntity = (PointGroupEntity) arguments.getSerializable("pointGroupEntity");
            this.isGroupName = arguments.getBoolean("isGroupName", false);
            this.editGroupOnly = arguments.getBoolean("editGroupOnly", false);
            this.editGroupLocalId = arguments.getLong("editGroupLocalId", 0L);
        }
        this.binding.tvNameDes.setText(R$string.point_group_name);
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.tvNameDes.setText(this.isGroupName ? R$string.point_group_name : R$string.point_name);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreatePointGroupNameFragment.$r8$lambda$6Y1J8VXwfOnk0jbQsW6XZXvLdNo(this.f$0, view);
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (CreatePointGroupNameFragment.this.pointlibEntity != null) {
                    CreatePointGroupNameFragment.this.pointlibEntity.name = editable.toString();
                }
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onContinue();
            }
        });
        getParentFragmentManager().setFragmentResultListener("defaultname", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if ("defaultname".equals(str)) {
                    if (bundle.getBoolean("confirm")) {
                        CreatePointGroupNameFragment.this.setDefaultName();
                    } else if (bundle.getBoolean("manual_cancel")) {
                        CreatePointGroupNameFragment.this.focusNameInput();
                    }
                }
            }
        });
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity != null && !TextUtils.isEmpty(pointlibEntity.name)) {
            this.binding.edtName.setText(this.pointlibEntity.name);
        } else if (this.isGroupName && !this.editGroupOnly && (requireActivity() instanceof PointGroupCreateActivity)) {
            String pendingGroupName = ((PointGroupCreateActivity) requireActivity()).getPendingGroupName();
            if (!TextUtils.isEmpty(pendingGroupName)) {
                this.binding.edtName.setText(pendingGroupName);
            }
        }
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CreatePointGroupNameFragment.$r8$lambda$EaOLfBDaBjittyiOgZc03_KWv_U(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$6Y1J8VXwfOnk0jbQsW6XZXvLdNo(CreatePointGroupNameFragment createPointGroupNameFragment, View view) {
        EditText editText = createPointGroupNameFragment.binding.edtName;
        PointlibEntity pointlibEntity = createPointGroupNameFragment.initEntity;
        editText.setText(pointlibEntity != null ? pointlibEntity.name : "");
        if (TextUtils.isEmpty(createPointGroupNameFragment.binding.edtName.getText())) {
            return;
        }
        EditText editText2 = createPointGroupNameFragment.binding.edtName;
        editText2.setSelection(editText2.getText().length());
    }

    public static /* synthetic */ void $r8$lambda$EaOLfBDaBjittyiOgZc03_KWv_U(CreatePointGroupNameFragment createPointGroupNameFragment) {
        if (!TextUtils.isEmpty(createPointGroupNameFragment.binding.edtName.getText())) {
            EditText editText = createPointGroupNameFragment.binding.edtName;
            editText.setSelection(editText.getText().length());
        }
        createPointGroupNameFragment.binding.edtName.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContinue() {
        String strTrim = this.binding.edtName.getText().toString().trim();
        if (this.isGroupName) {
            handleGroupNameContinue(strTrim);
        } else if (TextUtils.isEmpty(strTrim)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "defaultname");
        } else {
            this.pointlibEntity.name = strTrim;
            EventBus.getDefault().post("next");
        }
    }

    private void handleGroupNameContinue(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.name_empty), getString(R$string.use_default_values), null, "defaultname");
            return;
        }
        PointGroupEntity pointGroupEntity = this.pointGroupEntity;
        if (pointGroupEntity != null) {
            str2 = pointGroupEntity.name;
        } else {
            PointlibEntity pointlibEntity = this.initEntity;
            str2 = pointlibEntity != null ? pointlibEntity.name : "";
        }
        if (this.mDatabaseManager.isPointGroupNameExists(str) && !str.equals(str2)) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.point_group_name_already_exists), getString(R$string.ok), null);
            return;
        }
        if (this.editGroupOnly) {
            long j = this.editGroupLocalId;
            if (j > 0) {
                PointGroupEntity pointGroupEntityQueryPointGroupByLocalId = this.mDatabaseManager.queryPointGroupByLocalId(j);
                if (pointGroupEntityQueryPointGroupByLocalId != null) {
                    pointGroupEntityQueryPointGroupByLocalId.name = str;
                    pointGroupEntityQueryPointGroupByLocalId.updateTime = System.currentTimeMillis() / 1000;
                    this.mDatabaseManager.updatePointGroup(pointGroupEntityQueryPointGroupByLocalId);
                    if (pointGroupEntityQueryPointGroupByLocalId.groupId > 0) {
                        NetworkUserLoader.getInstance().modifyPointGroup(pointGroupEntityQueryPointGroupByLocalId);
                    }
                    openPointList(pointGroupEntityQueryPointGroupByLocalId.groupLocalId, str);
                    return;
                }
                return;
            }
        }
        if (requireActivity() instanceof PointGroupCreateActivity) {
            PointGroupCreateActivity pointGroupCreateActivity = (PointGroupCreateActivity) requireActivity();
            if (pointGroupCreateActivity.isCreateNewGroup()) {
                pointGroupCreateActivity.setPendingGroupName(str);
                openPointListPending(str);
                return;
            }
        }
        EventBus.getDefault().post("next");
    }

    private void openPointListPending(String str) {
        if (requireActivity() instanceof PointGroupCreateActivity) {
            ((PointGroupCreateActivity) requireActivity()).openPointListAfterGroupNamed(0L, null, str);
            return;
        }
        Intent intent = new Intent(requireActivity(), (Class<?>) PointListActivity.class);
        intent.putExtra("pendingGroupName", str);
        startActivity(intent);
        requireActivity().finish();
    }

    private void openPointList(long j, String str) {
        if (requireActivity() instanceof PointGroupCreateActivity) {
            ((PointGroupCreateActivity) requireActivity()).openPointListAfterGroupNamed(j, str, null);
            return;
        }
        Intent intent = new Intent(requireActivity(), (Class<?>) PointListActivity.class);
        intent.putExtra("groupLocalId", j);
        intent.putExtra("groupName", str);
        startActivity(intent);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultName() {
        if (this.isGroupName) {
            this.binding.edtName.setText(this.mDatabaseManager.generateDefaultPointGroupName());
        } else {
            long groupLocalId = requireActivity() instanceof PointGroupCreateActivity ? ((PointGroupCreateActivity) requireActivity()).getGroupLocalId() : 0L;
            PointlibEntity pointlibEntity = this.pointlibEntity;
            this.binding.edtName.setText((pointlibEntity == null || pointlibEntity.id <= 0 || TextUtils.isEmpty(pointlibEntity.name)) ? this.mDatabaseManager.generateDefaultPointName(groupLocalId) : this.pointlibEntity.name);
        }
        PointlibEntity pointlibEntity2 = this.pointlibEntity;
        if (pointlibEntity2 != null) {
            pointlibEntity2.name = this.binding.edtName.getText().toString();
        }
        EditText editText = this.binding.edtName;
        editText.setSelection(editText.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focusNameInput() {
        this.binding.edtName.requestFocus();
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreatePointGroupNameFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CreatePointGroupNameFragment.$r8$lambda$NkPSwPzhPzvuXmC4xnVHaXqhTes(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$NkPSwPzhPzvuXmC4xnVHaXqhTes(CreatePointGroupNameFragment createPointGroupNameFragment) {
        InputMethodManager inputMethodManager = (InputMethodManager) createPointGroupNameFragment.requireContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(createPointGroupNameFragment.binding.edtName, 1);
        }
    }
}
