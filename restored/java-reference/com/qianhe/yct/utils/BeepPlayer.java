package com.qianhe.yct.utils;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.audiofx.LoudnessEnhancer;
import android.os.Build;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.application.YCTApplication;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.sdk.TbsMediaPlayer;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BeepPlayer {
    private AudioFocusRequest audioFocusRequest;
    private AudioManager audioManager;
    private AudioTrack audioTrack;
    private volatile boolean autoPausedByUrgency;
    private int framesPerChunk;
    private boolean hasAudioFocus;
    private LoudnessEnhancer loudnessEnhancer;
    private volatile int loudnessGainMb;
    private final int maxGapMs;
    private final int minGapMs;
    private volatile boolean muted;
    private final Object pauseLock;
    private volatile boolean paused;
    private Thread playThread;
    private volatile boolean running;
    private int sampleRate;
    private volatile SoundType soundType;
    private volatile float urgency;
    private volatile float volume;

    private enum EnvelopeType {
        SHORT,
        CLICK,
        DRUM,
        FLAT
    }

    public void setUrgencyByDistanceCm(float f) {
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DIDI' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class SoundType {
        private static final /* synthetic */ SoundType[] $VALUES;
        public static final SoundType BUZZ;
        public static final SoundType DADA;
        public static final SoundType DIDI;
        public static final SoundType DIDI_LONG;
        public static final SoundType DI_LONG;
        public static final SoundType DONGDONG;
        public static final SoundType DUDU;
        public static final SoundType WOOD_FISH;
        final int beepDurationMs;
        final double drive;
        final EnvelopeType envelope;
        final int frequencyHz;

        private static /* synthetic */ SoundType[] $values() {
            return new SoundType[]{DIDI, DIDI_LONG, DONGDONG, DADA, DUDU, BUZZ, DI_LONG, WOOD_FISH};
        }

        public static SoundType valueOf(String str) {
            return (SoundType) Enum.valueOf(SoundType.class, str);
        }

        public static SoundType[] values() {
            return (SoundType[]) $VALUES.clone();
        }

        static {
            EnvelopeType envelopeType = EnvelopeType.SHORT;
            DIDI = new SoundType("DIDI", 0, 2200, 50, envelopeType, 5.0d);
            DIDI_LONG = new SoundType("DIDI_LONG", 1, 1500, 80, envelopeType, 5.0d);
            DONGDONG = new SoundType("DONGDONG", 2, 280, 140, EnvelopeType.DRUM, 5.0d);
            EnvelopeType envelopeType2 = EnvelopeType.CLICK;
            DADA = new SoundType("DADA", 3, TbsMediaPlayer.TbsMediaPlayerListener.MEDIA_INFO_TIMED_TEXT_ERROR, 40, envelopeType2, 5.0d);
            DUDU = new SoundType("DUDU", 4, 700, 100, envelopeType, 5.0d);
            EnvelopeType envelopeType3 = EnvelopeType.FLAT;
            BUZZ = new SoundType("BUZZ", 5, 1800, TbsListener.ErrorCode.DOWNLOAD_HAS_LOCAL_TBS_ERROR, envelopeType3, 5.0d);
            DI_LONG = new SoundType("DI_LONG", 6, 2200, 2000, envelopeType3, 5.0d);
            WOOD_FISH = new SoundType("WOOD_FISH", 7, TbsMediaPlayer.TbsMediaPlayerListener.MEDIA_INFO_BAD_INTERLEAVING, 80, envelopeType2, 5.0d);
            $VALUES = $values();
        }

        private SoundType(String str, int i, int i2, int i3, EnvelopeType envelopeType, double d) {
            this.frequencyHz = i2;
            this.beepDurationMs = i3;
            this.envelope = envelopeType;
            this.drive = d;
        }
    }

    public BeepPlayer() {
        this(15, 2000);
    }

    public BeepPlayer(int i, int i2) {
        this.soundType = SoundType.DIDI;
        this.urgency = 0.5f;
        this.volume = 1.0f;
        this.muted = false;
        this.sampleRate = 44100;
        this.framesPerChunk = 441;
        this.loudnessGainMb = 1500;
        this.running = false;
        this.paused = false;
        this.autoPausedByUrgency = false;
        this.pauseLock = new Object();
        i = i < 1 ? 1 : i;
        i2 = i2 <= i ? i + 1 : i2;
        this.minGapMs = i;
        this.maxGapMs = i2;
    }

    public synchronized void start() {
        if (this.running) {
            return;
        }
        this.running = true;
        if (isCarTablet()) {
            if (!initCarTabletAudioOutput()) {
                this.running = false;
                LogToFile.i("BeepPlayer: 车载平板音频输出初始化失败，无法播放");
                return;
            }
            requestAudioFocus();
            try {
                this.audioTrack.setVolume(1.0f);
                this.audioTrack.play();
            } catch (Exception e) {
                LogToFile.i("BeepPlayer: AudioTrack.play() 失败 - " + e.getMessage());
                releaseAudioOutput();
                abandonAudioFocus();
                this.running = false;
                return;
            }
        } else {
            initDefaultAudioOutput();
            this.audioTrack.play();
        }
        try {
            LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(this.audioTrack.getAudioSessionId());
            this.loudnessEnhancer = loudnessEnhancer;
            loudnessEnhancer.setTargetGain(this.loudnessGainMb);
            this.loudnessEnhancer.setEnabled(true);
        } catch (Exception unused) {
        }
        Thread thread = new Thread(new Runnable() { // from class: com.qianhe.yct.utils.BeepPlayer$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.playLoop();
            }
        }, "BeepPlayer-Audio");
        this.playThread = thread;
        thread.setPriority(10);
        this.playThread.start();
        if (this.urgency <= 0.0f) {
            this.autoPausedByUrgency = true;
            pause();
        }
    }

    public synchronized void stop() {
        this.running = false;
        this.autoPausedByUrgency = false;
        synchronized (this.pauseLock) {
            this.paused = false;
            this.pauseLock.notifyAll();
        }
        Thread thread = this.playThread;
        if (thread != null) {
            try {
                thread.join(500L);
            } catch (InterruptedException unused) {
            }
            this.playThread = null;
        }
        releaseAudioOutput();
        if (isCarTablet()) {
            abandonAudioFocus();
        }
    }

    public void setSoundType(SoundType soundType) {
        if (soundType == null || this.soundType == soundType) {
            return;
        }
        this.soundType = soundType;
        if (this.audioTrack == null || !this.running || this.paused) {
            return;
        }
        try {
            this.audioTrack.flush();
        } catch (Exception unused) {
        }
    }

    public void setUrgency(float f) throws IllegalStateException {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.urgency = f;
        if (f <= 0.0f) {
            if (!this.running || this.paused) {
                return;
            }
            this.autoPausedByUrgency = true;
            pause();
            return;
        }
        boolean z = this.autoPausedByUrgency && this.paused;
        this.autoPausedByUrgency = false;
        if (z) {
            resume();
        }
    }

    public void pause() throws IllegalStateException {
        if (!this.running || this.paused) {
            return;
        }
        this.paused = true;
        if (this.audioTrack != null) {
            try {
                if (isCarTablet()) {
                    if (Build.VERSION.SDK_INT >= 24 && this.audioTrack.getPlayState() == 3) {
                        this.audioTrack.pause();
                    }
                } else if (this.audioTrack.getPlayState() == 3) {
                    this.audioTrack.pause();
                }
                this.audioTrack.flush();
            } catch (Exception unused) {
            }
        }
    }

    public void resume() throws IllegalStateException {
        if (this.running && this.paused) {
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null) {
                try {
                    audioTrack.play();
                } catch (Exception unused) {
                }
            }
            synchronized (this.pauseLock) {
                this.paused = false;
                this.pauseLock.notifyAll();
            }
        }
    }

    private boolean isCarTablet() {
        YCTApplication yCTApplication = YCTApplication.getInstance();
        return yCTApplication != null && yCTApplication.isAT80orAT85();
    }

    private void initDefaultAudioOutput() {
        this.sampleRate = 44100;
        this.framesPerChunk = (44100 * 10) / InternalZipConstants.AES_HASH_ITERATIONS;
        int iMax = Math.max(AudioTrack.getMinBufferSize(44100, 4, 2), this.framesPerChunk * 6);
        if (Build.VERSION.SDK_INT >= 26) {
            this.audioTrack = BeepPlayer$$ExternalSyntheticApiModelOutline3.m().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(this.sampleRate).setChannelMask(4).build()).setBufferSizeInBytes(iMax).setTransferMode(1).setPerformanceMode(1).build();
        }
    }

    private boolean initCarTabletAudioOutput() throws NumberFormatException {
        int[][] iArr = {new int[]{2}, new int[]{5}, new int[]{3}};
        int[][] iArr2 = {new int[]{6, 4}, new int[]{13, 4}, new int[]{5, 4}, new int[]{1, 4}};
        for (int i : getCandidateSampleRates()) {
            if (Build.VERSION.SDK_INT >= 26) {
                for (int i2 = 0; i2 < 4; i2++) {
                    int[] iArr3 = iArr2[i2];
                    if (tryCreateAudioTrackApi26(i, iArr3[0], iArr3[1], true) || tryCreateAudioTrackApi26(i, iArr3[0], iArr3[1], false)) {
                        return true;
                    }
                }
            }
            for (int i3 = 0; i3 < 3; i3++) {
                if (tryCreateAudioTrackLegacy(i, iArr[i3][0])) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] getCandidateSampleRates() throws NumberFormatException {
        AudioManager audioManager;
        String property;
        int i = 0;
        try {
            YCTApplication yCTApplication = YCTApplication.getInstance();
            if (yCTApplication != null && (audioManager = (AudioManager) yCTApplication.getSystemService("audio")) != null && Build.VERSION.SDK_INT >= 23 && (property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE")) != null) {
                i = Integer.parseInt(property);
            }
        } catch (Exception unused) {
        }
        if (i > 0 && i != 48000 && i != 44100) {
            return new int[]{i, 48000, 44100, 16000};
        }
        return new int[]{48000, 44100, 16000};
    }

    private boolean tryCreateAudioTrackApi26(int i, int i2, int i3, boolean z) throws UnsupportedOperationException, IllegalArgumentException {
        int minBufferSize = AudioTrack.getMinBufferSize(i, 4, 2);
        if (minBufferSize <= 0) {
            return false;
        }
        int iMax = Math.max(minBufferSize, ((i * 10) / InternalZipConstants.AES_HASH_ITERATIONS) * 6);
        try {
            BeepPlayer$$ExternalSyntheticApiModelOutline4.m();
            AudioTrack.Builder transferMode = BeepPlayer$$ExternalSyntheticApiModelOutline3.m().setAudioAttributes(new AudioAttributes.Builder().setUsage(i2).setContentType(i3).build()).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(4).build()).setBufferSizeInBytes(iMax).setTransferMode(1);
            if (z && Build.VERSION.SDK_INT >= 26) {
                transferMode.setPerformanceMode(1);
            }
            AudioTrack audioTrackBuild = transferMode.build();
            if (audioTrackBuild.getState() != 1) {
                audioTrackBuild.release();
                return false;
            }
            this.audioTrack = audioTrackBuild;
            this.sampleRate = i;
            this.framesPerChunk = (i * 10) / InternalZipConstants.AES_HASH_ITERATIONS;
            LogToFile.i("BeepPlayer: 初始化成功 rate=" + i + " usage=" + i2 + " lowLatency=" + z);
            return true;
        } catch (Exception e) {
            LogToFile.i("BeepPlayer: AudioTrack 创建失败 rate=" + i + " usage=" + i2 + " lowLatency=" + z + " - " + e.getMessage());
            return false;
        }
    }

    private boolean tryCreateAudioTrackLegacy(int i, int i2) {
        int i3;
        int i4;
        int minBufferSize = AudioTrack.getMinBufferSize(i, 4, 2);
        if (minBufferSize <= 0) {
            return false;
        }
        try {
            i3 = i;
            i4 = i2;
            try {
                AudioTrack audioTrack = new AudioTrack(i4, i3, 4, 2, Math.max(minBufferSize, ((i * 10) / InternalZipConstants.AES_HASH_ITERATIONS) * 6), 1);
                if (audioTrack.getState() != 1) {
                    audioTrack.release();
                    return false;
                }
                this.audioTrack = audioTrack;
                this.sampleRate = i3;
                this.framesPerChunk = (i3 * 10) / InternalZipConstants.AES_HASH_ITERATIONS;
                LogToFile.i("BeepPlayer: 初始化成功(legacy) rate=" + i3 + " stream=" + i4);
                return true;
            } catch (Exception e) {
                e = e;
                LogToFile.i("BeepPlayer: AudioTrack(legacy) 创建失败 rate=" + i3 + " stream=" + i4 + " - " + e.getMessage());
                return false;
            }
        } catch (Exception e2) {
            e = e2;
            i3 = i;
            i4 = i2;
        }
    }

    private void releaseAudioOutput() throws IllegalStateException {
        LoudnessEnhancer loudnessEnhancer = this.loudnessEnhancer;
        if (loudnessEnhancer != null) {
            try {
                loudnessEnhancer.release();
            } catch (Exception unused) {
            }
            this.loudnessEnhancer = null;
        }
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            try {
                if (audioTrack.getPlayState() != 1) {
                    this.audioTrack.stop();
                }
            } catch (Exception unused2) {
            }
            this.audioTrack.release();
            this.audioTrack = null;
        }
    }

    private void requestAudioFocus() {
        if (isCarTablet()) {
            try {
                YCTApplication yCTApplication = YCTApplication.getInstance();
                if (yCTApplication == null) {
                    return;
                }
                if (this.audioManager == null) {
                    this.audioManager = (AudioManager) yCTApplication.getSystemService("audio");
                }
                AudioManager audioManager = this.audioManager;
                if (audioManager == null) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    if (this.audioFocusRequest == null) {
                        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(6).setContentType(4).build();
                        BeepPlayer$$ExternalSyntheticApiModelOutline2.m();
                        this.audioFocusRequest = BeepPlayer$$ExternalSyntheticApiModelOutline1.m(3).setAudioAttributes(audioAttributesBuild).setAcceptsDelayedFocusGain(true).setWillPauseWhenDucked(false).build();
                    }
                    this.hasAudioFocus = this.audioManager.requestAudioFocus(this.audioFocusRequest) == 1;
                    return;
                }
                this.hasAudioFocus = audioManager.requestAudioFocus(null, 2, 3) == 1;
            } catch (Exception e) {
                LogToFile.i("BeepPlayer: 申请音频焦点失败 - " + e.getMessage());
            }
        }
    }

    private void abandonAudioFocus() {
        AudioFocusRequest audioFocusRequest;
        AudioManager audioManager = this.audioManager;
        if (audioManager == null || !this.hasAudioFocus) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26 && (audioFocusRequest = this.audioFocusRequest) != null) {
                audioManager.abandonAudioFocusRequest(audioFocusRequest);
            } else {
                audioManager.abandonAudioFocus(null);
            }
        } catch (Exception unused) {
        }
        this.hasAudioFocus = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playLoop() {
        int i;
        int i2;
        short sMax;
        short[] sArr = new short[this.framesPerChunk];
        SoundType soundType = this.soundType;
        int iComputeCycleSamples = computeCycleSamples(this.urgency, soundType);
        long j = 0;
        double d = 0.0d;
        while (this.running) {
            if (this.paused) {
                synchronized (this.pauseLock) {
                    while (this.paused && this.running) {
                        try {
                            this.pauseLock.wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                if (!this.running) {
                    return;
                }
                j = 0;
                d = 0.0d;
            }
            SoundType soundType2 = this.soundType;
            float f = this.urgency;
            float f2 = this.muted ? 0.0f : this.volume;
            int i3 = (soundType2.beepDurationMs * this.sampleRate) / InternalZipConstants.AES_HASH_ITERATIONS;
            int iComputeCycleSamples2 = computeCycleSamples(f, soundType2);
            if (iComputeCycleSamples2 != iComputeCycleSamples) {
                j %= iComputeCycleSamples2;
                iComputeCycleSamples = iComputeCycleSamples2;
            }
            if (soundType2 != soundType) {
                soundType = soundType2;
                j = 0;
                d = 0.0d;
            }
            int i4 = this.sampleRate;
            SoundType soundType3 = soundType;
            int i5 = iComputeCycleSamples;
            double d2 = (soundType2.frequencyHz * 6.283185307179586d) / i4;
            int iMax = Math.max(1, Math.min(i3 / 8, i4 / TbsListener.ErrorCode.INFO_CODE_BASE));
            int iMax2 = Math.max(1, Math.min(i3 / 3, this.sampleRate / 100));
            int length = sArr.length;
            int i6 = this.framesPerChunk;
            if (length != i6) {
                sArr = new short[i6];
            }
            int i7 = 0;
            while (i7 < this.framesPerChunk) {
                double d3 = d2;
                if (j >= i3 || f2 <= 0.0f) {
                    i = iMax;
                    i2 = iMax2;
                    sMax = 0;
                    d = 0.0d;
                } else {
                    double dEnvelope = envelope(soundType2.envelope, (int) j, i3, iMax, iMax2);
                    i = iMax;
                    i2 = iMax2;
                    double d4 = soundType2.drive;
                    sMax = (short) (Math.max(-1.0d, Math.min(1.0d, f2 * (Math.tanh(Math.sin(d) * d4) / Math.tanh(d4)) * dEnvelope)) * 32767.0d);
                    d += d3;
                    if (d > 6.283185307179586d) {
                        d -= 6.283185307179586d;
                    }
                }
                sArr[i7] = sMax;
                j++;
                if (j >= iComputeCycleSamples2) {
                    j = 0;
                }
                i7++;
                iMax = i;
                d2 = d3;
                iMax2 = i2;
            }
            if (this.audioTrack == null) {
                return;
            }
            try {
                if (isCarTablet()) {
                    int iWrite = this.audioTrack.write(sArr, 0, sArr.length);
                    if (iWrite < 0) {
                        LogToFile.i("BeepPlayer: write 失败 code=" + iWrite);
                        return;
                    }
                } else {
                    this.audioTrack.write(sArr, 0, sArr.length);
                }
                iComputeCycleSamples = i5;
                soundType = soundType3;
            } catch (Exception e) {
                if (isCarTablet()) {
                    LogToFile.i("BeepPlayer: write 异常 - " + e.getMessage());
                    return;
                }
                return;
            }
        }
    }

    private int computeCycleSamples(float f, SoundType soundType) {
        int i = this.maxGapMs;
        int i2 = this.minGapMs;
        int i3 = (int) (i - (f * (i - i2)));
        if (i3 >= i2) {
            i2 = i3;
        }
        return ((soundType.beepDurationMs + i2) * this.sampleRate) / InternalZipConstants.AES_HASH_ITERATIONS;
    }

    private static double envelope(EnvelopeType envelopeType, int i, int i2, int i3, int i4) {
        if (i < i3) {
            return i / i3;
        }
        int iOrdinal = envelopeType.ordinal();
        if (iOrdinal == 1) {
            return Math.exp((i * (-8.0d)) / i2);
        }
        if (iOrdinal == 2) {
            return Math.exp((i * (-3.5d)) / i2);
        }
        if (i > i2 - i4) {
            return (i2 - i) / i4;
        }
        return 1.0d;
    }
}
