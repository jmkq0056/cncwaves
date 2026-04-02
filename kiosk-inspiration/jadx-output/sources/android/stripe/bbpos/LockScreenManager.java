package android.stripe.bbpos;

import android.content.Context;
import android.os.ILockScreenService;
import android.os.ServiceManager;
import android.stripe.os.LastPinInfo;
import android.util.Pair;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LockScreenManager {
    private ILockScreenService mLockScreenService = ILockScreenService.Stub.asInterface(ServiceManager.getService("LOCK_SCREEN_SERVICE"));

    public LockScreenManager(Context context) {
    }

    public void registerUnLockPinListener(LockScreenResultListener lockScreenResultListener) {
        try {
            this.mLockScreenService.registerUnLockPinListener(new 1(this, lockScreenResultListener));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setLockScreenPins(List<String> list) {
        setLockScreenPins(list, null);
    }

    public void setLockScreenPins(List<String> list, LockScreenResultListener lockScreenResultListener) {
        try {
            this.mLockScreenService.setLockScreenPins(list, new 2(this, lockScreenResultListener));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateLockScreenPins(List<String> list) {
        updateLockScreenPins(list, null);
    }

    public void updateLockScreenPins(List<String> list, LockScreenResultListener lockScreenResultListener) {
        try {
            this.mLockScreenService.updateLockScreenPins(list, new 3(this, lockScreenResultListener));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearLockScreenPins(List<String> list) {
        clearLockScreenPins(list, null);
    }

    public void clearLockScreenPins(List<String> list, LockScreenResultListener lockScreenResultListener) {
        try {
            this.mLockScreenService.clearLockScreenPins(list, new 4(this, lockScreenResultListener));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeLockScreen() {
        removeLockScreen(null);
    }

    public void removeLockScreen(LockScreenResultListener lockScreenResultListener) {
        try {
            this.mLockScreenService.removeLockScreen(new 5(this, lockScreenResultListener));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[] checkPassword(byte[] bArr) {
        try {
            return this.mLockScreenService.checkPassword(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }

    public void setLastUnLockPin(String str) {
        try {
            this.mLockScreenService.setLastUnLockPin(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Pair<String, Long> getLastPinWithTimestamp() {
        try {
            LastPinInfo lastPinWithTimestamp = this.mLockScreenService.getLastPinWithTimestamp();
            if (lastPinWithTimestamp != null) {
                return Pair.create(lastPinWithTimestamp.pin, Long.valueOf(lastPinWithTimestamp.time));
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
