package com.qianhe.yct.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ChoiceMultipleProjectAdapter;
import com.qianhe.yct.adapter.ProjectCategoryAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogChooseMultipleProjectBinding;
import com.qianhe.yct.db.DatabaseManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareMultipleProjectDialogFragment extends BaseDialogFragment {
    private ChoiceMultipleProjectAdapter adapter;
    private DialogChooseMultipleProjectBinding binding;
    private ProjectCategoryAdapter categoryAdapter;
    private boolean confirmed;
    private ArrayList<String> initSelList;
    private DatabaseManager mDatabaseManager;
    private final List<ProjectCategoryAdapter.CategoryItem> categoryItems = new ArrayList();
    private final ArrayList<String> selectedProjectIds = new ArrayList<>();
    private List<BaseProEntity> mFilterList = new ArrayList();
    private String mContent = "";

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return ShareMultipleProjectDialogFragment.$r8$lambda$ggFmpzSfQguXGZoHWT8KBr0Q21c(this.f$0, view2, motionEvent);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$ggFmpzSfQguXGZoHWT8KBr0Q21c(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, View view, MotionEvent motionEvent) {
        shareMultipleProjectDialogFragment.forceHideKeyboard();
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        int i;
        this.binding = DialogChooseMultipleProjectBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        this.mDatabaseManager = DatabaseManager.getInstance(requireContext());
        initCategories();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.binding.tvTitle.setText(arguments.getString(Proj4Keyword.title));
            ArrayList<String> stringArrayList = arguments.getStringArrayList("selectedProjectIds");
            if (stringArrayList != null) {
                this.selectedProjectIds.addAll(stringArrayList);
            }
            this.requestKey = arguments.getString("requestKey", "");
            this.initSelList = new ArrayList<>(this.selectedProjectIds);
        }
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareMultipleProjectDialogFragment.$r8$lambda$uOQA8U95lqojOZLhCWg7fNfK22Q(this.f$0, view);
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareMultipleProjectDialogFragment.m2145$r8$lambda$ZFIwN8hvWLazIui2ojsx1RwxIo(this.f$0, view);
            }
        });
        this.binding.edtName.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ShareMultipleProjectDialogFragment.this.mContent = editable.toString();
                ShareMultipleProjectDialogFragment.this.updateFilterList();
            }
        });
        setupCategoryRecyclerView();
        setupProjectRecyclerView();
        if (bundle != null && (i = bundle.getInt("selectedCategoryIndex", -1)) != -1 && i < this.categoryItems.size()) {
            this.categoryItems.get(i).setSelected(true);
            this.categoryAdapter.notifyItemChanged(i);
        }
        updateFilterList();
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$uOQA8U95lqojOZLhCWg7fNfK22Q(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, View view) {
        if (!shareMultipleProjectDialogFragment.selectedProjectIds.isEmpty()) {
            shareMultipleProjectDialogFragment.confirmed = true;
            Bundle bundle = new Bundle();
            bundle.putInt("action", 0);
            bundle.putStringArrayList("selectedProjectIds", new ArrayList<>(shareMultipleProjectDialogFragment.selectedProjectIds));
            shareMultipleProjectDialogFragment.getParentFragmentManager().setFragmentResult(shareMultipleProjectDialogFragment.requestKey, bundle);
            shareMultipleProjectDialogFragment.dismiss();
            return;
        }
        ((BaseActivity) shareMultipleProjectDialogFragment.requireActivity()).showTipDialog(shareMultipleProjectDialogFragment.getString(R$string.select_project), shareMultipleProjectDialogFragment.getString(R$string.ok), null);
    }

    /* renamed from: $r8$lambda$ZFIwN8hvWLaz-Iui2ojsx1RwxIo, reason: not valid java name */
    public static /* synthetic */ void m2145$r8$lambda$ZFIwN8hvWLazIui2ojsx1RwxIo(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, View view) {
        shareMultipleProjectDialogFragment.binding.ivAll.setSelected(!r7.isSelected());
        HashSet hashSet = new HashSet(shareMultipleProjectDialogFragment.selectedProjectIds);
        if (shareMultipleProjectDialogFragment.binding.ivAll.isSelected()) {
            Iterator<BaseProEntity> it = shareMultipleProjectDialogFragment.mFilterList.iterator();
            while (it.hasNext()) {
                long j = it.next().projectId;
                if (j > 0) {
                    String strValueOf = String.valueOf(j);
                    if (hashSet.add(strValueOf)) {
                        shareMultipleProjectDialogFragment.selectedProjectIds.add(strValueOf);
                    }
                }
            }
        } else {
            Iterator<BaseProEntity> it2 = shareMultipleProjectDialogFragment.mFilterList.iterator();
            while (it2.hasNext()) {
                String strValueOf2 = String.valueOf(it2.next().projectId);
                if (hashSet.remove(strValueOf2)) {
                    shareMultipleProjectDialogFragment.selectedProjectIds.remove(strValueOf2);
                }
            }
        }
        ChoiceMultipleProjectAdapter choiceMultipleProjectAdapter = shareMultipleProjectDialogFragment.adapter;
        if (choiceMultipleProjectAdapter != null) {
            choiceMultipleProjectAdapter.refreshData(shareMultipleProjectDialogFragment.mFilterList, shareMultipleProjectDialogFragment.selectedProjectIds);
        }
    }

    private void initCategories() {
        this.categoryItems.clear();
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.leveling), ProjectEnum.ZHAOPING));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.slope), ProjectEnum.SHUAPO));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.ditch), ProjectEnum.WAGOU));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.dike), ProjectEnum.DIKE));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.line), ProjectEnum.LINE));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.polyline), ProjectEnum.POLY_LINE));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.one_point_area), ProjectEnum.ONEPOINTAREA));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.three_point_area), ProjectEnum.THREEPOINTAREA));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.site_leveling), ProjectEnum.SITELEVELING));
        this.categoryItems.add(new ProjectCategoryAdapter.CategoryItem(getString(R$string.arbitrary_line), ProjectEnum.ARBITRARYLINE));
    }

    private void setupCategoryRecyclerView() {
        boolean z = getResources().getConfiguration().orientation == 2;
        this.binding.rvCategory.setLayoutManager(new GridLayoutManager(requireContext(), z ? 2 : 3));
        ProjectCategoryAdapter projectCategoryAdapter = new ProjectCategoryAdapter(requireContext(), this.categoryItems);
        this.categoryAdapter = projectCategoryAdapter;
        projectCategoryAdapter.setOnItemClickListener(new ProjectCategoryAdapter.OnItemClickListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda6
            @Override // com.qianhe.yct.adapter.ProjectCategoryAdapter.OnItemClickListener
            public final void onItemClick(int i) {
                ShareMultipleProjectDialogFragment.$r8$lambda$3PbCGaaOVNoADotDgcAL9EB81ls(this.f$0, i);
            }
        });
        this.binding.rvCategory.setAdapter(this.categoryAdapter);
        if (!z) {
            this.binding.rvCategory.post(new Runnable() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ShareMultipleProjectDialogFragment.$r8$lambda$OVVTTdbI8Zli9uj8tyjBQ2eJdtk(this.f$0);
                }
            });
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.binding.rvCategory.getLayoutParams();
        layoutParams.height = -2;
        this.binding.rvCategory.setLayoutParams(layoutParams);
    }

    public static /* synthetic */ void $r8$lambda$3PbCGaaOVNoADotDgcAL9EB81ls(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, int i) {
        ProjectCategoryAdapter.CategoryItem categoryItem = shareMultipleProjectDialogFragment.categoryItems.get(i);
        boolean zIsSelected = categoryItem.isSelected();
        Iterator<ProjectCategoryAdapter.CategoryItem> it = shareMultipleProjectDialogFragment.categoryItems.iterator();
        while (it.hasNext()) {
            it.next().setSelected(false);
        }
        categoryItem.setSelected(!zIsSelected);
        shareMultipleProjectDialogFragment.categoryAdapter.notifyDataSetChanged();
        shareMultipleProjectDialogFragment.updateFilterList();
    }

    public static /* synthetic */ void $r8$lambda$OVVTTdbI8Zli9uj8tyjBQ2eJdtk(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment) {
        if (shareMultipleProjectDialogFragment.binding.rvCategory.getChildCount() > 0) {
            View childAt = shareMultipleProjectDialogFragment.binding.rvCategory.getChildAt(0);
            int height = childAt.getHeight();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int i = (int) ((height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin) * 2.5f);
            ViewGroup.LayoutParams layoutParams = shareMultipleProjectDialogFragment.binding.rvCategory.getLayoutParams();
            if (layoutParams.height != i) {
                layoutParams.height = i;
                shareMultipleProjectDialogFragment.binding.rvCategory.setLayoutParams(layoutParams);
            }
        }
    }

    private void setupProjectRecyclerView() {
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(requireContext(), 2));
        } else {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        ChoiceMultipleProjectAdapter choiceMultipleProjectAdapter = new ChoiceMultipleProjectAdapter(requireContext(), this.mFilterList, this.selectedProjectIds);
        this.adapter = choiceMultipleProjectAdapter;
        this.binding.rcv.setAdapter(choiceMultipleProjectAdapter);
        this.adapter.setOnActionListener(new ChoiceMultipleProjectAdapter.OnActionListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda5
            @Override // com.qianhe.yct.adapter.ChoiceMultipleProjectAdapter.OnActionListener
            public final void onAction(ArrayList arrayList) {
                ShareMultipleProjectDialogFragment.m2146$r8$lambda$pOHDruimbKsCIFaWhVLeGft6tg(this.f$0, arrayList);
            }
        });
    }

    /* renamed from: $r8$lambda$pOHDrui-mbKsCIFaWhVLeGft6tg, reason: not valid java name */
    public static /* synthetic */ void m2146$r8$lambda$pOHDruimbKsCIFaWhVLeGft6tg(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, ArrayList arrayList) {
        shareMultipleProjectDialogFragment.selectedProjectIds.clear();
        shareMultipleProjectDialogFragment.selectedProjectIds.addAll(arrayList);
        shareMultipleProjectDialogFragment.updateSelectAllState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFilterList() {
        ProjectEnum type;
        this.mFilterList.clear();
        Iterator<ProjectCategoryAdapter.CategoryItem> it = this.categoryItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                type = null;
                break;
            }
            ProjectCategoryAdapter.CategoryItem next = it.next();
            if (next.isSelected()) {
                type = next.getType();
                break;
            }
        }
        if (type != null) {
            this.mFilterList.addAll(this.mDatabaseManager.queryEntityByEditStateAndName(type.getType(), 0, this.mContent));
        } else {
            Iterator<ProjectCategoryAdapter.CategoryItem> it2 = this.categoryItems.iterator();
            while (it2.hasNext()) {
                this.mFilterList.addAll(this.mDatabaseManager.queryEntityByEditStateAndName(it2.next().getType().getType(), 0, this.mContent));
            }
        }
        ChoiceMultipleProjectAdapter choiceMultipleProjectAdapter = this.adapter;
        if (choiceMultipleProjectAdapter != null) {
            choiceMultipleProjectAdapter.refreshData(this.mFilterList, this.selectedProjectIds);
        }
        updateSelectAllState();
    }

    private void updateSelectAllState() {
        boolean z = !this.mFilterList.isEmpty();
        Iterator<BaseProEntity> it = this.mFilterList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (!this.selectedProjectIds.contains(String.valueOf(it.next().projectId))) {
                z = false;
                break;
            }
        }
        this.binding.ivAll.setSelected(z);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        int i = 0;
        while (true) {
            if (i >= this.categoryItems.size()) {
                i = -1;
                break;
            } else if (this.categoryItems.get(i).isSelected()) {
                break;
            } else {
                i++;
            }
        }
        bundle.putInt("selectedCategoryIndex", i);
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
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ShareMultipleProjectDialogFragment.m2144$r8$lambda$P4KnPMzYyse8hnXRjWi5_U4EVs(this.f$0, dialogInterface);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$P4KnPMzYyse8hnXRjWi-5_U4EVs, reason: not valid java name */
    public static /* synthetic */ void m2144$r8$lambda$P4KnPMzYyse8hnXRjWi5_U4EVs(ShareMultipleProjectDialogFragment shareMultipleProjectDialogFragment, DialogInterface dialogInterface) {
        if (shareMultipleProjectDialogFragment.getFragmentManager() != null) {
            shareMultipleProjectDialogFragment.getFragmentManager().beginTransaction().remove(shareMultipleProjectDialogFragment).commitAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.confirmed) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("action", 1);
        bundle.putStringArrayList("selectedProjectIds", this.initSelList);
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
