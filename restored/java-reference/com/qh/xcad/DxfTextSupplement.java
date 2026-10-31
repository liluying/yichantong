package com.qh.xcad;

import androidx.recyclerview.widget.RecyclerView;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
final class DxfTextSupplement {
    private static final String TAG = "DxfTextSupplement";

    private DxfTextSupplement() {
    }

    static void mergeMissingTexts(XCadScene xCadScene, String str) {
        if (xCadScene == null || xCadScene.entities == null || str == null || !str.toLowerCase(Locale.ROOT).endsWith(".dxf")) {
            return;
        }
        List<ParsedText> topLevelTexts = parseTopLevelTexts(str);
        if (topLevelTexts.isEmpty()) {
            return;
        }
        int i = 0;
        for (ParsedText parsedText : topLevelTexts) {
            String str2 = parsedText.content;
            if (str2 != null && !str2.isEmpty()) {
                removeByContent(xCadScene, parsedText.content);
                xCadScene.entities.add(toEntity(xCadScene, parsedText));
                expandBBox(xCadScene, parsedText.x, parsedText.y);
                i++;
            }
        }
        if (i > 0) {
            String str3 = "supplemented " + i + " TEXT/MTEXT from " + str;
        }
    }

    private static void removeByContent(XCadScene xCadScene, String str) {
        String strNormalizeText = normalizeText(str);
        Iterator<XCadEntity> it = xCadScene.entities.iterator();
        while (it.hasNext()) {
            XCadEntity next = it.next();
            int i = next.type;
            if (i == 5 || i == 6) {
                String str2 = next.text;
                if (str2 != null && normalizeText(str2).equals(strNormalizeText)) {
                    it.remove();
                }
            }
        }
    }

    private static XCadEntity toEntity(XCadScene xCadScene, ParsedText parsedText) {
        int i;
        boolean z = parsedText.mtext;
        int i2 = z ? 6 : 5;
        int i3 = parsedText.color;
        int i4 = (i3 == 256 || i3 < 0) ? 7 : i3;
        double d = parsedText.x;
        double d2 = parsedText.y;
        double d3 = parsedText.z;
        double[] dArr = {d, d2, d3};
        int i5 = parsedText.attachment;
        if (i5 < 1 || i5 > 9) {
            i = z ? 1 : 7;
        } else {
            i = i5;
        }
        return new XCadEntity(xCadScene, i2, 0, i4, parsedText.layer, dArr, d, d2, d3, d, d2, d3, parsedText.content, (float) parsedText.height, (float) parsedText.rotation, i);
    }

    private static void expandBBox(XCadScene xCadScene, double d, double d2) {
        double[] dArr = xCadScene.bbox;
        if (dArr == null || dArr.length < 6) {
            return;
        }
        if (d < dArr[0]) {
            dArr[0] = d;
        }
        if (d2 < dArr[1]) {
            dArr[1] = d2;
        }
        if (d > dArr[3]) {
            dArr[3] = d;
        }
        if (d2 > dArr[4]) {
            dArr[4] = d2;
        }
    }

