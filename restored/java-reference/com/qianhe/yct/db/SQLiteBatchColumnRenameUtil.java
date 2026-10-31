package com.qianhe.yct.db;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.qianhe.baselib.utils.LogToFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SQLiteBatchColumnRenameUtil {
    @SuppressLint({"NewApi"})
    public static boolean renameColumns(SQLiteDatabase sQLiteDatabase, String str, Map<String, String> map) {
        if (sQLiteDatabase == null || str == null || map == null || map.isEmpty()) {
            return false;
        }
        if (isRenameColumnSupported(sQLiteDatabase)) {
            return batchRenameColumnsDirectly(sQLiteDatabase, str, map);
        }
        return batchRenameColumnsByRecreate(sQLiteDatabase, str, map);
    }

    private static boolean batchRenameColumnsDirectly(SQLiteDatabase sQLiteDatabase, String str, Map<String, String> map) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!isColumnExists(sQLiteDatabase, str, key)) {
                        LogToFile.i("字段不存在: " + key);
                    } else if (isColumnExists(sQLiteDatabase, str, value)) {
                        LogToFile.i("新字段名已存在: " + value);
                    } else {
                        sQLiteDatabase.execSQL("ALTER TABLE " + str + " RENAME COLUMN " + key + " TO " + value);
                        StringBuilder sb = new StringBuilder();
                        sb.append("字段重命名成功: ");
                        sb.append(key);
                        sb.append(" -> ");
                        sb.append(value);
                        LogToFile.i(sb.toString());
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                LogToFile.e("批量重命名失败:" + e);
                sQLiteDatabase.endTransaction();
                return false;
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    private static boolean batchRenameColumnsByRecreate(SQLiteDatabase sQLiteDatabase, String str, Map<String, String> map) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                List<ColumnInfo> tableColumns = getTableColumns(sQLiteDatabase, str);
                HashMap map2 = new HashMap();
                for (ColumnInfo columnInfo : tableColumns) {
                    String str2 = map.get(columnInfo.name);
                    String str3 = columnInfo.name;
                    if (str2 == null) {
                        str2 = str3;
                    }
                    map2.put(str3, str2);
                }
                createTempTable(sQLiteDatabase, str, tableColumns, map);
                copyDataToTempTable(sQLiteDatabase, str, tableColumns, map2);
                sQLiteDatabase.execSQL("DROP TABLE " + str);
                sQLiteDatabase.execSQL("ALTER TABLE " + str + "_temp RENAME TO " + str);
                sQLiteDatabase.setTransactionSuccessful();
                LogToFile.i("批量重命名成功，共重命名 " + map.size() + " 个字段");
                sQLiteDatabase.endTransaction();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                LogToFile.e("批量重命名失败:" + e);
                sQLiteDatabase.endTransaction();
                return false;
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    private static void createTempTable(SQLiteDatabase sQLiteDatabase, String str, List<ColumnInfo> list, Map<String, String> map) throws SQLException {
        StringBuilder sb = new StringBuilder("CREATE TABLE " + str + "_temp (");
        for (int i = 0; i < list.size(); i++) {
            ColumnInfo columnInfo = list.get(i);
            if (i > 0) {
                sb.append(", ");
            }
            String str2 = columnInfo.name;
            sb.append((String) map.getOrDefault(str2, str2));
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
    }

    private static void copyDataToTempTable(SQLiteDatabase sQLiteDatabase, String str, List<ColumnInfo> list, Map<String, String> map) throws SQLException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ColumnInfo columnInfo : list) {
            arrayList.add(columnInfo.name);
            arrayList2.add(map.get(columnInfo.name));
        }
        String strJoin = TextUtils.join(", ", arrayList);
        sQLiteDatabase.execSQL("INSERT INTO " + str + "_temp (" + TextUtils.join(", ", arrayList2) + ") SELECT " + strJoin + " FROM " + str);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.qianhe.yct.db.SQLiteBatchColumnRenameUtil-IA] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @SuppressLint({"Range"})
    private static List<ColumnInfo> getTableColumns(SQLiteDatabase sQLiteDatabase, String str) throws Throwable {
        ArrayList arrayList = new ArrayList();
        ?? r1 = 0;
        r1 = 0;
        r1 = 0;
        try {
            try {
                Cursor cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        try {
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
                        } catch (Exception e) {
                            e = e;
                            r1 = cursorRawQuery;
                            e.printStackTrace();
                            if (r1 != 0) {
                                r1.close();
                            }
                            return arrayList;
                        } catch (Throwable th) {
                            th = th;
                            r1 = cursorRawQuery;
                            if (r1 != 0) {
                                r1.close();
                            }
                            throw th;
                        }
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return arrayList;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        return arrayList;
    }

    private static boolean isRenameColumnSupported(SQLiteDatabase sQLiteDatabase) {
        return compareVersions(getSQLiteVersion(sQLiteDatabase), "3.25.0") >= 0;
    }

    public static String getSQLiteVersion(SQLiteDatabase sQLiteDatabase) {
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

    private static class ColumnInfo {
        int cid;
        String defaultValue;
        String name;
        boolean notNull;
        boolean primaryKey;
        String type;

        private ColumnInfo() {
        }
    }

    public static void verifyColumnRenames(SQLiteDatabase sQLiteDatabase, String str, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            entry.getKey();
            String value = entry.getValue();
            boolean zIsColumnExists = isColumnExists(sQLiteDatabase, str, value);
            LogToFile.i("字段 " + value + " 存在: " + zIsColumnExists);
            if (zIsColumnExists) {
                Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM " + str + " WHERE " + value + " IS NOT NULL", null);
                if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                    LogToFile.i("字段 " + value + " 有数据记录: " + cursorRawQuery.getInt(0));
                    cursorRawQuery.close();
                }
            }
        }
    }
}
