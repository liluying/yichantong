package com.qianhe.yct.utils;

import android.os.Handler;
import android.os.Looper;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.DebugLogCache;
import com.qianhe.baselib.utils.parser.BestPosParser;
import com.qianhe.baselib.utils.parser.GGAParser;
import com.qianhe.baselib.utils.parser.GPDOPParser;
import com.qianhe.baselib.utils.parser.GSTParser;
import com.qianhe.baselib.utils.parser.INSParser;
import com.qianhe.baselib.utils.parser.RefstationParser;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.Batt;
import com.qianhe.rtkclientlib.event.Expiredate;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GnssInfo;
import com.qianhe.rtkclientlib.event.PowerSourceEvent;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.SNRPackageEvent;
import com.qianhe.rtkclientlib.event.SauPackageEvent;
import com.qianhe.rtkclientlib.event.SavPackageEvent;
import com.qianhe.rtkclientlib.event.Serial;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DemoDataManager {
    private static DemoDataManager INSTANCE;
    private ScheduledFuture<?> demoFuture;
    private SimpleDateFormat simpleDateFormat;
    private final ScheduledExecutorService demoExecutor = Executors.newSingleThreadScheduledExecutor();
    private final String[] bestPost = {"#BESTPOSA,COM1,0,0.0,FINE,2384,111039.000,,,;SOL_COMPUTED,L1_INT,23.33292180,113.53989108,93.003,-6.638,WGS84,0.0214,0.0183,0.0641,\"3221\",1.0,0.0,66,65,,,,,,*52a0e4fe"};
    private final String[] snrArray = {"$GPSNR,1,1,33,3,18.9,,19.6,8,26.5,21.2,28.3,16,28.5,,,26,24.2,21.2,28.9,27,28.0,,30.8,28,23.1,18.6,23.7,31,27.4,20.0,,166,23.4,29.9,22.9,167,20.9,29.4,23.5,169,20.4,29.6,23.0,170,,29.2,21.3,173,,21.0,,176,24.2,29.6,20.7,179,22.3,,26.2,180,22.2,,24.0,187,24.2,,22.5,190,23.2,,25.6,196,23.7,,24.0,197,15.3,,18.2,198,,,18.6,199,25.6,,24.7,265,26.5,33.1,27.9,267,25.4,31.9,26.5,270,22.5,32.4,26.6,284,25.0,29.2,23.5,292,25.8,31.1,26.6,332,25.3,,,361,,,29.4,363,,,29.4,365,,,25.7,367,,,31.9,369,,,30.7,370,,,31.6*64"};
    private final String[] savArray = {"$GPSAV,1,1,28,3,13,235,8,45,200,16,54,2,26,31,42,27,73,154,28,18,104,31,41,81,166,57,6,167,62,192,169,50,341,170,48,204,173,14,212,176,57,9,179,42,235,180,20,183,187,33,73,190,42,146,196,38,313,197,9,76,198,7,187,199,59,35,265,74,183,267,70,294,270,46,315,284,36,31,292,61,311,369,30,273,370,59,141*4C"};
    private final String[] sauArray = {"$GPSAU,1,1,20,8,16,26,27,28,31,166,167,169,176,179,180,187,190,196,199,265,267,270,292*49"};
    private final String[] baseStationArray = {"#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.493,5371105.713,2511967.393,,,\"3221\"*aa353018", "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.494,5371104.714,2511967.394,,,\"3221\"*aa353018", "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.495,5371105.715,2511967.395,,,\"3221\"*aa353018", "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.496,5371105.716,2511967.396,,,\"3221\"*aa353018", "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.497,5371105.717,2511967.397,,,\"3221\"*aa353018"};
    private final String[] gstArray = {"0.0350,0.0,0.0,0.0,0.0219,0.0224,0.0105*5E", "0.0350,0.0,0.0,0.0,0.0261,0.0184,0.0275*5E", "0.0350,0.0,0.0,0.0,0.0179,0.0134,0.0195*5E"};
    private final String[] gdopArray = {"$GPDOP,025425.00,1.3,0.6,0.8*44", "$GPDOP,025425.00,1.2,0.5,0.7*44"};
    private final int[] battArray = {80};
    private int quality = 4;
    private String h5proDataStatus = "1835010";
    private double insLon = 113.53978836d;
    private double insLat = 23.33307096d;
    private double insElev = 80.976d;

    public double getInsLon() {
        return toDisplayGeodetic()[0];
    }

    public double getInsLat() {
        return toDisplayGeodetic()[1];
    }

    public double getInsElev() {
        return toDisplayGeodetic()[2];
    }

    public double getGeodeticLon() {
        return this.insLon;
    }

    public double getGeodeticLat() {
        return this.insLat;
    }

    public double getGeodeticElev() {
        return this.insElev;
    }

    private double[] toDisplayGeodetic() {
        double[] dArr = new double[3];
        return GnssCoordConvertManager.getInstance().geoToAlignedGeodetic(this.insLon, this.insLat, this.insElev, dArr) ? dArr : new double[]{this.insLon, this.insLat, this.insElev};
    }

    public int getQuality() {
        return this.quality;
    }

    public String getH5proDataStatus() {
        return this.h5proDataStatus;
    }

    private DemoDataManager() {
    }

    public static synchronized DemoDataManager getInstance() {
        try {
            if (INSTANCE == null) {
                INSTANCE = new DemoDataManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public void startDemoExtcutor(final int i) {
        setH5Type(i);
        if (this.demoFuture != null || this.demoExecutor == null) {
            return;
        }
        this.simpleDateFormat = new SimpleDateFormat("HHmmss.SS", Locale.getDefault());
        EventBus.getDefault().post(new BluetoothConnectStateEvent(new MyBluetoothDevice(BluetoothStateEnum.CONNECTED.getState())));
        EventBus.getDefault().post(new AuthResult(7));
        this.demoFuture = this.demoExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.utils.DemoDataManager.1
            private long count = 0;

            @Override // java.lang.Runnable
            public void run() throws NumberFormatException {
                if (this.count % 5 == 0) {
                    DemoDataManager.this.simulateGGA(i);
                    DemoDataManager.this.simulateBestPost(i);
                    DemoDataManager.this.simulateBatt(i);
                    DemoDataManager.this.simulateSNR(i);
                    DemoDataManager.this.simulateRTKInfo(i);
                    DemoDataManager.this.simulateBaseStation(i);
                    DemoDataManager.this.simulateGST(i);
                    DemoDataManager.this.simulateGDOP(i);
                    DemoDataManager.this.simulateSAV(i, this.count);
                    DemoDataManager.this.simulateSAU(i, this.count);
                }
                DemoDataManager.this.simulateINS(i);
                this.count++;
            }
        }, 0L, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateGDOP(int i) {
        GPDOPParser.parse(DeviceType.ZPY, getRandomString(this.gdopArray));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateGST(int i) {
        GSTParser.parse(DeviceType.ZPY, DebugLogCache.GPGST + getUtcTime() + "," + getRandomString(this.gstArray));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateBaseStation(int i) {
        RefstationParser.parser(DeviceType.ZPY, getRandomString(this.baseStationArray));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateSAV(int i, long j) {
        EventBus.getDefault().post(new SavPackageEvent(getQueueString(this.savArray, j % this.savArray.length)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateSAU(int i, long j) {
        EventBus.getDefault().post(new SauPackageEvent(getQueueString(this.sauArray, j % this.sauArray.length)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateRTKInfo(int i) {
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new Serial(deviceType, "W54206161007895"));
        EventBus.getDefault().post(new RtkInfo(deviceType, "1.1.250418.250424", "1.15.2508.83", ""));
        EventBus.getDefault().post(new GnssInfo(deviceType, "V7.82_8EF97A_T"));
        EventBus.getDefault().post(new Expiredate(deviceType, "2088-08-08"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateINS(int i) throws NumberFormatException {
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new GETHorizontalAngleRange(deviceType, -5.0f, -5.0f, 5.0f, 5.0f));
        INSParser.parser(deviceType, getRandomString(getINSArray(i == 1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateSNR(int i) {
        EventBus.getDefault().post(new SNRPackageEvent(getRandomString(this.snrArray)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateBatt(int i) {
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new Batt(deviceType, getRandomInt(this.battArray)));
        EventBus.getDefault().post(new PowerSourceEvent(deviceType, "#GET,POWER.SOURCE,BATTERY*47"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateGGA(int i) {
        GGAParser.parseGGA(DeviceType.ZPY, "$GPGGA," + getUtcTime() + "," + getRandomString(getGGAArray()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateBestPost(int i) {
        BestPosParser.parse(DeviceType.ZPY, getRandomString(this.bestPost));
    }

    public void stopDemoExecutor() {
        EventBus.getDefault().post(new BluetoothConnectStateEvent(new MyBluetoothDevice(BluetoothStateEnum.DISCONNECT.getState())));
        EventBus.getDefault().post(new AuthResult(5));
        ScheduledFuture<?> scheduledFuture = this.demoFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.demoFuture = null;
    }

    public String getRandomString(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[new Random().nextInt(strArr.length)];
    }

    public String getQueueString(String[] strArr, long j) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[(int) j];
    }

    public int getRandomInt(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return iArr[new Random().nextInt(iArr.length)];
    }

    public String getUtcTime() {
        this.simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return this.simpleDateFormat.format(new Date());
    }

    public void setH5Type(final int i) {
        YCTApplication.getInstance().setIsH5ProDemo(1 == i);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.DemoDataManager.2
            @Override // java.lang.Runnable
            public void run() {
                if (i == 0) {
                    EventBus.getDefault().post(new FeaturesEvent(DeviceType.ZPY, "#GET,FEATURES,BLUETOOTH|INS|MOBILE|PPP|SCHEME|SOCKET|TA|UPGRADE|ZXVPN*1"));
                } else {
                    EventBus.getDefault().post(new FeaturesEvent(DeviceType.ZPY, "#GET,FEATURES,BLUETOOTH|INS|MOBILE|PPP|SCHEME|SOCKET|TA|UPGRADE|ZXVPN|EXCAVATOR2*1"));
                }
            }
        }, 500L);
    }

    public void setINSCoords(double d, double d2, double d3) {
        this.insLon = d;
        this.insLat = d2;
        this.insElev = d3;
    }

    public void setH5ProDataStatus(String str) {
        this.h5proDataStatus = str;
    }

    public void setSolution(int i) {
        this.quality = i;
    }

    private String[] getINSArray(boolean z) {
        if (z) {
            return new String[]{"$INS.NAVI,100228.00," + this.insLat + "," + this.insLon + "," + this.insElev + "," + (this.insLat + 1.0E-5d) + "," + this.insLon + "," + this.insElev + ",0.0274,-0.0082,4.1403,0.0765,0.0196575,0.00327582,0.327582,0,0,0,37.97," + this.h5proDataStatus + "*4D"};
        }
        return new String[]{"$INS.NAVI,100228.00," + this.insLat + "," + this.insLon + "," + this.insElev + ",0,0,0,0.0274,-0.0082,4.1403,0.0765,0.0196575,0.00327582,0.327582,0,0,0,37.97,2048*4D"};
    }

    private String[] getGGAArray() {
        String strDmToDdm = GGAParser.dmToDdm(this.insLat, false);
        String strDmToDdm2 = GGAParser.dmToDdm(this.insLon, true);
        return new String[]{strDmToDdm + "," + (this.insLat >= 0.0d ? "N" : "S") + "," + strDmToDdm2 + "," + (this.insLon >= 0.0d ? "E" : "W") + "," + this.quality + ",50,0.5,93.9210,M,6.6385,M,2.1,3221*4B"};
    }

    public void release() {
        stopDemoExecutor();
        ScheduledExecutorService scheduledExecutorService = this.demoExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        INSTANCE = null;
    }
}
