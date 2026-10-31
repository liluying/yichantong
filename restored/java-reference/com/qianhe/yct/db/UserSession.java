package com.qianhe.yct.db;

import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.application.YCTApplication;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UserSession {
    private static volatile UserSession instance;
    private SQLiteDatabase database;
    private boolean loaded;
    private boolean loadedFromDisk;
    private long userId;
    private String deviceId = "";
    private String token = "";
    private String account = "";
    private String name = "";

    static void attach(SQLiteDatabase sQLiteDatabase) {
        UserSession withoutLoad = getWithoutLoad();
        withoutLoad.database = sQLiteDatabase;
        withoutLoad.ensureLoaded();
    }

    private static UserSession getWithoutLoad() {
        if (instance == null) {
            synchronized (UserSession.class) {
                try {
                    if (instance == null) {
                        instance = new UserSession();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static UserSession get() {
        UserSession withoutLoad = getWithoutLoad();
        withoutLoad.ensureLoaded();
        return withoutLoad;
    }

    private UserSession() {
    }

    public synchronized boolean isLoggedIn() {
        ensureLoaded();
        return !TextUtils.isEmpty(this.token);
    }

    public synchronized String getDeviceId() {
        String str;
        ensureLoaded();
        str = this.deviceId;
        if (str == null) {
            str = "";
        }
        return str;
    }

    public synchronized String getToken() {
        String str;
        ensureLoaded();
        str = this.token;
        if (str == null) {
            str = "";
        }
        return str;
    }

    public synchronized String getAccount() {
        String str;
        ensureLoaded();
        str = this.account;
        if (str == null) {
            str = "";
        }
        return str;
    }

    public synchronized String getName() {
        String str;
        ensureLoaded();
        str = this.name;
        if (str == null) {
            str = "";
        }
        return str;
    }

    public synchronized long getUserId() {
        ensureLoaded();
        return this.userId;
    }

    public synchronized void saveDeviceId(String str) {
        ensureLoaded();
        if (str == null) {
            str = "";
        }
        this.deviceId = str;
        persist();
    }

    public synchronized void saveLogin(String str, String str2, String str3, String str4, long j) {
        try {
            ensureLoaded();
            if (!TextUtils.isEmpty(str)) {
                this.deviceId = str;
            }
            if (str2 == null) {
                str2 = "";
            }
            this.token = str2;
            if (str3 == null) {
                str3 = "";
            }
            this.account = str3;
            if (str4 == null) {
                str4 = "";
            }
            this.name = str4;
            this.userId = j;
            persist();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void updateName(String str) {
        ensureLoaded();
        if (str == null) {
            str = "";
        }
        this.name = str;
        persist();
    }

    public synchronized void updateAccount(String str) {
        ensureLoaded();
        if (str == null) {
            str = "";
        }
        this.account = str;
        persist();
    }

    public synchronized void clearLoginInfo() {
        ensureLoaded();
        this.token = "";
        this.account = "";
        this.name = "";
        persist();
    }

    public synchronized void clearAll() {
        ensureLoaded();
        this.token = "";
        this.account = "";
        this.name = "";
        this.userId = 0L;
        persist();
    }

    private synchronized void ensureLoaded() {
        YCTApplication yCTApplication = YCTApplication.getInstance();
        if (yCTApplication != null && FileUtil.hasExternalStorageAccess(yCTApplication)) {
            if (this.loadedFromDisk) {
                return;
            }
            loadFromDatabaseOrMigrate();
            this.loadedFromDisk = true;
            this.loaded = true;
            return;
        }
        if (this.loaded) {
            return;
        }
        hydrateFromSharedPreferences();
        this.loaded = true;
    }

    private void loadFromDatabaseOrMigrate() throws Throwable {
        SQLiteDatabase sQLiteDatabaseWritableDb = writableDb();
        if (sQLiteDatabaseWritableDb == null) {
            return;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = sQLiteDatabaseWritableDb.query("user", null, null, null, null, null, "id DESC", "1");
            } catch (Exception e) {
                LogToFile.e("UserSession load: " + e);
                if (cursorQuery != null) {
                }
            }
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                readCursor(cursorQuery);
                clearLoginIfFreshInstall(sQLiteDatabaseWritableDb);
                cursorQuery.close();
            } else if (!TextUtils.isEmpty(this.token) || this.userId != 0 || !TextUtils.isEmpty(this.deviceId) || !TextUtils.isEmpty(this.account) || !TextUtils.isEmpty(this.name)) {
                persistTo(sQLiteDatabaseWritableDb);
                clearLoginIfFreshInstall(sQLiteDatabaseWritableDb);
            } else {
                migrateFromSharedPreferences(sQLiteDatabaseWritableDb);
                clearLoginIfFreshInstall(sQLiteDatabaseWritableDb);
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    private void migrateFromSharedPreferences(SQLiteDatabase sQLiteDatabase) throws Throwable {
        hydrateFromSharedPreferences();
        if (TextUtils.isEmpty(this.deviceId) && TextUtils.isEmpty(this.token) && TextUtils.isEmpty(this.account) && TextUtils.isEmpty(this.name) && this.userId == 0) {
            return;
        }
        persistTo(sQLiteDatabase);
        LogToFile.i("UserSession 已从 SharedPreferences 兼容旧登录数据, user_id=" + this.userId);
    }

    private void clearLoginIfFreshInstall(SQLiteDatabase sQLiteDatabase) throws Throwable {
        YCTApplication yCTApplication = YCTApplication.getInstance();
        if (yCTApplication == null) {
            return;
        }
        SharedPreferences sharedPreferences = yCTApplication.getSharedPreferences("sp", 0);
        if (sharedPreferences.getBoolean("user_session_install_mark", false)) {
            return;
        }
        boolean z = (TextUtils.isEmpty(this.token) && TextUtils.isEmpty(this.account) && TextUtils.isEmpty(this.name)) ? false : true;
        this.token = "";
        this.account = "";
        this.name = "";
        if (z) {
            persistTo(sQLiteDatabase);
            LogToFile.i("卸载重装：已清除登录信息，保留 user_id=" + this.userId);
        }
        sharedPreferences.edit().putBoolean("user_session_install_mark", true).apply();
    }

    private void hydrateFromSharedPreferences() {
        YCTApplication yCTApplication = YCTApplication.getInstance();
        if (yCTApplication == null) {
            return;
        }
        SharedPreferences sharedPreferences = yCTApplication.getSharedPreferences("sp", 0);
        this.deviceId = sharedPreferences.getString("deviceId", "");
        this.token = sharedPreferences.getString("user_token", "");
        this.account = sharedPreferences.getString("user_account", "");
        this.name = sharedPreferences.getString("user_name", "");
        this.userId = readUserIdFromSp(sharedPreferences);
    }

    private long readUserIdFromSp(SharedPreferences sharedPreferences) {
        try {
            try {
                return sharedPreferences.getLong("user_id", 0L);
            } catch (Exception unused) {
                return 0L;
            }
        } catch (Exception unused2) {
            String string = sharedPreferences.getString("user_id", "0");
            if (!TextUtils.isEmpty(string)) {
                return Long.parseLong(string);
            }
            return 0L;
        }
    }

    private void readCursor(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("deviceId");
        this.deviceId = (columnIndex < 0 || cursor.isNull(columnIndex)) ? "" : cursor.getString(columnIndex);
        int columnIndex2 = cursor.getColumnIndex("user_token");
        this.token = (columnIndex2 < 0 || cursor.isNull(columnIndex2)) ? "" : cursor.getString(columnIndex2);
        int columnIndex3 = cursor.getColumnIndex("user_account");
        this.account = (columnIndex3 < 0 || cursor.isNull(columnIndex3)) ? "" : cursor.getString(columnIndex3);
        int columnIndex4 = cursor.getColumnIndex("user_name");
        this.name = (columnIndex4 < 0 || cursor.isNull(columnIndex4)) ? "" : cursor.getString(columnIndex4);
        int columnIndex5 = cursor.getColumnIndex("user_id");
        this.userId = columnIndex5 >= 0 ? cursor.getLong(columnIndex5) : 0L;
        if (this.deviceId == null) {
            this.deviceId = "";
        }
        if (this.token == null) {
            this.token = "";
        }
        if (this.account == null) {
            this.account = "";
        }
        if (this.name == null) {
            this.name = "";
        }
    }

    private void persist() throws Throwable {
        persistTo(writableDb());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0080 A[Catch: all -> 0x007a, Exception -> 0x007d, TryCatch #4 {Exception -> 0x007d, all -> 0x007a, blocks: (B:23:0x0061, B:25:0x0067, B:31:0x0083, B:30:0x0080), top: B:48:0x0061 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void persistTo(android.database.sqlite.SQLiteDatabase r12) throws java.lang.Throwable {
        /*
            r11 = this;
            if (r12 != 0) goto L4
            goto La8
        L4:
            android.content.ContentValues r0 = new android.content.ContentValues
            r0.<init>()
            java.lang.String r1 = r11.deviceId
            java.lang.String r2 = ""
            if (r1 == 0) goto L10
            goto L11
        L10:
            r1 = r2
        L11:
            java.lang.String r3 = "deviceId"
            r0.put(r3, r1)
            java.lang.String r1 = r11.token
            if (r1 == 0) goto L1b
            goto L1c
        L1b:
            r1 = r2
        L1c:
            java.lang.String r3 = "user_token"
            r0.put(r3, r1)
            java.lang.String r1 = r11.account
            if (r1 == 0) goto L27
            goto L28
        L27:
            r1 = r2
        L28:
            java.lang.String r3 = "user_account"
            r0.put(r3, r1)
            java.lang.String r1 = r11.name
            if (r1 == 0) goto L33
            r2 = r1
        L33:
            java.lang.String r1 = "user_name"
            r0.put(r1, r2)
            long r1 = r11.userId
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            java.lang.String r2 = "user_id"
            r0.put(r2, r1)
            r1 = 0
            java.lang.String r3 = "user"
            java.lang.String r2 = "id"
            java.lang.String[] r4 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r9 = "id DESC"
            java.lang.String r10 = "1"
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r2 = r12
            android.database.Cursor r12 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r3 = "user"
            if (r12 == 0) goto L80
            boolean r4 = r12.moveToFirst()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r4 == 0) goto L80
            r1 = 0
            long r4 = r12.getLong(r1)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String r1 = "id = ?"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r2.update(r3, r0, r1, r4)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            goto L83
        L7a:
            r0 = move-exception
            r1 = r12
            goto La9
        L7d:
            r0 = move-exception
            r1 = r12
            goto L8f
        L80:
            r2.insert(r3, r1, r0)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
        L83:
            r11.clearLegacySharedPreferences()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r12 == 0) goto La8
            r12.close()
            return
        L8c:
            r0 = move-exception
            goto La9
        L8e:
            r0 = move-exception
        L8f:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c
            r12.<init>()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r2 = "UserSession persist: "
            r12.append(r2)     // Catch: java.lang.Throwable -> L8c
            r12.append(r0)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> L8c
            com.qianhe.baselib.utils.LogToFile.e(r12)     // Catch: java.lang.Throwable -> L8c
            if (r1 == 0) goto La8
            r1.close()
        La8:
            return
        La9:
            if (r1 == 0) goto Lae
            r1.close()
        Lae:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.db.UserSession.persistTo(android.database.sqlite.SQLiteDatabase):void");
    }

    private void clearLegacySharedPreferences() {
        try {
            YCTApplication yCTApplication = YCTApplication.getInstance();
            if (yCTApplication == null) {
                return;
            }
            yCTApplication.getSharedPreferences("sp", 0).edit().remove("deviceId").remove("user_token").remove("user_account").remove("user_name").remove("user_id").apply();
        } catch (Exception unused) {
        }
    }

    private SQLiteDatabase writableDb() {
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            return this.database;
        }
        try {
            YCTApplication yCTApplication = YCTApplication.getInstance();
            if (yCTApplication != null && FileUtil.hasExternalStorageAccess(yCTApplication)) {
                return DatabaseManager.getInstance(yCTApplication).getDatabase();
            }
            return null;
        } catch (Exception e) {
            LogToFile.e("UserSession db: " + e.getMessage());
            return null;
        }
    }
}
