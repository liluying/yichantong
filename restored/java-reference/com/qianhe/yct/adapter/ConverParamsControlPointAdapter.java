package com.qianhe.yct.adapter;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;
import com.qianhe.yct.adapter.ConverParamsControlPointAdapter;
import com.qianhe.yct.bean.ConverParamsControlPointInput;
import com.qianhe.yct.view.NumericEditText;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ConverParamsControlPointAdapter extends RecyclerView.Adapter {
    private Callback callback;
    private OnInputFocusListener inputFocusListener;
    private int minPointCount = 2;
    private final List<ConverParamsControlPointInput> points;
    private boolean sevenParamMode;

    public interface Callback {
        void onAddPoint();

        void onCollectDst(int i);

        void onDataChanged();

        void onDelete(int i);

        void onPickKnownPoint(int i);
    }

    public interface OnInputFocusListener {
        void onInputFocused(View view);
    }

    public ConverParamsControlPointAdapter(List<ConverParamsControlPointInput> list) {
        this.points = list;
    }

    public void setSevenParamMode(boolean z) {
        this.sevenParamMode = z;
        this.minPointCount = z ? 3 : 2;
        notifyDataSetChanged();
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public void setOnInputFocusListener(OnInputFocusListener onInputFocusListener) {
        this.inputFocusListener = onInputFocusListener;
    }

    public int getMinPointCount() {
        return this.minPointCount;
    }

    public void syncVisiblePointsFromViews(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return;
        }
        for (int i = 0; i < this.points.size(); i++) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i);
            if (viewHolderFindViewHolderForAdapterPosition instanceof ViewHolder) {
                ((ViewHolder) viewHolderFindViewHolderForAdapterPosition).syncToPoint();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == this.points.size() ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new FooterViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_conver_params_add_footer, viewGroup, false));
        }
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_conver_params_control_point, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof ViewHolder) {
            ((ViewHolder) viewHolder).bind(this.points.get(i), i);
        } else if (viewHolder instanceof FooterViewHolder) {
            ((FooterViewHolder) viewHolder).bind();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
        if (viewHolder instanceof ViewHolder) {
            ((ViewHolder) viewHolder).clearEditorFocus();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.points.size() + 1;
    }

    class FooterViewHolder extends RecyclerView.ViewHolder {
        void bind() {
        }

        FooterViewHolder(View view) {
            super(view);
            view.findViewById(R$id.tvAddPoint).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$FooterViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ConverParamsControlPointAdapter.FooterViewHolder.$r8$lambda$25lu8nT8dw5_u_pxFXP_OY1AcIk(this.f$0, view2);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$25lu8nT8dw5_u_pxFXP_OY1AcIk(FooterViewHolder footerViewHolder, View view) {
            if (ConverParamsControlPointAdapter.this.callback != null) {
                ConverParamsControlPointAdapter.this.callback.onAddPoint();
            }
        }
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        private final NumericEditText edtDstX;
        private final NumericEditText edtDstY;
        private final NumericEditText edtDstZ;
        private final NumericEditText edtSrcX;
        private final NumericEditText edtSrcY;
        private final NumericEditText edtSrcZ;
        private final ImageView ivDelete;
        private final TextView tvCollectDst;
        private final TextView tvPickKnownPoint;
        private final TextView tvPointIndex;
        private boolean updatingText;

        ViewHolder(View view) {
            super(view);
            this.tvPointIndex = (TextView) view.findViewById(R$id.tvPointIndex);
            ImageView imageView = (ImageView) view.findViewById(R$id.ivDelete);
            this.ivDelete = imageView;
            NumericEditText numericEditText = (NumericEditText) view.findViewById(R$id.edtSrcX);
            this.edtSrcX = numericEditText;
            NumericEditText numericEditText2 = (NumericEditText) view.findViewById(R$id.edtSrcY);
            this.edtSrcY = numericEditText2;
            NumericEditText numericEditText3 = (NumericEditText) view.findViewById(R$id.edtSrcZ);
            this.edtSrcZ = numericEditText3;
            NumericEditText numericEditText4 = (NumericEditText) view.findViewById(R$id.edtDstX);
            this.edtDstX = numericEditText4;
            NumericEditText numericEditText5 = (NumericEditText) view.findViewById(R$id.edtDstY);
            this.edtDstY = numericEditText5;
            NumericEditText numericEditText6 = (NumericEditText) view.findViewById(R$id.edtDstZ);
            this.edtDstZ = numericEditText6;
            TextView textView = (TextView) view.findViewById(R$id.tvCollectDst);
            this.tvCollectDst = textView;
            TextView textView2 = (TextView) view.findViewById(R$id.tvPickKnownPoint);
            this.tvPickKnownPoint = textView2;
            SimpleTextWatcher simpleTextWatcher = new SimpleTextWatcher(new Runnable() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onSrcTextChanged();
                }
            });
            SimpleTextWatcher simpleTextWatcher2 = new SimpleTextWatcher(new Runnable() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onDstTextChanged();
                }
            });
            numericEditText.addTextChangedListener(simpleTextWatcher);
            numericEditText2.addTextChangedListener(simpleTextWatcher);
            numericEditText3.addTextChangedListener(simpleTextWatcher);
            numericEditText4.addTextChangedListener(simpleTextWatcher2);
            numericEditText5.addTextChangedListener(simpleTextWatcher2);
            numericEditText6.addTextChangedListener(simpleTextWatcher2);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ConverParamsControlPointAdapter.ViewHolder.$r8$lambda$NdiUVKeMKsjG8KSPEwrSK4F6joA(this.f$0, view2);
                }
            });
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ConverParamsControlPointAdapter.ViewHolder.$r8$lambda$SjvKdKr2Iv01xDIiXcVCeRmBifM(this.f$0, view2);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ConverParamsControlPointAdapter.ViewHolder.$r8$lambda$ziaYub2y52rHjM6SJwBqY6Yky4c(this.f$0, view2);
                }
            });
            NumericEditText.OnFocusListener onFocusListener = new NumericEditText.OnFocusListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda5
                @Override // com.qianhe.yct.view.NumericEditText.OnFocusListener
                public final void onFocusChange(View view2, boolean z) {
                    ConverParamsControlPointAdapter.ViewHolder.$r8$lambda$VJ09VSG3RRCRthFr1N4OoFszNMQ(this.f$0, view2, z);
                }
            };
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qianhe.yct.adapter.ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ConverParamsControlPointAdapter.ViewHolder.m1957$r8$lambda$XRj46eB5KP178w7rZGtgNLYNxE(this.f$0, view2);
                }
            };
            numericEditText.setOnFocusListener(onFocusListener);
            numericEditText2.setOnFocusListener(onFocusListener);
            numericEditText3.setOnFocusListener(onFocusListener);
            numericEditText4.setOnFocusListener(onFocusListener);
            numericEditText5.setOnFocusListener(onFocusListener);
            numericEditText6.setOnFocusListener(onFocusListener);
            numericEditText.setOnClickListener(onClickListener);
            numericEditText2.setOnClickListener(onClickListener);
            numericEditText3.setOnClickListener(onClickListener);
            numericEditText4.setOnClickListener(onClickListener);
            numericEditText5.setOnClickListener(onClickListener);
            numericEditText6.setOnClickListener(onClickListener);
        }

        public static /* synthetic */ void $r8$lambda$NdiUVKeMKsjG8KSPEwrSK4F6joA(ViewHolder viewHolder, View view) {
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition < 0 || ConverParamsControlPointAdapter.this.callback == null) {
                return;
            }
            ConverParamsControlPointAdapter.this.callback.onDelete(bindingAdapterPosition);
        }

        public static /* synthetic */ void $r8$lambda$SjvKdKr2Iv01xDIiXcVCeRmBifM(ViewHolder viewHolder, View view) {
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition < 0 || ConverParamsControlPointAdapter.this.callback == null) {
                return;
            }
            ConverParamsControlPointAdapter.this.callback.onCollectDst(bindingAdapterPosition);
        }

        public static /* synthetic */ void $r8$lambda$ziaYub2y52rHjM6SJwBqY6Yky4c(ViewHolder viewHolder, View view) {
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition < 0 || ConverParamsControlPointAdapter.this.callback == null) {
                return;
            }
            ConverParamsControlPointAdapter.this.callback.onPickKnownPoint(bindingAdapterPosition);
        }

        public static /* synthetic */ void $r8$lambda$VJ09VSG3RRCRthFr1N4OoFszNMQ(ViewHolder viewHolder, View view, boolean z) {
            if (!z) {
                viewHolder.getClass();
            } else if (ConverParamsControlPointAdapter.this.inputFocusListener != null) {
                ConverParamsControlPointAdapter.this.inputFocusListener.onInputFocused(view);
            }
        }

        /* renamed from: $r8$lambda$XRj46eB5KP178w7rZGtgNL-YNxE, reason: not valid java name */
        public static /* synthetic */ void m1957$r8$lambda$XRj46eB5KP178w7rZGtgNLYNxE(ViewHolder viewHolder, View view) {
            if (ConverParamsControlPointAdapter.this.inputFocusListener != null) {
                ConverParamsControlPointAdapter.this.inputFocusListener.onInputFocused(view);
            }
        }

        void bind(ConverParamsControlPointInput converParamsControlPointInput, int i) {
            this.updatingText = true;
            this.tvPointIndex.setText(this.itemView.getContext().getString(R$string.control_point_index, Integer.valueOf(i + 1)));
            this.ivDelete.setVisibility(ConverParamsControlPointAdapter.this.points.size() > ConverParamsControlPointAdapter.this.minPointCount ? 0 : 8);
            int i2 = ConverParamsControlPointAdapter.this.sevenParamMode ? 0 : 8;
            this.edtSrcZ.setVisibility(i2);
            this.edtDstZ.setVisibility(i2);
            setTextIfChanged(this.edtSrcX, converParamsControlPointInput.srcX);
            setTextIfChanged(this.edtSrcY, converParamsControlPointInput.srcY);
            setTextIfChanged(this.edtSrcZ, converParamsControlPointInput.srcZ);
            setTextIfChanged(this.edtDstX, converParamsControlPointInput.dstX);
            setTextIfChanged(this.edtDstY, converParamsControlPointInput.dstY);
            setTextIfChanged(this.edtDstZ, converParamsControlPointInput.dstZ);
            this.updatingText = false;
        }

        void clearEditorFocus() {
            this.edtSrcX.clearFocus();
            this.edtSrcY.clearFocus();
            this.edtSrcZ.clearFocus();
            this.edtDstX.clearFocus();
            this.edtDstY.clearFocus();
            this.edtDstZ.clearFocus();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSrcTextChanged() {
            if (this.updatingText) {
                return;
            }
            syncSrcToPoint();
            notifyDataChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onDstTextChanged() {
            if (this.updatingText) {
                return;
            }
            syncDstToPoint();
            notifyDataChanged();
        }

        private void syncSrcToPoint() {
            int bindingAdapterPosition = getBindingAdapterPosition();
            if (bindingAdapterPosition < 0 || bindingAdapterPosition >= ConverParamsControlPointAdapter.this.points.size()) {
                return;
            }
            ConverParamsControlPointInput converParamsControlPointInput = (ConverParamsControlPointInput) ConverParamsControlPointAdapter.this.points.get(bindingAdapterPosition);
            converParamsControlPointInput.srcX = this.edtSrcX.getNumericValue();
            converParamsControlPointInput.srcY = this.edtSrcY.getNumericValue();
            converParamsControlPointInput.srcZ = this.edtSrcZ.getNumericValue();
        }

        private void syncDstToPoint() {
            int bindingAdapterPosition = getBindingAdapterPosition();
            if (bindingAdapterPosition < 0 || bindingAdapterPosition >= ConverParamsControlPointAdapter.this.points.size()) {
                return;
            }
            ConverParamsControlPointInput converParamsControlPointInput = (ConverParamsControlPointInput) ConverParamsControlPointAdapter.this.points.get(bindingAdapterPosition);
            converParamsControlPointInput.dstX = this.edtDstX.getNumericValue();
            converParamsControlPointInput.dstY = this.edtDstY.getNumericValue();
            converParamsControlPointInput.dstZ = this.edtDstZ.getNumericValue();
        }

        void syncToPoint() {
            syncSrcToPoint();
            syncDstToPoint();
        }

        private void setTextIfChanged(NumericEditText numericEditText, double d) {
            String value = formatValue(d);
            Editable text = numericEditText.getText();
            if (TextUtils.equals(value, text != null ? text.toString() : "")) {
                return;
            }
            numericEditText.setText(value);
        }

        private void notifyDataChanged() {
            if (ConverParamsControlPointAdapter.this.callback != null) {
                ConverParamsControlPointAdapter.this.callback.onDataChanged();
            }
        }

        private String formatValue(double d) {
            if (d == 0.0d) {
                return "0";
            }
            return EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(BigDecimal.valueOf(d).setScale(4, RoundingMode.HALF_UP)).toPlainString();
        }
    }

    private static class SimpleTextWatcher implements TextWatcher {
        private final Runnable onChange;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        SimpleTextWatcher(Runnable runnable) {
            this.onChange = runnable;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.onChange.run();
        }
    }
}
