package com.qianhe.baselib.enums;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.qianhe.baselib.enums.UnitEnum, still in use, count: 1, list:
  (r0v0 com.qianhe.baselib.enums.UnitEnum) from 0x0024: IGET (r0v0 com.qianhe.baselib.enums.UnitEnum) A[WRAPPED] (LINE:17) com.qianhe.baselib.enums.UnitEnum.type int
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class UnitEnum {
    M(0),
    CM(1),
    IN(2);

    private static final int[] SELECTABLE_TYPES = {new UnitEnum(0).type, new UnitEnum(2).type};
    private final int type;

    public static UnitEnum valueOf(String str) {
        return (UnitEnum) Enum.valueOf(UnitEnum.class, str);
    }

    public static UnitEnum[] values() {
        return (UnitEnum[]) $VALUES.clone();
    }

    static {
    }

    private UnitEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }

    public static int normalize(int i) {
        if (i == CM.getType()) {
            return M.getType();
        }
        UnitEnum unitEnum = M;
        return (i == unitEnum.getType() || i == IN.getType()) ? i : unitEnum.getType();
    }

    public static int[] getSelectableTypes() {
        return SELECTABLE_TYPES;
    }

    public static String getSymbol(int i) {
        return normalize(i) == IN.getType() ? "in" : "m";
    }

    public static int typeToSelectableIndex(int i) {
        return normalize(i) == IN.getType() ? 1 : 0;
    }

    public static int selectableIndexToType(int i) {
        if (i >= 0) {
            int[] iArr = SELECTABLE_TYPES;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        return M.getType();
    }
}
