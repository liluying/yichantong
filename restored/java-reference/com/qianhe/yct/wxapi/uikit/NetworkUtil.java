package com.qianhe.yct.wxapi.uikit;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetworkUtil {
    public static final int CHECK_TOKEN = 2;
    public static final int GET_IMG = 5;
    public static final int GET_INFO = 4;
    public static final int GET_TOKEN = 1;
    public static final int REFRESH_TOKEN = 3;
    private static String TAG = "MicroMsg.NetworkUtil";

    public static void sendWxAPI(Handler handler, String str, int i) {
        new HttpsThread(handler, str, i).start();
    }

    public static void getImage(Handler handler, String str, int i) {
        new HttpsThread(handler, str, i).start();
    }

    static class HttpsThread extends Thread {
        private Handler handler;
        private String httpsUrl;
        private int msgTag;

        public HttpsThread(Handler handler, String str, int i) {
            this.handler = handler;
            this.httpsUrl = str;
            this.msgTag = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws IOException {
            if (this.msgTag == 5) {
                try {
                    byte[] bArrHttpURLConnectionGet = httpURLConnectionGet(this.httpsUrl);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = this.msgTag;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("imgdata", bArrHttpURLConnectionGet);
                    messageObtain.setData(bundle);
                    this.handler.sendMessage(messageObtain);
                    return;
                } catch (Exception e) {
                    String unused = NetworkUtil.TAG;
                    e.getMessage();
                    return;
                }
            }
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(this.httpsUrl).openConnection();
                httpsURLConnection.setAllowUserInteraction(false);
                httpsURLConnection.setInstanceFollowRedirects(true);
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() != 200) {
                    return;
                }
                InputStream inputStream = httpsURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1"), 8);
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line);
                        sb.append("\n");
                    } else {
                        inputStream.close();
                        String string = sb.toString();
                        String unused2 = NetworkUtil.TAG;
                        Message messageObtain2 = Message.obtain();
                        messageObtain2.what = this.msgTag;
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("result", string);
                        messageObtain2.setData(bundle2);
                        this.handler.sendMessage(messageObtain2);
                        return;
                    }
                }
            } catch (Exception e2) {
                String unused3 = NetworkUtil.TAG;
                e2.getMessage();
            }
        }

        private static byte[] httpURLConnectionGet(String str) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection == null) {
                String unused = NetworkUtil.TAG;
            }
            if (httpURLConnection.getResponseCode() >= 300) {
                httpURLConnection.disconnect();
                String unused2 = NetworkUtil.TAG;
                return null;
            }
            byte[] stream = readStream(httpURLConnection.getInputStream());
            httpURLConnection.disconnect();
            return stream;
        }

        private static byte[] readStream(InputStream inputStream) throws IOException {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = inputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStream.close();
                    return byteArray;
                }
            }
        }
    }
}
