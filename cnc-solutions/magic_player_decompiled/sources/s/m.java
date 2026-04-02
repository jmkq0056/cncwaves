package s;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.core.entity.model.VolumeInfo;
import java.io.File;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class m {
    public static long a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        } catch (IllegalArgumentException e4) {
            Log.e("StorageUtils", "getAvailableSize path  = " + e4);
            return 0L;
        }
    }

    @Nullable
    public static String b(Context context) {
        for (VolumeInfo volumeInfo : (ArrayList) i(context)) {
            if (volumeInfo.isMounted() && volumeInfo.getType() == 3) {
                return volumeInfo.getPath();
            }
        }
        return null;
    }

    public static String c() {
        return Build.VERSION.SDK_INT == 29 ? "/storage/emulated/0" : Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static long d() {
        long jA = a(Environment.getExternalStorageDirectory().getAbsolutePath());
        return Build.VERSION.SDK_INT < 24 ? jA + a(Environment.getDataDirectory().getAbsolutePath()) : jA;
    }

    public static long e() {
        long jG = g(c());
        if (Build.VERSION.SDK_INT < 24) {
            jG += g(Environment.getDataDirectory().getAbsolutePath());
        }
        long[] jArr = {4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L};
        int i4 = 0;
        while (i4 < 8 && jG > jArr[i4]) {
            i4++;
        }
        if (i4 == 8) {
            i4--;
        }
        return jArr[i4];
    }

    public static String f(long j4) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j4 >= 1073741824) {
            double d4 = j4;
            Double.isNaN(d4);
            return decimalFormat.format((d4 * 1.0d) / 1.073741824E9d) + " GB";
        }
        if (j4 >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            double d5 = j4;
            Double.isNaN(d5);
            return decimalFormat.format((d5 * 1.0d) / 1048576.0d) + " MB";
        }
        if (j4 >= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            double d6 = j4;
            Double.isNaN(d6);
            return decimalFormat.format((d6 * 1.0d) / 1024.0d) + " KB";
        }
        double d7 = j4;
        Double.isNaN(d7);
        double d8 = d7 * 1.0d;
        if (0.0d == d8) {
            return "0 B";
        }
        return decimalFormat.format(d8) + " B";
    }

    public static long g(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    @Nullable
    public static String h(Context context) {
        for (VolumeInfo volumeInfo : (ArrayList) i(context)) {
            if (volumeInfo.isMounted() && volumeInfo.getType() == 4) {
                return volumeInfo.getPath();
            }
        }
        return null;
    }

    public static List<VolumeInfo> i(Context context) {
        Log.d("StorageUtils", "getVolumeList: internalSdPath: " + c());
        ArrayList arrayList = new ArrayList();
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        if (Build.VERSION.SDK_INT < 23) {
            try {
                Method method = StorageManager.class.getMethod("getVolumeList", new Class[0]);
                method.setAccessible(true);
                Object[] objArr = (Object[]) method.invoke(storageManager, new Object[0]);
                if (objArr != null) {
                    for (Object obj : objArr) {
                        try {
                            VolumeInfo volumeInfo = new VolumeInfo();
                            String str = (String) obj.getClass().getMethod("getPath", new Class[0]).invoke(obj, new Object[0]);
                            volumeInfo.setPath(str);
                            volumeInfo.setMounted("mounted".equals((String) obj.getClass().getMethod("getState", new Class[0]).invoke(obj, new Object[0])));
                            if (str.contains("internal_sd")) {
                                volumeInfo.setType(2);
                            } else if (str.contains("external_sd")) {
                                volumeInfo.setType(3);
                            } else if (str.contains("usb_storage")) {
                                volumeInfo.setType(4);
                            } else {
                                volumeInfo.setType(0);
                            }
                            arrayList.add(volumeInfo);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } else {
            try {
                for (Object obj2 : (List) StorageManager.class.getDeclaredMethod("getVolumes", new Class[0]).invoke(storageManager, new Object[0])) {
                    try {
                        VolumeInfo volumeInfo2 = new VolumeInfo();
                        volumeInfo2.setPath(((File) obj2.getClass().getDeclaredMethod("getPath", new Class[0]).invoke(obj2, new Object[0])).getAbsolutePath());
                        volumeInfo2.setMounted(((Integer) obj2.getClass().getMethod("getState", new Class[0]).invoke(obj2, new Object[0])).intValue() == 2);
                        int i4 = obj2.getClass().getField(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE).getInt(obj2);
                        if (i4 == 1) {
                            volumeInfo2.setType(1);
                        } else if (i4 == 2) {
                            volumeInfo2.setType(2);
                        } else if (i4 == 0) {
                            Object objInvoke = obj2.getClass().getMethod("getDisk", new Class[0]).invoke(obj2, new Object[0]);
                            if (objInvoke == null) {
                                volumeInfo2.setType(0);
                            } else if (((Boolean) objInvoke.getClass().getMethod("isSd", new Class[0]).invoke(objInvoke, new Object[0])).booleanValue()) {
                                volumeInfo2.setType(3);
                            } else {
                                volumeInfo2.setType(4);
                            }
                        }
                        arrayList.add(volumeInfo2);
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return arrayList;
    }
}
