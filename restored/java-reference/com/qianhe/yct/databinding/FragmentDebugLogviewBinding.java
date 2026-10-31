package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentDebugLogviewBinding {
    public final Button btnClear;
    public final Button btnFixed;
    public final AppCompatTextView btnHistory;
    public final Button btnSend;
    public final EditText edtOrder;
    public final View line;
    public final LinearLayout lltInfo;
    public final LinearLayout lltsave;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    public final RecyclerView rcv;
    public final ConstraintLayout rltAngle;
    public final RelativeLayout rltBest;
    public final RelativeLayout rltIns;
    public final RelativeLayout rltLeft;
    public final LinearLayout rltRight;
    private final LinearLayout rootView;
    public final TextView tvBestElev;
    public final TextView tvBestElevDiff;
    public final TextView tvBestLat;
    public final TextView tvBestLon;
    public final TextView tvBestTitle;
    public final TextView tvDiffage;
    public final TextView tvExtHeading;
    public final TextView tvExtPitch;
    public final TextView tvExtRoll;
    public final TextView tvExtTitle;
    public final TextView tvHDOP;
    public final TextView tvHRMS;
    public final TextView tvInsElev;
    public final TextView tvInsElevR;
    public final TextView tvInsHeading;
    public final TextView tvInsLat;
    public final TextView tvInsLatR;
    public final TextView tvInsLon;
    public final TextView tvInsLonR;
    public final TextView tvInsPitch;
    public final TextView tvInsRoll;
    public final TextView tvInsStatus;
    public final TextView tvInsTitle;
    public final TextView tvQuality;
    public final TextView tvSave;
    public final TextView tvSaveBestpos;
    public final TextView tvSaveGst;
    public final TextView tvSaveIns;
    public final TextView tvSaveSnr;
    public final TextView tvSolutionNum;
    public final TextView tvUTC;
    public final TextView tvVDOP;
    public final TextView tvVRMS;
    public final View view;

    private FragmentDebugLogviewBinding(LinearLayout linearLayout, Button button, Button button2, AppCompatTextView appCompatTextView, Button button3, EditText editText, View view, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, RecyclerView recyclerView, ConstraintLayout constraintLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, LinearLayout linearLayout5, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24, TextView textView25, TextView textView26, TextView textView27, TextView textView28, TextView textView29, TextView textView30, TextView textView31, TextView textView32, TextView textView33, View view2) {
        this.rootView = linearLayout;
        this.btnClear = button;
        this.btnFixed = button2;
        this.btnHistory = appCompatTextView;
        this.btnSend = button3;
        this.edtOrder = editText;
        this.line = view;
        this.lltInfo = linearLayout2;
        this.lltsave = linearLayout3;
        this.main = linearLayout4;
        this.nsv = nestedScrollView;
        this.rcv = recyclerView;
        this.rltAngle = constraintLayout;
        this.rltBest = relativeLayout;
        this.rltIns = relativeLayout2;
        this.rltLeft = relativeLayout3;
        this.rltRight = linearLayout5;
        this.tvBestElev = textView;
        this.tvBestElevDiff = textView2;
        this.tvBestLat = textView3;
        this.tvBestLon = textView4;
        this.tvBestTitle = textView5;
        this.tvDiffage = textView6;
        this.tvExtHeading = textView7;
        this.tvExtPitch = textView8;
        this.tvExtRoll = textView9;
        this.tvExtTitle = textView10;
        this.tvHDOP = textView11;
        this.tvHRMS = textView12;
        this.tvInsElev = textView13;
        this.tvInsElevR = textView14;
        this.tvInsHeading = textView15;
        this.tvInsLat = textView16;
        this.tvInsLatR = textView17;
        this.tvInsLon = textView18;
        this.tvInsLonR = textView19;
        this.tvInsPitch = textView20;
        this.tvInsRoll = textView21;
        this.tvInsStatus = textView22;
        this.tvInsTitle = textView23;
        this.tvQuality = textView24;
        this.tvSave = textView25;
        this.tvSaveBestpos = textView26;
        this.tvSaveGst = textView27;
        this.tvSaveIns = textView28;
        this.tvSaveSnr = textView29;
        this.tvSolutionNum = textView30;
        this.tvUTC = textView31;
        this.tvVDOP = textView32;
        this.tvVRMS = textView33;
        this.view = view2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDebugLogviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDebugLogviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_debug_logview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDebugLogviewBinding bind(View view) {
        int i = R$id.btnClear;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R$id.btnFixed;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R$id.btnHistory;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = R$id.btnSend;
                    Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button3 != null) {
                        i = R$id.edtOrder;
                        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText != null) {
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R$id.line);
                            i = R$id.lltInfo;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R$id.lltsave;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                    i = R$id.nsv;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                    if (nestedScrollView != null) {
                                        i = R$id.rcv;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                        if (recyclerView != null) {
                                            i = R$id.rltAngle;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                            if (constraintLayout != null) {
                                                i = R$id.rltBest;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                if (relativeLayout != null) {
                                                    i = R$id.rltIns;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                    if (relativeLayout2 != null) {
                                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R$id.rltLeft);
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R$id.rltRight);
                                                        i = R$id.tvBestElev;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView != null) {
                                                            i = R$id.tvBestElevDiff;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView2 != null) {
                                                                i = R$id.tvBestLat;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView3 != null) {
                                                                    i = R$id.tvBestLon;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView4 != null) {
                                                                        i = R$id.tvBestTitle;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView5 != null) {
                                                                            i = R$id.tvDiffage;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView6 != null) {
                                                                                i = R$id.tvExtHeading;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView7 != null) {
                                                                                    i = R$id.tvExtPitch;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView8 != null) {
                                                                                        i = R$id.tvExtRoll;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView9 != null) {
                                                                                            i = R$id.tvExtTitle;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView10 != null) {
                                                                                                i = R$id.tvHDOP;
                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView11 != null) {
                                                                                                    i = R$id.tvHRMS;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView12 != null) {
                                                                                                        i = R$id.tvInsElev;
                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView13 != null) {
                                                                                                            i = R$id.tvInsElevR;
                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textView14 != null) {
                                                                                                                i = R$id.tvInsHeading;
                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView15 != null) {
                                                                                                                    i = R$id.tvInsLat;
                                                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textView16 != null) {
                                                                                                                        i = R$id.tvInsLatR;
                                                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (textView17 != null) {
                                                                                                                            i = R$id.tvInsLon;
                                                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (textView18 != null) {
                                                                                                                                i = R$id.tvInsLonR;
                                                                                                                                TextView textView19 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (textView19 != null) {
                                                                                                                                    i = R$id.tvInsPitch;
                                                                                                                                    TextView textView20 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                    if (textView20 != null) {
                                                                                                                                        i = R$id.tvInsRoll;
                                                                                                                                        TextView textView21 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                        if (textView21 != null) {
                                                                                                                                            i = R$id.tvInsStatus;
                                                                                                                                            TextView textView22 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                            if (textView22 != null) {
                                                                                                                                                i = R$id.tvInsTitle;
                                                                                                                                                TextView textView23 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                if (textView23 != null) {
                                                                                                                                                    i = R$id.tvQuality;
                                                                                                                                                    TextView textView24 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                    if (textView24 != null) {
                                                                                                                                                        i = R$id.tvSave;
                                                                                                                                                        TextView textView25 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                        if (textView25 != null) {
                                                                                                                                                            i = R$id.tvSaveBestpos;
                                                                                                                                                            TextView textView26 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                            if (textView26 != null) {
                                                                                                                                                                i = R$id.tvSaveGst;
                                                                                                                                                                TextView textView27 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                if (textView27 != null) {
                                                                                                                                                                    i = R$id.tvSaveIns;
                                                                                                                                                                    TextView textView28 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                    if (textView28 != null) {
                                                                                                                                                                        i = R$id.tvSaveSnr;
                                                                                                                                                                        TextView textView29 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                        if (textView29 != null) {
                                                                                                                                                                            i = R$id.tvSolutionNum;
                                                                                                                                                                            TextView textView30 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                            if (textView30 != null) {
                                                                                                                                                                                i = R$id.tvUTC;
                                                                                                                                                                                TextView textView31 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                                if (textView31 != null) {
                                                                                                                                                                                    i = R$id.tvVDOP;
                                                                                                                                                                                    TextView textView32 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                                    if (textView32 != null) {
                                                                                                                                                                                        i = R$id.tvVRMS;
                                                                                                                                                                                        TextView textView33 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                                                        if (textView33 != null) {
                                                                                                                                                                                            return new FragmentDebugLogviewBinding(linearLayout3, button, button2, appCompatTextView, button3, editText, viewFindChildViewById, linearLayout, linearLayout2, linearLayout3, nestedScrollView, recyclerView, constraintLayout, relativeLayout, relativeLayout2, relativeLayout3, linearLayout4, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24, textView25, textView26, textView27, textView28, textView29, textView30, textView31, textView32, textView33, ViewBindings.findChildViewById(view, R$id.view));
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