    private static String normalizeText(String str) {
        return str == null ? "" : stripMtextFormat(str).replace("\r", "").trim();
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String stripMtextFormat(java.lang.String r7) {
        /*
            if (r7 == 0) goto La3
            boolean r0 = r7.isEmpty()
            if (r0 == 0) goto La
            goto La3
        La:
            java.lang.String r0 = "\\P"
            java.lang.String r1 = "\n"
            java.lang.String r7 = r7.replace(r0, r1)
            java.lang.String r0 = "\\p"
            java.lang.String r7 = r7.replace(r0, r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r7.length()
            r0.<init>(r1)
            r1 = 0
        L22:
            int r2 = r7.length()
            if (r1 >= r2) goto L9a
            char r2 = r7.charAt(r1)
            r3 = 123(0x7b, float:1.72E-43)
            if (r2 == r3) goto L97
            r3 = 125(0x7d, float:1.75E-43)
            if (r2 != r3) goto L35
            goto L97
        L35:
            r3 = 92
            if (r2 != r3) goto L94
            int r3 = r1 + 1
            int r4 = r7.length()
            if (r3 >= r4) goto L94
            char r4 = r7.charAt(r3)
            r5 = 102(0x66, float:1.43E-43)
            if (r4 == r5) goto L7d
            r5 = 70
            if (r4 == r5) goto L7d
            r5 = 67
            if (r4 == r5) goto L7d
            r5 = 99
            if (r4 == r5) goto L7d
            r5 = 72
            if (r4 == r5) goto L7d
            r5 = 104(0x68, float:1.46E-43)
            if (r4 == r5) goto L7d
            r5 = 84
            if (r4 == r5) goto L7d
            r5 = 116(0x74, float:1.63E-43)
            if (r4 == r5) goto L7d
            r5 = 81
            if (r4 == r5) goto L7d
            r5 = 113(0x71, float:1.58E-43)
            if (r4 == r5) goto L7d
            r5 = 87
            if (r4 == r5) goto L7d
            r5 = 119(0x77, float:1.67E-43)
            if (r4 == r5) goto L7d
            r5 = 65
            if (r4 == r5) goto L7d
            r5 = 97
            if (r4 != r5) goto L89
        L7d:
            int r5 = r1 + 2
            r6 = 59
            int r5 = r7.indexOf(r6, r5)
            if (r5 < 0) goto L89
            r1 = r5
            goto L97
        L89:
            r5 = 126(0x7e, float:1.77E-43)
            if (r4 != r5) goto L94
            r1 = 32
            r0.append(r1)
            r1 = r3
            goto L97
        L94:
            r0.append(r2)
        L97:
            int r1 = r1 + 1
            goto L22
        L9a:
            java.lang.String r7 = r0.toString()
            java.lang.String r7 = r7.trim()
            return r7
        La3:
            java.lang.String r7 = ""
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qh.xcad.DxfTextSupplement.stripMtextFormat(java.lang.String):java.lang.String");
    }

    private static List<ParsedText> parseTopLevelTexts(String str) {
        List<ParsedText> arrayList = new ArrayList<>();
        Charset[] charsetArr = {StandardCharsets.UTF_8, Charset.forName("GBK")};
        for (int i = 0; i < 2; i++) {
            Charset charset = charsetArr[i];
            try {
                arrayList = parseTopLevelTexts(str, charset);
            } catch (Exception e) {
                String str2 = "parse texts with " + charset.name() + " failed: " + e.getMessage();
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x021e, code lost:
    
        r10 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0169 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0194 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x01a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0200 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x014a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.qh.xcad.DxfTextSupplement.ParsedText> parseTopLevelTexts(java.lang.String r10, java.nio.charset.Charset r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qh.xcad.DxfTextSupplement.parseTopLevelTexts(java.lang.String, java.nio.charset.Charset):java.util.List");
    }

    private static void finishText(List<ParsedText> list, ParsedText parsedText) {
        if (parsedText.hasX && parsedText.hasY) {
            String strStripMtextFormat = stripMtextFormat(parsedText.rawText);
            parsedText.content = strStripMtextFormat;
            if (strStripMtextFormat == null || strStripMtextFormat.isEmpty()) {
                return;
            }
            if (!parsedText.hasHeight || parsedText.height <= 0.0d) {
                parsedText.height = 2.5d;
            }
            if (!parsedText.hasRotation && parsedText.hasDirX && parsedText.hasDirY) {
                parsedText.rotation = Math.atan2(parsedText.dirY, parsedText.dirX);
                parsedText.hasRotation = true;
            }
            if (parsedText.color == Integer.MIN_VALUE) {
                parsedText.color = 7;
            }
            int i = parsedText.attachment;
            if (i < 1 || i > 9) {
                parsedText.attachment = parsedText.mtext ? 1 : 7;
            }
            list.add(parsedText);
        }
    }

    private static double parseDouble(String str) {
        try {
            return Double.parseDouble(str.trim());
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    private static final class ParsedText {
        int attachment;
        int color;
        String content;
        double dirX;
        double dirY;
        boolean hasDirX;
        boolean hasDirY;
        boolean hasHeight;
        boolean hasRotation;
        boolean hasX;
        boolean hasY;
        boolean hasZ;
        double height;
        String layer;
        boolean mtext;
        String rawText;
        double rotation;
        double x;
        double y;
        double z;

        private ParsedText() {
            this.color = RecyclerView.UNDEFINED_DURATION;
        }
    }
}
