package com.qh.xcad;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class XCadItemAreaPoint implements Cloneable {
    public XCadItemPointInfo[] itemAreaPosition = null;
    public boolean visible = true;
    public XCadItemAreaStyle xCadItemAreaStyle = new XCadItemAreaStyle();

    public void reset() {
        this.itemAreaPosition = null;
        this.xCadItemAreaStyle.reset();
        this.visible = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public XCadItemAreaPoint m1001clone() {
        XCadItemAreaPoint xCadItemAreaPoint = (XCadItemAreaPoint) super.clone();
        XCadItemPointInfo[] xCadItemPointInfoArr = this.itemAreaPosition;
        if (xCadItemPointInfoArr != null) {
            xCadItemAreaPoint.itemAreaPosition = new XCadItemPointInfo[xCadItemPointInfoArr.length];
            int i = 0;
            while (true) {
                XCadItemPointInfo[] xCadItemPointInfoArr2 = this.itemAreaPosition;
                if (i >= xCadItemPointInfoArr2.length) {
                    break;
                }
                xCadItemAreaPoint.itemAreaPosition[i] = xCadItemPointInfoArr2[i].m1003clone();
                i++;
            }
        }
        XCadItemAreaStyle xCadItemAreaStyle = this.xCadItemAreaStyle;
        if (xCadItemAreaStyle != null) {
            xCadItemAreaPoint.xCadItemAreaStyle = xCadItemAreaStyle.m1002clone();
        }
        return xCadItemAreaPoint;
    }

    public static class XCadItemPointInfo implements Cloneable {
        public String info;
        public boolean infoVis;
        public double x;
        public double y;

        public XCadItemPointInfo(double d, double d2, String str, boolean z) {
            this.x = d;
            this.y = d2;
            this.info = str;
            this.infoVis = z;
        }

        public XCadItemPointInfo(double d, double d2, String str) {
            this.infoVis = true;
            this.x = d;
            this.y = d2;
            this.info = str;
        }

        public XCadItemPointInfo(double d, double d2) {
            this.info = null;
            this.infoVis = true;
            this.x = d;
            this.y = d2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public XCadItemPointInfo m1003clone() {
            return (XCadItemPointInfo) super.clone();
        }
    }

    public static class XCadItemAreaStyle implements Cloneable {
        public boolean closed;
        public boolean drawPointCircle;
        public boolean fill;

        public XCadItemAreaStyle(boolean z, boolean z2, boolean z3) {
            this.drawPointCircle = z;
            this.fill = z2;
            this.closed = z3;
        }

        public XCadItemAreaStyle() {
            this.drawPointCircle = false;
            this.fill = false;
            this.closed = false;
        }

        public void setXCadItemAreaStyle(XCadItemAreaStyle xCadItemAreaStyle) {
            if (xCadItemAreaStyle == null) {
                reset();
                return;
            }
            this.drawPointCircle = xCadItemAreaStyle.drawPointCircle;
            this.fill = xCadItemAreaStyle.fill;
            this.closed = xCadItemAreaStyle.closed;
        }

        public void reset() {
            this.drawPointCircle = false;
            this.fill = false;
            this.closed = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public XCadItemAreaStyle m1002clone() {
            return (XCadItemAreaStyle) super.clone();
        }
    }
}
