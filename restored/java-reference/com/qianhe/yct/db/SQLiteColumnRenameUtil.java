package com.qianhe.yct.db;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SQLiteColumnRenameUtil {
    public static boolean renameColumn(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        if (!isColumnExists(sQLiteDatabase, str, str2)) {
            String str4 = "字段不存在: " + str2;
            return false;
        }
        if (isColumnExists(sQLiteDatabase, str, str3)) {
            String str5 = "新字段名已存在: " + str3;
            return false;
        }
        if (isRenameColumnSupported(sQLiteDatabase)) {
            return renameColumnDirectly(sQLiteDatabase, str, str2, str3);
        }
        return renameColumnByRecreate(sQLiteDatabase, str, str2, str3);
    }

    public static boolean isColumnExists(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int columnIndex;
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
                if (cursorRawQuery != null && (columnIndex = cursorRawQuery.getColumnIndex("name")) != -1) {
                    while (cursorRawQuery.moveToNext()) {
                        if (str2.equals(cursorRawQuery.getString(columnIndex))) {
                            cursorRawQuery.close();
                            return true;
                        }
                    }
                }
                if (cursorRawQuery == null) {
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery == null) {
                    return false;
                }
            }
            cursorRawQuery.close();
            return false;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @SuppressLint({"Range"})
    public static List<ColumnInfo> getTableColumns(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        ColumnInfo columnInfo = new ColumnInfo();
                        columnInfo.cid = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("cid"));
                        columnInfo.name = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("name"));
                        columnInfo.type = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("type"));
                        boolean z = false;
                        columnInfo.notNull = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("notnull")) == 1;
                        columnInfo.defaultValue = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("dflt_value"));
                        if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("pk")) == 1) {
                            z = true;
                        }
                        columnInfo.primaryKey = z;
                        arrayList.add(columnInfo);
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return arrayList;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public static class ColumnInfo {
        public int cid;
        public String defaultValue;
        public String name;
        public boolean notNull;
        public boolean primaryKey;
        public String type;

        public String toString() {
            return "ColumnInfo{cid=" + this.cid + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", type='" + this.type + AngleFormat.CH_MIN_SYMBOL + ", notNull=" + this.notNull + ", defaultValue='" + this.defaultValue + AngleFormat.CH_MIN_SYMBOL + ", primaryKey=" + this.primaryKey + '}';
        }
    }

    private static boolean renameColumnDirectly(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " RENAME COLUMN " + str2 + " TO " + str3);
                sQLiteDatabase.setTransactionSuccessful();
                StringBuilder sb = new StringBuilder();
                sb.append("字段重命名成功: ");
                sb.append(str2);
                sb.append(" -> ");
                sb.append(str3);
                sb.toString();
                sQLiteDatabase.endTransaction();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                sQLiteDatabase.endTransaction();
                return false;
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    private static boolean renameColumnByRecreate(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                List<ColumnInfo> tableColumns = getTableColumns(sQLiteDatabase, str);
                StringBuilder sb = new StringBuilder("CREATE TABLE " + str + "_temp (");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < tableColumns.size(); i++) {
                    ColumnInfo columnInfo = tableColumns.get(i);
                    if (i > 0) {
                        sb.append(", ");
                    }
                    String str4 = columnInfo.name.equals(str2) ? str3 : columnInfo.name;
                    arrayList.add(str4);
                    sb.append(str4);
                    sb.append(" ");
                    sb.append(columnInfo.type);
                    if (columnInfo.primaryKey) {
                        sb.append(" PRIMARY KEY");
                    }
                    if (columnInfo.notNull) {
                        sb.append(" NOT NULL");
                    }
                    if (columnInfo.defaultValue != null) {
                        sb.append(" DEFAULT ");
                        sb.append(columnInfo.defaultValue);
                    }
                }
                sb.append(")");
                sQLiteDatabase.execSQL(sb.toString());
                sQLiteDatabase.execSQL("INSERT INTO " + str + "_temp (" + TextUtils.join(", ", arrayList) + ") SELECT " + TextUtils.join(", ", getColumnNames(tableColumns)) + " FROM " + str);
                sQLiteDatabase.execSQL("DROP TABLE " + str);
                sQLiteDatabase.execSQL("ALTER TABLE " + str + "_temp RENAME TO " + str);
                sQLiteDatabase.setTransactionSuccessful();
                String str5 = "表重建成功，字段重命名: " + str2 + " -> " + str3;
                sQLiteDatabase.endTransaction();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                sQLiteDatabase.endTransaction();
                return false;
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    private static List<String> getColumnNames(List<ColumnInfo> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<ColumnInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().name);
        }
        return arrayList;
    }

    private static boolean isRenameColumnSupported(SQLiteDatabase sQLiteDatabase) {
        return compareVersions(getSQLiteVersion(sQLiteDatabase), "3.25.0") >= 0;
    }

    private static String getSQLiteVersion(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("SELECT sqlite_version()", null);
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery == null) {
                    return "0.0.0";
                }
            }
            if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            }
            if (cursorRawQuery == null) {
                return "0.0.0";
            }
            cursorRawQuery.close();
            return "0.0.0";
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    private static int compareVersions(String str, String str2) {
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int i = 0;
        while (i < Math.max(strArrSplit.length, strArrSplit2.length)) {
            int i2 = i < strArrSplit.length ? Integer.parseInt(strArrSplit[i]) : 0;
            int i3 = i < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i]) : 0;
            if (i2 != i3) {
                return Integer.compare(i2, i3);
            }
            i++;
        }
        return 0;
    }
}
