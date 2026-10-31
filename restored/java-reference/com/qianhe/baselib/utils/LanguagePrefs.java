package com.qianhe.baselib.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class LanguagePrefs {
    public static void saveLanguage(Context context, String str) {
        context.getSharedPreferences("app_language", 0).edit().putString("current_language", str).commit();
    }

    public static String getSavedLanguage(Context context) {
        return context.getSharedPreferences("app_language", 0).getString("current_language", "");
    }

    public static Context wrapContext(Context context) {
        String savedLanguage = getSavedLanguage(context);
        if (TextUtils.isEmpty(savedLanguage)) {
            savedLanguage = getSystemLanguage();
        }
        Locale localeBuildLocale = buildLocale(savedLanguage);
        applyLocales(localeBuildLocale);
        Configuration configuration = context.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocale(localeBuildLocale);
            return context.createConfigurationContext(configuration);
        }
        configuration.locale = localeBuildLocale;
        context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
        return context;
    }

    private static void applyLocales(Locale locale) {
        Locale.setDefault(locale);
        if (Build.VERSION.SDK_INT >= 24) {
            Locale.setDefault(Locale.Category.DISPLAY, locale);
            Locale.setDefault(Locale.Category.FORMAT, Locale.US);
        }
    }

    public static String getString(Context context, int i) {
        return wrapContext(context).getString(i);
    }

    public static String getString(Context context, int i, Object... objArr) {
        String string = wrapContext(context).getString(i);
        return (objArr == null || objArr.length == 0) ? string : String.format(Locale.US, string, objArr);
    }

    private static Locale buildLocale(String str) {
        String str2;
        String str3 = "";
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", 2);
            String str4 = strArrSplit[0];
            str2 = strArrSplit[1];
            str = str4;
        } else {
            str2 = "";
        }
        if ("bo".equals(str) || "ug".equals(str)) {
            str = "zh";
        } else {
            str3 = str2;
        }
        Locale.Builder language = new Locale.Builder().setLanguage(str);
        if (!TextUtils.isEmpty(str3)) {
            language.setRegion(str3);
        }
        if (useLatinDigits(str)) {
            language.setUnicodeLocaleKeyword("nu", "latn");
        }
        return language.build();
    }

    private static boolean useLatinDigits(String str) {
        return "ar".equals(str) || "fa".equals(str);
    }

    public static boolean isArOrFa(Context context) {
        String savedLanguage = getSavedLanguage(context);
        if (TextUtils.isEmpty(savedLanguage)) {
            savedLanguage = getSystemLanguage();
        }
        if (savedLanguage.contains("-")) {
            savedLanguage = savedLanguage.split("-", 2)[0];
        }
        return useLatinDigits(savedLanguage);
    }

    public static boolean isZH(Context context) {
        String systemLanguage = getSystemLanguage();
        String savedLanguage = getSavedLanguage(context);
        if (savedLanguage.contains("zh")) {
            return true;
        }
        return TextUtils.isEmpty(savedLanguage) && systemLanguage.contains("zh");
    }

    public static boolean isZH_CN(Context context) {
        String systemLanguage = getSystemLanguage();
        String savedLanguage = getSavedLanguage(context);
        if (savedLanguage.equals("zh")) {
            return true;
        }
        return TextUtils.isEmpty(savedLanguage) && systemLanguage.equals("zh");
    }

    public static String getSystemLanguage() {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        } else {
            locale = Resources.getSystem().getConfiguration().locale;
        }
        return locale.getLanguage();
    }

    public static String getCurrentLanguageCode(Context context) {
        Locale locale;
        String savedLanguage = getSavedLanguage(context);
        if (!TextUtils.isEmpty(savedLanguage)) {
            return savedLanguage;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        } else {
            locale = Resources.getSystem().getConfiguration().locale;
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (!"zh".equals(language)) {
            return ("bo".equals(language) || "ug".equals(language)) ? "zh" : language;
        }
        if (!"TW".equals(country) && !"HK".equals(country) && !"MO".equals(country)) {
            return "zh";
        }
        return "zh-TW";
    }
}
