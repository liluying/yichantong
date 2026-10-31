package com.qianhe.baselib.utils;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.Ndef;
import android.nfc.tech.NfcA;
import android.os.Build;
import android.util.Base64;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NfcTagReader {
    private IntentFilter[] intentFiltersArray;
    private NfcAdapter nfcAdapter;
    private PendingIntent pendingIntent;
    private String[][] techListsArray;

    public void initNfcReader(Activity activity) throws IntentFilter.MalformedMimeTypeException {
        this.nfcAdapter = NfcAdapter.getDefaultAdapter(activity);
        this.pendingIntent = PendingIntent.getActivity(activity, 0, new Intent(activity, activity.getClass()).addFlags(536870912), 134217728);
        IntentFilter intentFilter = new IntentFilter("android.nfc.action.NDEF_DISCOVERED");
        try {
            intentFilter.addDataType("*/*");
        } catch (Exception e) {
            LogToFile.i("addDataType ：" + e.getMessage());
        }
        this.intentFiltersArray = new IntentFilter[]{intentFilter, new IntentFilter("android.nfc.action.TECH_DISCOVERED"), new IntentFilter("android.nfc.action.TAG_DISCOVERED")};
        this.techListsArray = new String[][]{new String[]{NfcA.class.getName()}, new String[]{Ndef.class.getName()}};
    }

    public void enableForegroundDispatch(Activity activity) {
        NfcAdapter nfcAdapter = this.nfcAdapter;
        if (nfcAdapter == null || !nfcAdapter.isEnabled() || activity == null) {
            return;
        }
        this.nfcAdapter.enableForegroundDispatch(activity, this.pendingIntent, this.intentFiltersArray, this.techListsArray);
    }

    public void disableForegroundDispatch(Activity activity) {
        NfcAdapter nfcAdapter = this.nfcAdapter;
        if (nfcAdapter != null) {
            nfcAdapter.disableForegroundDispatch(activity);
        }
    }

    public Tag getTagFromIntent(Intent intent) {
        String action = intent.getAction();
        if ("android.nfc.action.NDEF_DISCOVERED".equals(action) || "android.nfc.action.TECH_DISCOVERED".equals(action) || "android.nfc.action.TAG_DISCOVERED".equals(action)) {
            return (Tag) intent.getParcelableExtra("android.nfc.extra.TAG");
        }
        return null;
    }

    public String handleTagReadError(Exception exc) {
        if (exc instanceof SecurityException) {
            if (exc.getMessage() != null && exc.getMessage().contains("out of date")) {
                return "标签已过期，请将标签远离手机后重新靠近再试";
            }
            return "没有权限访问标签，请检查NFC设置";
        }
        if (exc instanceof IllegalStateException) {
            return "标签状态异常，请重新尝试";
        }
        if (exc instanceof IOException) {
            return "读取失败，标签可能离开读取范围";
        }
        return "读取标签时发生未知错误: " + exc.getMessage();
    }

    public boolean isNfcAvailable(Activity activity) {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(activity);
        this.nfcAdapter = defaultAdapter;
        return defaultAdapter != null;
    }

    public boolean isNfcEnabled(Activity activity) {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(activity);
        this.nfcAdapter = defaultAdapter;
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public boolean hasNfcPermission(Activity activity) {
        return Build.VERSION.SDK_INT < 23 || activity.checkSelfPermission("android.permission.NFC") == 0;
    }

    public String readNdefData(Tag tag) throws IOException {
        if (tag == null) {
            return null;
        }
        Ndef ndef = Ndef.get(tag);
        try {
            if (ndef == null) {
                return null;
            }
            try {
                ndef.connect();
                NdefMessage ndefMessage = ndef.getNdefMessage();
                if (ndefMessage != null) {
                    NdefRecord[] records = ndefMessage.getRecords();
                    if (records.length > 0) {
                        NdefRecord ndefRecord = records[0];
                        byte[] payload = ndefRecord.getPayload();
                        if (ndefRecord.getTnf() == 1 && Arrays.equals(ndefRecord.getType(), NdefRecord.RTD_TEXT)) {
                            int i = payload[0] & 7;
                            return new String(payload, i + 1, (payload.length - i) - 1, StandardCharsets.UTF_8);
                        }
                        if (ndefRecord.getTnf() == 1 && Arrays.equals(ndefRecord.getType(), NdefRecord.RTD_URI)) {
                            String str = new String(ndefRecord.getPayload(), StandardCharsets.UTF_8);
                            try {
                                ndef.close();
                            } catch (Exception unused) {
                            }
                            return str;
                        }
                        String strEncodeToString = Base64.encodeToString(payload, 2);
                        try {
                            ndef.close();
                        } catch (Exception unused2) {
                        }
                        return strEncodeToString;
                    }
                }
                try {
                    ndef.close();
                } catch (Exception unused3) {
                }
                return "标签不包含NDEF数据";
            } catch (Exception e) {
                LogToFile.e("NFC 读取NDEF数据失败: " + e.getMessage());
                String strHandleTagReadError = handleTagReadError(e);
                try {
                    ndef.close();
                } catch (Exception unused4) {
                }
                return strHandleTagReadError;
            }
        } finally {
            try {
                ndef.close();
            } catch (Exception unused5) {
            }
        }
    }

    public String readRawData(Tag tag) throws IOException {
        if (tag == null) {
            return null;
        }
        NfcA nfcA = NfcA.get(tag);
        try {
            if (nfcA == null) {
                return null;
            }
            try {
                nfcA.connect();
                return Base64.encodeToString(nfcA.transceive(new byte[]{48, 4}), 2);
            } catch (Exception e) {
                LogToFile.e("NFC读取原始数据失败: " + e.getMessage());
                String strHandleTagReadError = handleTagReadError(e);
                try {
                    nfcA.close();
                } catch (Exception unused) {
                }
                return strHandleTagReadError;
            }
        } finally {
            try {
                nfcA.close();
            } catch (Exception unused2) {
            }
        }
    }

    public String getBluetoothMac(String str) {
        if (str != null && !str.isEmpty()) {
            Matcher matcher = Pattern.compile("bt_mac=([0-9A-Fa-f:]+)").matcher(str);
            if (matcher.find()) {
                String strGroup = matcher.group(1);
                if (isValidMacAddress(strGroup)) {
                    return strGroup.toUpperCase();
                }
            }
            Matcher matcher2 = Pattern.compile("\\s*BT:\\s*([0-9A-Fa-f:]+)\\s*").matcher(str);
            if (matcher2.find()) {
                String strGroup2 = matcher2.group(1);
                if (isValidMacAddress(strGroup2)) {
                    return strGroup2.toUpperCase();
                }
            }
        }
        return null;
    }

    public boolean isValidMacAddress(String str) {
        if (str == null) {
            return false;
        }
        return Pattern.compile("^([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}$").matcher(str).matches();
    }
}
