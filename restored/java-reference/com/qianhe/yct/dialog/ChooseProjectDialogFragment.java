package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChoiceProjectNameAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseProjectBinding;
import com.qianhe.yct.db.DatabaseManager;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChooseProjectDialogFragment extends BaseDialogFragment {
    private ChoiceProjectNameAdapter adapter;
    private BaseProEntity baseProEntity;
    private DialogChooseProjectBinding binding;
    private ArrayList<String> initSelList;
    private boolean isMultiple;
    private String mContent = "";
    private DatabaseManager mDatabaseManager;
    private List<BaseProEntity> mFilterList;

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return ChooseProjectDialogFragment.m2073$r8$lambda$DmcBClpqtGLWeDMisYasE3dWg(this.f$0, view2, motionEvent);
            }
        });
    }

    /* renamed from: $r8$lambda$DmcBCl-pqtGLWe-DMisYasE3dWg, reason: not valid java name */
    public static /* synthetic */ boolean m2073$r8$lambda$DmcBClpqtGLWeDMisYasE3dWg(ChooseProjectDialogFragment chooseProjectDialogFragment, View view, MotionEvent motionEvent) {
        chooseProjectDialogFragment.forceHideKeyboard();
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogChooseProjectBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTitle.setText(arguments.getString(Proj4Keyword.title));
            this.isMultiple = arguments.getBoolean("multiple");
            this.requestKey = arguments.getString("requestKey", "");
            this.initSelList = new ArrayList<>();
            this.binding.lltAll.setVisibility(this.isMultiple ? 0 : 8);
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment.this.dismiss();
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChooseProjectDialogFragment.this.baseProEntity != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("action", 0);
                    bundle2.putSerializable("baseProEntity", ChooseProjectDialogFragment.this.baseProEntity);
                    ChooseProjectDialogFragment.this.getParentFragmentManager().setFragmentResult(((BaseDialogFragment) ChooseProjectDialogFragment.this).requestKey, bundle2);
                    ChooseProjectDialogFragment.this.dismiss();
                    return;
                }
                ((BaseActivity) ChooseProjectDialogFragment.this.requireActivity()).showTipDialog(ChooseProjectDialogFragment.this.getString(R$string.select_project), ChooseProjectDialogFragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ChooseProjectDialogFragment.this.mContent = editable.toString();
                List<BaseProEntity> arrayList = new ArrayList<>();
                List<BaseProEntity> arrayList2 = new ArrayList<>();
                List<BaseProEntity> arrayList3 = new ArrayList<>();
                List<BaseProEntity> arrayList4 = new ArrayList<>();
                List<BaseProEntity> arrayList5 = new ArrayList<>();
                ChooseProjectDialogFragment.this.mFilterList.clear();
                if (ChooseProjectDialogFragment.this.binding.tvZP.isSelected()) {
                    arrayList = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                } else if (ChooseProjectDialogFragment.this.binding.tvSP.isSelected()) {
                    arrayList2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                } else if (ChooseProjectDialogFragment.this.binding.tvWG.isSelected()) {
                    arrayList3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                } else if (ChooseProjectDialogFragment.this.binding.tvDike.isSelected()) {
                    arrayList4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                } else if (ChooseProjectDialogFragment.this.binding.tvLine.isSelected()) {
                    arrayList5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                } else {
                    arrayList = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    arrayList2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    arrayList3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    arrayList4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    arrayList5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                }
                ChooseProjectDialogFragment.this.mFilterList.addAll(arrayList);
                ChooseProjectDialogFragment.this.mFilterList.addAll(arrayList2);
                ChooseProjectDialogFragment.this.mFilterList.addAll(arrayList3);
                ChooseProjectDialogFragment.this.mFilterList.addAll(arrayList4);
                ChooseProjectDialogFragment.this.mFilterList.addAll(arrayList5);
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.binding.tvZP.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment chooseProjectDialogFragment = ChooseProjectDialogFragment.this;
                chooseProjectDialogFragment.mDatabaseManager = DatabaseManager.getInstance(chooseProjectDialogFragment.requireContext());
                ChooseProjectDialogFragment.this.binding.tvZP.setSelected(!ChooseProjectDialogFragment.this.binding.tvZP.isSelected());
                if (ChooseProjectDialogFragment.this.binding.tvZP.isSelected()) {
                    ChooseProjectDialogFragment.this.binding.tvSP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvWG.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvDike.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvLine.setSelected(false);
                    List<BaseProEntity> listQueryEntityByEditStateAndName = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName);
                } else {
                    List<BaseProEntity> listQueryEntityByEditStateAndName2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName6 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName6);
                }
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.binding.tvSP.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment chooseProjectDialogFragment = ChooseProjectDialogFragment.this;
                chooseProjectDialogFragment.mDatabaseManager = DatabaseManager.getInstance(chooseProjectDialogFragment.requireContext());
                ChooseProjectDialogFragment.this.binding.tvSP.setSelected(!ChooseProjectDialogFragment.this.binding.tvSP.isSelected());
                if (ChooseProjectDialogFragment.this.binding.tvSP.isSelected()) {
                    ChooseProjectDialogFragment.this.binding.tvZP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvWG.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvDike.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvLine.setSelected(false);
                    List<BaseProEntity> listQueryEntityByEditStateAndName = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName);
                } else {
                    List<BaseProEntity> listQueryEntityByEditStateAndName2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName6 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName6);
                }
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.binding.tvWG.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment chooseProjectDialogFragment = ChooseProjectDialogFragment.this;
                chooseProjectDialogFragment.mDatabaseManager = DatabaseManager.getInstance(chooseProjectDialogFragment.requireContext());
                ChooseProjectDialogFragment.this.binding.tvWG.setSelected(!ChooseProjectDialogFragment.this.binding.tvWG.isSelected());
                if (ChooseProjectDialogFragment.this.binding.tvWG.isSelected()) {
                    ChooseProjectDialogFragment.this.binding.tvZP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvSP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvDike.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvLine.setSelected(false);
                    List<BaseProEntity> listQueryEntityByEditStateAndName = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName);
                } else {
                    List<BaseProEntity> listQueryEntityByEditStateAndName2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName6 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName6);
                }
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.binding.tvDike.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment chooseProjectDialogFragment = ChooseProjectDialogFragment.this;
                chooseProjectDialogFragment.mDatabaseManager = DatabaseManager.getInstance(chooseProjectDialogFragment.requireContext());
                ChooseProjectDialogFragment.this.binding.tvDike.setSelected(!ChooseProjectDialogFragment.this.binding.tvDike.isSelected());
                if (ChooseProjectDialogFragment.this.binding.tvDike.isSelected()) {
                    ChooseProjectDialogFragment.this.binding.tvZP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvSP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvWG.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvLine.setSelected(false);
                    List<BaseProEntity> listQueryEntityByEditStateAndName = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName);
                } else {
                    List<BaseProEntity> listQueryEntityByEditStateAndName2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName6 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName6);
                }
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.binding.tvLine.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseProjectDialogFragment chooseProjectDialogFragment = ChooseProjectDialogFragment.this;
                chooseProjectDialogFragment.mDatabaseManager = DatabaseManager.getInstance(chooseProjectDialogFragment.requireContext());
                ChooseProjectDialogFragment.this.binding.tvLine.setSelected(!ChooseProjectDialogFragment.this.binding.tvLine.isSelected());
                if (ChooseProjectDialogFragment.this.binding.tvLine.isSelected()) {
                    ChooseProjectDialogFragment.this.binding.tvZP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvSP.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvWG.setSelected(false);
                    ChooseProjectDialogFragment.this.binding.tvDike.setSelected(false);
                    List<BaseProEntity> listQueryEntityByEditStateAndName = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName);
                } else {
                    List<BaseProEntity> listQueryEntityByEditStateAndName2 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName3 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName5 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    List<BaseProEntity> listQueryEntityByEditStateAndName6 = ChooseProjectDialogFragment.this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, ChooseProjectDialogFragment.this.mContent);
                    ChooseProjectDialogFragment.this.mFilterList.clear();
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
                    ChooseProjectDialogFragment.this.mFilterList.addAll(listQueryEntityByEditStateAndName6);
                }
                ChooseProjectDialogFragment.this.adapter.refreshData(ChooseProjectDialogFragment.this.mFilterList);
            }
        });
        this.mFilterList = new ArrayList();
        List<BaseProEntity> listQueryEntityByEditStateAndName = this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.ZHAOPING.getType(), 0, this.mContent);
        List<BaseProEntity> listQueryEntityByEditStateAndName2 = this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.SHUAPO.getType(), 0, this.mContent);
        List<BaseProEntity> listQueryEntityByEditStateAndName3 = this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.WAGOU.getType(), 0, this.mContent);
        List<BaseProEntity> listQueryEntityByEditStateAndName4 = this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.DIKE.getType(), 0, this.mContent);
        List<BaseProEntity> listQueryEntityByEditStateAndName5 = this.mDatabaseManager.queryEntityByEditStateAndName(ProjectEnum.LINE.getType(), 0, this.mContent);
        this.mFilterList.addAll(listQueryEntityByEditStateAndName);
        this.mFilterList.addAll(listQueryEntityByEditStateAndName2);
        this.mFilterList.addAll(listQueryEntityByEditStateAndName3);
        this.mFilterList.addAll(listQueryEntityByEditStateAndName4);
        this.mFilterList.addAll(listQueryEntityByEditStateAndName5);
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
        } else if (i == 1) {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        ChoiceProjectNameAdapter choiceProjectNameAdapter = new ChoiceProjectNameAdapter(requireContext(), this.mFilterList);
        this.adapter = choiceProjectNameAdapter;
        this.binding.rcv.setAdapter(choiceProjectNameAdapter);
        this.adapter.setOnActionListener(new ChoiceProjectNameAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.9
            @Override // com.qianhe.yct.adapter.ChoiceProjectNameAdapter.OnActionListener
            public void onAction(BaseProEntity baseProEntity) {
                ChooseProjectDialogFragment.this.baseProEntity = baseProEntity;
            }
        });
        if (bundle != null) {
            boolean z = bundle.getBoolean("zp");
            boolean z2 = bundle.getBoolean("sp");
            boolean z3 = bundle.getBoolean("wg");
            boolean z4 = bundle.getBoolean("dike");
            boolean z5 = bundle.getBoolean("line");
            if (z) {
                this.binding.tvZP.performClick();
            }
            if (z2) {
                this.binding.tvSP.performClick();
            }
            if (z3) {
                this.binding.tvWG.performClick();
            }
            if (z4) {
                this.binding.tvDike.performClick();
            }
            if (z5) {
                this.binding.tvLine.performClick();
            }
        }
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("zp", this.binding.tvZP.isSelected());
        bundle.putBoolean("sp", this.binding.tvSP.isSelected());
        bundle.putBoolean("wg", this.binding.tvWG.isSelected());
        bundle.putBoolean("dike", this.binding.tvDike.isSelected());
        bundle.putBoolean("line", this.binding.tvLine.isSelected());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                float f = isPad() ? 0.8f : 0.9f;
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * f), (int) (getResources().getDisplayMetrics().heightPixels * f));
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ChooseProjectDialogFragment.10
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ChooseProjectDialogFragment.this.getFragmentManager() != null) {
                        ChooseProjectDialogFragment.this.getFragmentManager().beginTransaction().remove(ChooseProjectDialogFragment.this).commitAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Bundle bundle = new Bundle();
        bundle.putInt("action", 1);
        getParentFragmentManager().setFragmentResult(this.requestKey, bundle);
    }

    private void forceHideKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) requireContext().getSystemService("input_method");
        View viewPeekDecorView = requireActivity().getWindow().peekDecorView();
        if (viewPeekDecorView != null && inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(viewPeekDecorView.getWindowToken(), 2);
        }
        View currentFocus = getDialog() == null ? null : getDialog().getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
    }
}
