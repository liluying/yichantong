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
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentCreateNameBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.utils.NoUnderscoreInputFilter;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateExcavatorNameFragment extends BaseProjectFragment {
    private FragmentCreateNameBinding binding;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private DatabaseManager mDatabaseManager;

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
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.tvNameDes.setText(R$string.excavator_name);
        NoUnderscoreInputFilter.apply(this.binding.edtName);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateExcavatorNameFragment.$r8$lambda$cF6403tychB1k9SBw7tRk1A1avE(this.f$0, view);
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CreateExcavatorNameFragment.this.excavatorEntity.name = editable.toString();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateExcavatorNameFragment.$r8$lambda$eOA0bmGhZuFOHCn6tFIumIxnSSY(this.f$0, view);
            }
        });
        getParentFragmentManager().setFragmentResultListener("defaultname", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("defaultname")) {
                    boolean z = bundle.getBoolean("confirm");
                    boolean z2 = bundle.getBoolean("manual_cancel");
                    if (z) {
                        CreateExcavatorNameFragment.this.setDefaultName();
                    } else if (z2) {
                        CreateExcavatorNameFragment.this.binding.edtName.requestFocus();
                        CreateExcavatorNameFragment.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                InputMethodManager inputMethodManager = (InputMethodManager) CreateExcavatorNameFragment.this.requireContext().getSystemService("input_method");
                                if (inputMethodManager != null) {
                                    inputMethodManager.showSoftInput(CreateExcavatorNameFragment.this.binding.edtName, 1);
                                }
                            }
                        });
                    }
                }
            }
        });
        if (!TextUtils.isEmpty(this.excavatorEntity.name)) {
            this.binding.edtName.setText(this.excavatorEntity.name);
        }
        setDefaultCursor();
        getParentFragmentManager().setFragmentResultListener("create_or_replace", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                CreateExcavatorNameFragment.$r8$lambda$tloLd1uNnMRQ2uFg71B_p4DKef8(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$cF6403tychB1k9SBw7tRk1A1avE(CreateExcavatorNameFragment createExcavatorNameFragment, View view) {
        createExcavatorNameFragment.binding.edtName.setText(createExcavatorNameFragment.initEntity.name);
        createExcavatorNameFragment.binding.edtName.setSelection(createExcavatorNameFragment.initEntity.name.length());
    }

    public static /* synthetic */ void $r8$lambda$eOA0bmGhZuFOHCn6tFIumIxnSSY(CreateExcavatorNameFragment createExcavatorNameFragment, View view) {
        String strTrim = createExcavatorNameFragment.binding.edtName.getText().toString().trim();
        createExcavatorNameFragment.excavatorEntity.name = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            ((BaseActivity) createExcavatorNameFragment.requireActivity()).showTipDialog(createExcavatorNameFragment.getString(R$string.name_empty), createExcavatorNameFragment.getString(R$string.use_default_values), null, "defaultname");
            return;
        }
        if (NoUnderscoreInputFilter.containsUnderscore(strTrim)) {
            ((BaseActivity) createExcavatorNameFragment.requireActivity()).showToastDialog(createExcavatorNameFragment.getString(R$string.name_cannot_contain_underscore));
        } else if (createExcavatorNameFragment.mDatabaseManager.isEntityNameExists("excavator", strTrim) && !createExcavatorNameFragment.initEntity.name.equals(strTrim)) {
            ((BaseActivity) createExcavatorNameFragment.requireActivity()).showTipDialog(createExcavatorNameFragment.getString(R$string.excavator_name_already_exists), createExcavatorNameFragment.getString(R$string.ok), null);
        } else {
            createExcavatorNameFragment.onNameValidated();
        }
    }

    public static /* synthetic */ void $r8$lambda$tloLd1uNnMRQ2uFg71B_p4DKef8(CreateExcavatorNameFragment createExcavatorNameFragment, String str, Bundle bundle) {
        createExcavatorNameFragment.getClass();
        createExcavatorNameFragment.onCreateOrReplaceChosen(bundle.getInt("index", -1));
    }

    private void onNameValidated() {
        if (!(requireActivity() instanceof ExcavatorCreateActivity)) {
            proceedCreate();
            return;
        }
        ExcavatorCreateActivity excavatorCreateActivity = (ExcavatorCreateActivity) requireActivity();
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null && excavatorEntity.localId > 0) {
            proceedCreate();
            return;
        }
        int hostLibMode = excavatorCreateActivity.getHostLibMode();
        if (!excavatorCreateActivity.isHostCalibReceived() || hostLibMode == 1 || hostLibMode <= 0) {
            proceedCreate();
        } else if (hostLibMode == 2 || hostLibMode == 3) {
            showCreateOrReplaceDialog();
        } else {
            proceedCreate();
        }
    }

    private void showCreateOrReplaceDialog() {
        if (getParentFragmentManager().findFragmentByTag("ChooseListDialogFragment") != null) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(getString(R$string.create_new_excavator));
        arrayList.add(getString(R$string.replace_bucket));
        ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.create_or_replace_title));
        bundle.putStringArrayList("list", arrayList);
        bundle.putString("requestKey", "create_or_replace");
        chooseListDialogFragment.setArguments(bundle);
        chooseListDialogFragment.show(getParentFragmentManager(), "ChooseListDialogFragment");
    }

    private void onCreateOrReplaceChosen(int i) {
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            ExcavatorCreateActivity excavatorCreateActivity = (ExcavatorCreateActivity) requireActivity();
            if (i == 0) {
                excavatorCreateActivity.onChooseCreateNewExcavator();
            } else if (i == 1) {
                excavatorCreateActivity.onChooseReplaceBucket();
            }
        }
    }

    private void proceedCreate() {
        postWizardNext(this.binding.tvContinue);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentCreateNameBinding fragmentCreateNameBinding = this.binding;
        restoreContinueEnabled(fragmentCreateNameBinding != null ? fragmentCreateNameBinding.tvContinue : null);
    }

    private void setDefaultCursor() {
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.fragment.CreateExcavatorNameFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(CreateExcavatorNameFragment.this.excavatorEntity.name)) {
                    CreateExcavatorNameFragment.this.binding.edtName.setSelection(CreateExcavatorNameFragment.this.excavatorEntity.name.length());
                }
                CreateExcavatorNameFragment.this.binding.edtName.requestFocus();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultName() {
        String str;
        DatabaseManager databaseManager = DatabaseManager.getInstance(requireActivity());
        this.mDatabaseManager = databaseManager;
        List<ExcavatorEntity> listQueryExcavatorByUserId = databaseManager.queryExcavatorByUserId(0L);
        if (listQueryExcavatorByUserId != null && !listQueryExcavatorByUserId.isEmpty()) {
            if (this.excavatorEntity.localId > 0) {
                str = this.initEntity.name;
            } else {
                str = String.format(getString(R$string.excavator) + "%s", Integer.valueOf(listQueryExcavatorByUserId.size() + 1));
            }
            if (this.mDatabaseManager.isEntityNameExists("excavator", str) && this.excavatorEntity.localId == 0) {
                str = str + "-" + (System.currentTimeMillis() / 1000);
            }
            this.binding.edtName.setText(str);
        } else {
            this.binding.edtName.setText(String.format("%s1", getString(R$string.excavator)));
        }
        EditText editText = this.binding.edtName;
        editText.setSelection(editText.getText().toString().length());
    }
}
