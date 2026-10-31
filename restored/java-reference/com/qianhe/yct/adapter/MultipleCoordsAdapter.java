package com.qianhe.yct.adapter;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.view.NumericEditText;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultipleCoordsAdapter extends RecyclerView.Adapter {
    private final FragmentActivity activity;
    private final int editState;
    private PopupWindow insertPopupWindow;
    private final List<double[]> mList;
    private OnActionListener onActionListener;
    private boolean showSegmentRatio;
    private boolean updatingRatioUi;
    private final List<Double> segmentRatios = new ArrayList();
    private int highlightInsertIndex = -1;

    public MultipleCoordsAdapter(FragmentActivity fragmentActivity, List<double[]> list, int i) {
        this.activity = fragmentActivity;
        this.mList = list;
        this.editState = i;
    }

    public void setShowSegmentRatio(boolean z) {
        this.showSegmentRatio = z;
        notifyDataSetChanged();
    }

    public List<Double> getSegmentRatios() {
        return this.segmentRatios;
    }

    public void syncSegmentRatioSize() {
        int iMax = Math.max(0, this.mList.size() - 1);
        while (this.segmentRatios.size() < iMax) {
            this.segmentRatios.add(null);
        }
        while (this.segmentRatios.size() > iMax) {
            this.segmentRatios.remove(r1.size() - 1);
        }
    }

    public void setSegmentRatios(List<Double> list) {
        this.segmentRatios.clear();
        if (list != null) {
            this.segmentRatios.addAll(list);
        }
        syncSegmentRatioSize();
        this.updatingRatioUi = true;
        notifyDataSetChanged();
        this.updatingRatioUi = false;
    }

    public void setSegmentRatio(int i, Double d) {
        syncSegmentRatioSize();
        if (i < 0 || i >= this.segmentRatios.size()) {
            return;
        }
        this.segmentRatios.set(i, d);
        this.updatingRatioUi = true;
        notifyItemChanged(i);
        this.updatingRatioUi = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_polyline_coords, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, @SuppressLint({"RecyclerView"}) int i) {
        if (i == 0) {
            myViewHolder.tvCoordinate.setText(String.format("P%s(%s)", Integer.valueOf(i + 1), this.activity.getString(R$string.starting_point)));
        } else if (i == this.mList.size() - 1) {
            myViewHolder.tvCoordinate.setText(String.format("P%s(%s)", Integer.valueOf(i + 1), this.activity.getString(R$string.ending_point)));
        } else {
            myViewHolder.tvCoordinate.setText(String.format("P%s", Integer.valueOf(i + 1)));
        }
        myViewHolder.tvCoordinate.setTextColor(ContextCompat.getColor(this.activity, i == this.highlightInsertIndex ? R$color.theme : R$color.text_black));
        myViewHolder.tvModify.setVisibility(this.editState == 0 ? 0 : 8);
        myViewHolder.ivDel.setVisibility(this.editState == 0 ? 0 : 8);
        myViewHolder.ivDel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseActivity) MultipleCoordsAdapter.this.activity).showTipDialog(MultipleCoordsAdapter.this.activity.getString(R$string.want_to_delete), MultipleCoordsAdapter.this.activity.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        int i2;
                        int bindingAdapterPosition = myViewHolder.getBindingAdapterPosition();
                        if (bindingAdapterPosition == -1) {
                            return;
                        }
                        MultipleCoordsAdapter.this.mList.remove(bindingAdapterPosition);
                        MultipleCoordsAdapter.this.syncSegmentRatioSize();
                        if (bindingAdapterPosition < MultipleCoordsAdapter.this.segmentRatios.size()) {
                            MultipleCoordsAdapter.this.segmentRatios.set(bindingAdapterPosition, null);
                        }
                        if (bindingAdapterPosition > 0 && bindingAdapterPosition - 1 < MultipleCoordsAdapter.this.segmentRatios.size()) {
                            MultipleCoordsAdapter.this.segmentRatios.set(i2, null);
                        }
                        MultipleCoordsAdapter.this.highlightInsertIndex = -1;
                        MultipleCoordsAdapter.this.notifyDataSetChanged();
                        if (MultipleCoordsAdapter.this.onActionListener != null) {
                            MultipleCoordsAdapter.this.onActionListener.onDel(bindingAdapterPosition);
                        }
                    }
                });
            }
        });
        myViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int bindingAdapterPosition = myViewHolder.getBindingAdapterPosition();
                if (bindingAdapterPosition == -1 || MultipleCoordsAdapter.this.onActionListener == null) {
                    return;
                }
                MultipleCoordsAdapter.this.onActionListener.onAction(bindingAdapterPosition, myViewHolder.tvCoordinate.getText().toString());
            }
        });
        myViewHolder.item.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                int bindingAdapterPosition;
                if (MultipleCoordsAdapter.this.editState != 0 || (bindingAdapterPosition = myViewHolder.getBindingAdapterPosition()) == -1) {
                    return true;
                }
                MultipleCoordsAdapter.this.showInsertPopup(view, bindingAdapterPosition);
                return true;
            }
        });
        boolean z = this.showSegmentRatio && i < this.mList.size() - 1;
        myViewHolder.lltSegmentRatio.setVisibility(z ? 0 : 8);
        TextWatcher textWatcher = myViewHolder.ratioWatcher;
        if (textWatcher != null) {
            myViewHolder.edtSegmentRatio.removeTextChangedListener(textWatcher);
        }
        if (z) {
            syncSegmentRatioSize();
            Double d = this.segmentRatios.get(i);
            myViewHolder.edtSegmentRatio.setEnabled(this.editState == 0);
            this.updatingRatioUi = true;
            if (d == null) {
                myViewHolder.edtSegmentRatio.setText("");
            } else {
                myViewHolder.edtSegmentRatio.setText(formatRatio(d.doubleValue()));
            }
            this.updatingRatioUi = false;
            TextWatcher textWatcher2 = new TextWatcher() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter.4
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    int bindingAdapterPosition;
                    if (MultipleCoordsAdapter.this.updatingRatioUi || (bindingAdapterPosition = myViewHolder.getBindingAdapterPosition()) == -1 || bindingAdapterPosition >= MultipleCoordsAdapter.this.segmentRatios.size()) {
                        return;
                    }
                    Double dValueOf = TextUtils.isEmpty(editable == null ? "" : editable.toString().trim()) ? null : Double.valueOf(myViewHolder.edtSegmentRatio.getNumericValue());
                    MultipleCoordsAdapter.this.segmentRatios.set(bindingAdapterPosition, dValueOf);
                    if (MultipleCoordsAdapter.this.onActionListener != null) {
                        MultipleCoordsAdapter.this.onActionListener.onRatioChanged(bindingAdapterPosition, dValueOf);
                    }
                }
            };
            myViewHolder.ratioWatcher = textWatcher2;
            myViewHolder.edtSegmentRatio.addTextChangedListener(textWatcher2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInsertPopup(View view, final int i) {
        dismissInsertPopup();
        View viewInflate = LayoutInflater.from(this.activity).inflate(R$layout.popup_window, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.container);
        TextView textView = (TextView) LayoutInflater.from(this.activity).inflate(R$layout.item_dropdown, viewGroup, false);
        textView.setText("\u200e" + this.activity.getString(R$string.insert_point_above));
        textView.setTextDirection(3);
        textView.setClickable(true);
        textView.setBackgroundResource(R$drawable.bg_ripple_round_white);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MultipleCoordsAdapter.$r8$lambda$B4UMWCj3IQe3gMTA25GzU5s7mWE(this.f$0, i, view2);
            }
        });
        TextView textView2 = (TextView) LayoutInflater.from(this.activity).inflate(R$layout.item_dropdown, viewGroup, false);
        textView2.setText("\u200e" + this.activity.getString(R$string.insert_point_below));
        textView2.setTextDirection(3);
        textView2.setClickable(true);
        textView2.setBackgroundResource(R$drawable.bg_ripple_round_white);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MultipleCoordsAdapter.m1977$r8$lambda$70H49SFwmqjjuoB7Ms0NxEdRw(this.f$0, i, view2);
            }
        });
        viewGroup.addView(textView);
        viewGroup.addView(textView2);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        this.insertPopupWindow = popupWindow;
        popupWindow.setOutsideTouchable(true);
        this.insertPopupWindow.setBackgroundDrawable(ContextCompat.getDrawable(this.activity, R$drawable.bg_round_white));
        this.insertPopupWindow.setElevation(8.0f);
        this.insertPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.qianhe.yct.adapter.MultipleCoordsAdapter$$ExternalSyntheticLambda2
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f$0.insertPopupWindow = null;
            }
        });
        viewInflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.insertPopupWindow.showAsDropDown(view, Math.max(0, (view.getWidth() - viewInflate.getMeasuredWidth()) / 2), 0, 8388611);
    }

    public static /* synthetic */ void $r8$lambda$B4UMWCj3IQe3gMTA25GzU5s7mWE(MultipleCoordsAdapter multipleCoordsAdapter, int i, View view) {
        multipleCoordsAdapter.dismissInsertPopup();
        OnActionListener onActionListener = multipleCoordsAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onInsert(i, true);
        }
    }

    /* renamed from: $r8$lambda$70H49SFwmqj-ju-oB7Ms0NxEdRw, reason: not valid java name */
    public static /* synthetic */ void m1977$r8$lambda$70H49SFwmqjjuoB7Ms0NxEdRw(MultipleCoordsAdapter multipleCoordsAdapter, int i, View view) {
        multipleCoordsAdapter.dismissInsertPopup();
        OnActionListener onActionListener = multipleCoordsAdapter.onActionListener;
        if (onActionListener != null) {
            onActionListener.onInsert(i, false);
        }
    }

    private void dismissInsertPopup() {
        PopupWindow popupWindow = this.insertPopupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.insertPopupWindow.dismiss();
        }
        this.insertPopupWindow = null;
    }

    private String formatRatio(double d) {
        String str = String.format(Locale.US, "%.3f", Double.valueOf(d));
        return str.contains(".") ? str.replaceAll("0+$", "").replaceAll("\\.$", "") : str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.onActionListener = onActionListener;
    }

    public void addCoords(double[] dArr) {
        this.mList.add(dArr);
        syncSegmentRatioSize();
        this.highlightInsertIndex = -1;
        notifyDataSetChanged();
    }

    public void insertCoords(int i, double[] dArr, boolean z) {
        if (i < 0 || i > this.mList.size() || dArr == null) {
            return;
        }
        int size = this.mList.size();
        this.mList.add(i, dArr);
        if (i == 0) {
            this.segmentRatios.add(0, Double.valueOf(0.0d));
        } else if (i >= size) {
            this.segmentRatios.add(Double.valueOf(0.0d));
        } else if (z) {
            this.segmentRatios.add(i, Double.valueOf(0.0d));
        } else {
            this.segmentRatios.add(i - 1, Double.valueOf(0.0d));
        }
        syncSegmentRatioSize();
        this.highlightInsertIndex = i;
        notifyDataSetChanged();
    }

    public void clear() {
        this.mList.clear();
        this.segmentRatios.clear();
        this.highlightInsertIndex = -1;
        dismissInsertPopup();
        notifyDataSetChanged();
    }

    public interface OnActionListener {
        void onAction(int i, String str);

        void onDel(int i);

        void onInsert(int i, boolean z);

        void onRatioChanged(int i, Double d);

        /* renamed from: com.qianhe.yct.adapter.MultipleCoordsAdapter$OnActionListener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onRatioChanged(OnActionListener onActionListener, int i, Double d) {
            }

            public static void $default$onInsert(OnActionListener onActionListener, int i, boolean z) {
            }
        }
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        NumericEditText edtSegmentRatio;
        View item;
        ImageView ivDel;
        LinearLayout lltSegmentRatio;
        TextWatcher ratioWatcher;
        TextView tvCoordinate;
        TextView tvModify;

        public MyViewHolder(View view) {
            super(view);
            this.item = view.findViewById(R$id.item);
            this.tvCoordinate = (TextView) view.findViewById(R$id.tvCoordinate);
            this.ivDel = (ImageView) view.findViewById(R$id.ivDel);
            this.tvModify = (TextView) view.findViewById(R$id.tvModify);
            this.lltSegmentRatio = (LinearLayout) view.findViewById(R$id.lltSegmentRatio);
            NumericEditText numericEditText = (NumericEditText) view.findViewById(R$id.edtSegmentRatio);
            this.edtSegmentRatio = numericEditText;
            numericEditText.setFillZeroOnBlur(false);
        }
    }
}
