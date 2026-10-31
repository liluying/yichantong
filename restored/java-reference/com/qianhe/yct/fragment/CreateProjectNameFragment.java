package com.qianhe.yct.fragment;

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
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCreateNameBinding;
import com.qianhe.yct.db.DatabaseManager;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateProjectNameFragment extends BaseProjectFragment {
    private BaseProEntity baseProEntity;
    private FragmentCreateNameBinding binding;
    private BaseProEntity initEntity;
    private DatabaseManager mDatabaseManager;

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        initView();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCreateNameBinding.inflate(getLayoutInflater());
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.initEntity = (BaseProEntity) arguments.getSerializable("initEntity");
            this.baseProEntity = (BaseProEntity) arguments.getSerializable("baseProEntity");
        }
        this.binding.tvNameDes.setText(R$string.project_name);
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.ivReset.setVisibility(this.baseProEntity.editState == 0 ? 0 : 8);
        this.binding.edtName.setEnabled(this.baseProEntity.editState == 0);
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CreateProjectNameFragment.this.baseProEntity.name = editable.toString();
            }
        });
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateProjectNameFragment.m2242$r8$lambda$CIvXvrf7csBBUDnjlWmcChYYqY(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        this.binding.tvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateProjectNameFragment.$r8$lambda$BRo4ZKS1w6GhcWQQQ22rLdhGlT0(this.f$0, view);
            }
        });
        getParentFragmentManager().setFragmentResultListener("defaultname", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("defaultname")) {
                    boolean z = bundle.getBoolean("confirm");
                    boolean z2 = bundle.getBoolean("manual_cancel");
                    if (z) {
                        CreateProjectNameFragment.this.setDefaultName();
                    } else if (z2) {
                        CreateProjectNameFragment.this.binding.edtName.requestFocus();
                        CreateProjectNameFragment.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                InputMethodManager inputMethodManager = (InputMethodManager) CreateProjectNameFragment.this.requireContext().getSystemService("input_method");
                                if (inputMethodManager != null) {
                                    inputMethodManager.showSoftInput(CreateProjectNameFragment.this.binding.edtName, 1);
                                }
                            }
                        });
                    }
                }
            }
        });
        this.binding.edtName.setText(this.baseProEntity.name);
        setDefaultCursor();
    }

    /* renamed from: $r8$lambda$-CIvXvrf7csBBUDnjlWmcChYYqY, reason: not valid java name */
    public static /* synthetic */ void m2242$r8$lambda$CIvXvrf7csBBUDnjlWmcChYYqY(CreateProjectNameFragment createProjectNameFragment, View view) {
        createProjectNameFragment.binding.edtName.setText(createProjectNameFragment.initEntity.name);
        if (TextUtils.isEmpty(createProjectNameFragment.initEntity.name)) {
            return;
        }
        createProjectNameFragment.binding.edtName.setSelection(createProjectNameFragment.initEntity.name.length());
    }

    public static /* synthetic */ void $r8$lambda$BRo4ZKS1w6GhcWQQQ22rLdhGlT0(CreateProjectNameFragment createProjectNameFragment, View view) {
        String strTrim = createProjectNameFragment.binding.edtName.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            ((BaseActivity) createProjectNameFragment.requireActivity()).showTipDialog(createProjectNameFragment.getString(R$string.name_empty), createProjectNameFragment.getString(R$string.use_default_values), null, "defaultname");
        } else if (createProjectNameFragment.isNameExists(strTrim) && !createProjectNameFragment.initEntity.name.equals(strTrim)) {
            ((BaseActivity) createProjectNameFragment.requireActivity()).showTipDialog(createProjectNameFragment.getString(R$string.project_name_already_exists), createProjectNameFragment.getString(R$string.ok), null);
        } else {
            createProjectNameFragment.baseProEntity.name = strTrim;
            EventBus.getDefault().post("next");
        }
    }

    private void setDefaultCursor() {
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreateProjectNameFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(CreateProjectNameFragment.this.baseProEntity.name)) {
                    CreateProjectNameFragment.this.binding.edtName.setSelection(CreateProjectNameFragment.this.baseProEntity.name.length());
                }
                CreateProjectNameFragment.this.binding.edtName.requestFocus();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultName() {
        String string;
        String str;
        DatabaseManager databaseManager = DatabaseManager.getInstance(requireActivity());
        this.mDatabaseManager = databaseManager;
        List<BaseProEntity> listQueryEntityById = databaseManager.queryEntityById(this.baseProEntity.type, null);
        if (this.baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
            string = getString(R$string.leveling);
        } else if (this.baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
            string = getString(R$string.slope);
        } else if (this.baseProEntity.type == ProjectEnum.WAGOU.getType()) {
            string = getString(R$string.ditch);
        } else if (this.baseProEntity.type == ProjectEnum.DIKE.getType()) {
            string = getString(R$string.dike);
        } else if (this.baseProEntity.type == ProjectEnum.LINE.getType()) {
            string = getString(R$string.line);
        } else if (this.baseProEntity.type == ProjectEnum.POLY_LINE.getType()) {
            string = getString(R$string.polyline);
        } else if (this.baseProEntity.type == ProjectEnum.ONEPOINTAREA.getType()) {
            string = getString(R$string.one_point_area);
        } else if (this.baseProEntity.type == ProjectEnum.THREEPOINTAREA.getType()) {
            string = getString(R$string.three_point_area);
        } else if (this.baseProEntity.type == ProjectEnum.SITELEVELING.getType()) {
            string = getString(R$string.site_leveling);
        } else if (this.baseProEntity.type == ProjectEnum.ARBITRARYLINE.getType()) {
            string = getString(R$string.arbitrary_line);
        } else if (this.baseProEntity.type == ProjectEnum.CURVEDSLOPE.getType()) {
            string = getString(R$string.curved_slope);
        } else if (this.baseProEntity.type != ProjectEnum.MULTI_POINT_AREA.getType()) {
            string = "";
        } else {
            string = getString(R$string.multi_point_area);
        }
        if (listQueryEntityById != null && !listQueryEntityById.isEmpty()) {
            if (this.baseProEntity.id > 0) {
                str = this.initEntity.name;
            } else {
                str = String.format(string + "%s", Integer.valueOf(listQueryEntityById.size() + 1));
            }
            if (isNameExists(str) && this.baseProEntity.id == 0) {
                str = str + "_" + (System.currentTimeMillis() / 1000);
            }
            this.binding.edtName.setText(str);
        } else {
            this.binding.edtName.setText(String.format("%s1", string));
        }
        EditText editText = this.binding.edtName;
        editText.setSelection(editText.getText().toString().length());
    }

    private boolean isNameExists(String str) {
        return this.mDatabaseManager.isEntityNameExistsInEngineering(DatabaseManager.getInstance(requireContext()).getTableName(this.baseProEntity.type), str);
    }
}
