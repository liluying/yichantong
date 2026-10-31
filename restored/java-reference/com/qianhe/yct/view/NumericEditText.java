package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import com.qianhe.yct.R$styleable;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NumericEditText extends AppCompatEditText {
    private boolean clearedZeroOnFocus;
    private boolean fillZeroOnBlur;
    private boolean normalizingText;
    public OnFocusListener onFocusListener;
    private boolean supportDecimals;
    private boolean supportNegative;

    public interface OnFocusListener {
        void onFocusChange(View view, boolean z);
    }

    public NumericEditText(Context context) {
        super(context);
        this.supportNegative = true;
        this.supportDecimals = true;
        this.normalizingText = false;
        this.fillZeroOnBlur = true;
        this.clearedZeroOnFocus = false;
        init(null);
    }

    public NumericEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.supportNegative = true;
        this.supportDecimals = true;
        this.normalizingText = false;
        this.fillZeroOnBlur = true;
        this.clearedZeroOnFocus = false;
        init(attributeSet);
    }

    public NumericEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.supportNegative = true;
        this.supportDecimals = true;
        this.normalizingText = false;
        this.fillZeroOnBlur = true;
        this.clearedZeroOnFocus = false;
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.NumericEditText);
            try {
                this.supportNegative = typedArrayObtainStyledAttributes.getBoolean(R$styleable.NumericEditText_supportNegative, true);
                this.supportDecimals = typedArrayObtainStyledAttributes.getBoolean(R$styleable.NumericEditText_supportDecimals, true);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        int i = this.supportDecimals ? 8194 : 2;
        if (this.supportNegative) {
            i |= InternalZipConstants.BUFF_SIZE;
        }
        setInputType(i);
        setTextDirection(3);
        setLayoutDirection(0);
        setFilters(new InputFilter[]{new NumericInputFilter(this.supportNegative, this.supportDecimals)});
        initTextNormalizer();
        setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.view.NumericEditText.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    String string = NumericEditText.this.getText() != null ? NumericEditText.this.getText().toString() : "";
                    if ((string.isEmpty() || ".".equals(string) || "-".equals(string)) && (NumericEditText.this.fillZeroOnBlur || NumericEditText.this.clearedZeroOnFocus)) {
                        NumericEditText.this.setText("0");
                    }
                    NumericEditText.this.clearedZeroOnFocus = false;
                } else {
                    if (!(NumericEditText.this.getText() != null ? NumericEditText.this.getText().toString() : "").isEmpty() && NumericEditText.this.getNumericValue() == 0.0d) {
                        NumericEditText.this.clearedZeroOnFocus = true;
                        NumericEditText.this.setText("");
                    } else {
                        NumericEditText.this.clearedZeroOnFocus = false;
                    }
                }
                OnFocusListener onFocusListener = NumericEditText.this.onFocusListener;
                if (onFocusListener != null) {
                    onFocusListener.onFocusChange(view, z);
                }
            }
        });
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        forceHorizontalParentLtr();
    }

    private void forceHorizontalParentLtr() {
        ViewParent parent = getParent();
        if (parent instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) parent;
            if (linearLayout.getOrientation() == 0) {
                linearLayout.setLayoutDirection(0);
            }
        }
    }

    private void initTextNormalizer() {
        addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.view.NumericEditText.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (NumericEditText.this.normalizingText || !NumericEditText.this.supportNegative) {
                    return;
                }
                String string = editable.toString();
                String strNormalizeNumericText = NumericEditText.normalizeNumericText(string);
                if (strNormalizeNumericText.equals(string)) {
                    return;
                }
                NumericEditText.this.normalizingText = true;
                NumericEditText.this.setText(strNormalizeNumericText);
                NumericEditText.this.setSelection(strNormalizeNumericText.length());
                NumericEditText.this.normalizingText = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String normalizeNumericText(String str) {
        if (str == null || str.isEmpty() || str.startsWith("-") || !str.endsWith("-") || str.length() <= 1) {
            return str;
        }
        return "-" + str.substring(0, str.length() - 1);
    }

    public void setFillZeroOnBlur(boolean z) {
        this.fillZeroOnBlur = z;
    }

    public boolean isFillZeroOnBlur() {
        return this.fillZeroOnBlur;
    }

    public void setOnFocusListener(OnFocusListener onFocusListener) {
        this.onFocusListener = onFocusListener;
    }

    public double getNumericValue() {
        try {
            String strNormalizeNumericText = normalizeNumericText(getText().toString());
            if (!strNormalizeNumericText.isEmpty() && !".".equals(strNormalizeNumericText) && !"-".equals(strNormalizeNumericText)) {
                return Double.parseDouble(strNormalizeNumericText);
            }
            return 0.0d;
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    private class NumericInputFilter implements InputFilter {
        private final boolean allowDecimal;
        private final boolean allowNegative;

        public NumericInputFilter(boolean z, boolean z2) {
            this.allowNegative = z;
            this.allowDecimal = z2;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (charSequence.equals("")) {
                return null;
            }
            if (isValidNumericInput(spanned.toString().substring(0, i3) + charSequence.toString() + spanned.toString().substring(i4))) {
                return null;
            }
            return "";
        }

        private boolean isValidNumericInput(String str) {
            boolean z;
            String strNormalizeNumericText = NumericEditText.normalizeNumericText(str);
            if (strNormalizeNumericText.isEmpty()) {
                return true;
            }
            if (this.allowNegative && strNormalizeNumericText.startsWith("-")) {
                String strSubstring = strNormalizeNumericText.substring(1);
                if (strNormalizeNumericText.indexOf("-", 1) != -1) {
                    return false;
                }
                if (strSubstring.isEmpty()) {
                    return true;
                }
                strNormalizeNumericText = strSubstring;
                z = true;
            } else {
                if (!this.allowNegative && strNormalizeNumericText.contains("-")) {
                    return false;
                }
                z = false;
            }
            int i = 0;
            for (int i2 = 0; i2 < strNormalizeNumericText.length(); i2++) {
                char cCharAt = strNormalizeNumericText.charAt(i2);
                if (cCharAt == '.') {
                    if (!this.allowDecimal) {
                        return false;
                    }
                    i++;
                } else if (!Character.isDigit(cCharAt)) {
                    return false;
                }
                if (i > 1) {
                    return false;
                }
            }
            if (strNormalizeNumericText.startsWith("00") || (strNormalizeNumericText.startsWith("0") && strNormalizeNumericText.length() > 1 && strNormalizeNumericText.charAt(1) != '.')) {
                return false;
            }
            return (z && this.allowNegative && strNormalizeNumericText.startsWith(".")) ? false : true;
        }
    }

    public boolean isSupportNegative() {
        return this.supportNegative;
    }

    public void setSupportNegative(boolean z) {
        this.supportNegative = z;
        updateInputFilter();
    }

    public boolean isSupportDecimals() {
        return this.supportDecimals;
    }

    public void setSupportDecimals(boolean z) {
        this.supportDecimals = z;
        updateInputFilter();
    }

    private void updateInputFilter() {
        int i = this.supportDecimals ? 8194 : 2;
        if (this.supportNegative) {
            i |= InternalZipConstants.BUFF_SIZE;
        }
        setInputType(i);
        setFilters(new InputFilter[]{new NumericInputFilter(this.supportNegative, this.supportDecimals)});
    }
}
