package com.qh.xcad;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.qh.xcad.IXCadParseService;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCadParseClient {
    private static final long BIND_TIMEOUT_MS = 15000;
    public static final int STATUS_CANCEL = 102;
    public static final int STATUS_PROC_DIED = 100;
    public static final int STATUS_TIMEOUT = 101;
    private static final String TAG = "XCadParseClient";

    public static final class Result {
        public final byte[] data;
        public final String message;
        public final int status;

        Result(byte[] bArr, int i, String str) {
            this.data = bArr;
            this.status = i;
            this.message = str;
        }

        public boolean ok() {
            return this.data != null;
        }
    }

    private XCadParseClient() {
    }

    public static Result parseBlocking(Context context, String str) {
        boolean zBindService;
        Context applicationContext = context.getApplicationContext();
        final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        final Object obj = new Object();
        boolean z = false;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.qh.xcad.XCadParseClient.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (atomicBoolean.get()) {
                    return;
                }
                arrayBlockingQueue.offer(IXCadParseService.Stub.asInterface(iBinder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (atomicBoolean.get()) {
                    return;
                }
                arrayBlockingQueue.offer(obj);
            }
        };
        try {
            try {
                zBindService = applicationContext.bindService(new Intent(applicationContext, (Class<?>) XCadParseService.class), serviceConnection, 1);
            } finally {
                atomicBoolean.set(true);
                if (0 != 0) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (InterruptedException unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!zBindService) {
                Result result = new Result(null, 100, "无法启动解析进程");
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused3) {
                    }
                }
                return result;
            }
            Object objPoll = arrayBlockingQueue.poll(BIND_TIMEOUT_MS, TimeUnit.MILLISECONDS);
            if (objPoll == null) {
                atomicBoolean.set(true);
                Result result2 = new Result(null, 101, "解析进程启动超时");
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused4) {
                    }
                }
                return result2;
            }
            if (objPoll == obj) {
                Result result3 = new Result(null, 100, "解析进程异常终止(可能内存不足)");
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused5) {
                    }
                }
                return result3;
            }
            IXCadParseService iXCadParseService = (IXCadParseService) objPoll;
            if (atomicBoolean.get()) {
                Result result4 = new Result(null, 102, "解析取消");
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused6) {
                    }
                }
                return result4;
            }
            try {
                ParseReply parseReply = iXCadParseService.parse(str);
                if (parseReply == null) {
                    Result result5 = new Result(null, 1, "解析无结果");
                    atomicBoolean.set(true);
                    if (zBindService) {
                        try {
                            applicationContext.unbindService(serviceConnection);
                        } catch (Throwable unused7) {
                        }
                    }
                    return result5;
                }
                int i = parseReply.status;
                if (i == 0) {
                    ParcelFileDescriptor parcelFileDescriptor = parseReply.pfd;
                    try {
                        if (parcelFileDescriptor != null) {
                            try {
                                Result result6 = new Result(Shm.readAll(parcelFileDescriptor, (int) parseReply.length), 0, null);
                                atomicBoolean.set(true);
                                if (zBindService) {
                                    try {
                                        applicationContext.unbindService(serviceConnection);
                                    } catch (Throwable unused8) {
                                    }
                                }
                                return result6;
                            } catch (OutOfMemoryError unused9) {
                                Result result7 = new Result(null, 2, "结果过大，内存不足");
                                try {
                                    parseReply.pfd.close();
                                } catch (Throwable unused10) {
                                }
                                atomicBoolean.set(true);
                                if (zBindService) {
                                    try {
                                        applicationContext.unbindService(serviceConnection);
                                    } catch (Throwable unused11) {
                                    }
                                }
                                return result7;
                            } catch (Throwable th2) {
                                Result result8 = new Result(null, 1, "读取解析结果失败: " + th2.getMessage());
                                try {
                                    parseReply.pfd.close();
                                } catch (Throwable unused12) {
                                }
                                atomicBoolean.set(true);
                                if (zBindService) {
                                    try {
                                        applicationContext.unbindService(serviceConnection);
                                    } catch (Throwable unused13) {
                                    }
                                }
                                return result8;
                            }
                        }
                    } finally {
                        try {
                            parseReply.pfd.close();
                        } catch (Throwable unused14) {
                        }
                    }
                }
                String str2 = parseReply.error;
                if (str2 == null) {
                    str2 = "解析失败";
                }
                Result result9 = new Result(null, i, str2);
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused15) {
                    }
                }
                return result9;
            } catch (DeadObjectException unused16) {
                Result result10 = new Result(null, 100, "解析进程崩溃/被系统回收(内存不足)，请重试");
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused17) {
                    }
                }
                return result10;
            } catch (RemoteException e) {
                Result result11 = new Result(null, 1, "解析进程通信失败: " + e.getMessage());
                atomicBoolean.set(true);
                if (zBindService) {
                    try {
                        applicationContext.unbindService(serviceConnection);
                    } catch (Throwable unused18) {
                    }
                }
                return result11;
            }
        } catch (InterruptedException unused19) {
            z = zBindService;
            atomicBoolean.set(true);
            Thread.currentThread().interrupt();
            Result result12 = new Result(null, 1, "解析被中断");
            atomicBoolean.set(true);
            if (z) {
                try {
                    applicationContext.unbindService(serviceConnection);
                } catch (Throwable unused20) {
                }
            }
            return result12;
        } catch (Throwable th3) {
            th = th3;
            z = zBindService;
            String str3 = "parseBlocking 异常: " + th;
            Result result13 = new Result(null, 1, "解析失败: " + th.getMessage());
            if (z) {
                try {
                    applicationContext.unbindService(serviceConnection);
                } catch (Throwable unused21) {
                }
            }
            return result13;
        }
    }
}
