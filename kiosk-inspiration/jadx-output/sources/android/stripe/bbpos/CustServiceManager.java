package android.stripe.bbpos;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.ICustService;
import android.os.ServiceManager;
import android.stripe.os.BbposMap;
import android.stripe.os.BbposRemoteCallback;
import android.stripe.os.BbposResult;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CustServiceManager {
    private static final String TAG = "CustServiceManager";
    private ICustService mCustService = ICustService.Stub.asInterface(ServiceManager.getService("custservice"));

    public CustServiceManager(Context context) {
    }

    public void saveShellCommandFormFileBytes(byte[] bArr, int i) {
        try {
            this.mCustService.saveShellCommandFormFileBytes(bArr, i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String getRecoveryLastInstallFileData() {
        try {
            return this.mCustService.getRecoveryLastInstallFileData();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void saveShellCommandInit() {
        try {
            this.mCustService.saveShellCommandInit();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void saveShellCommandFormFilePath(String str) {
        try {
            this.mCustService.saveShellCommandFormFilePath(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String getPreinstallAppsConfig() {
        try {
            return this.mCustService.getPreinstallAppsConfig();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void savePreinstallAppsConfig(String str) {
        try {
            this.mCustService.savePreinstallAppsConfig(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean isPackageNameExistInPreinstallList(String str) {
        try {
            return this.mCustService.isPackageNameExistInPreinstallList(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public BbposResult setFactoryTarget(String str, String str2) {
        try {
            return this.mCustService.setFactoryTarget(str, str2);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return new BbposResult(-100, "binder ipc failed.");
        }
    }

    public BbposResult removeFactoryTarget(String str) {
        try {
            return this.mCustService.removeFactoryTarget(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return new BbposResult(-100, "binder ipc failed.");
        }
    }

    public PackageInfo getApkInfo(String str) {
        try {
            return this.mCustService.getApkInfo(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void factoryReset() {
        try {
            this.mCustService.factoryReset();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void backupApp(String str, String str2) {
        try {
            this.mCustService.backupApp(str, str2);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String getHiddenAppList() {
        try {
            return this.mCustService.getHiddenAppList();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void saveHiddenAppsList(String str) {
        try {
            this.mCustService.saveHiddenAppList(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void setTimeZone(String str) {
        try {
            this.mCustService.setTimeZone(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void hideStatusBarAndNavBar() {
        try {
            this.mCustService.hideStatusBarAndNavBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void bootupShowNavigationBar() {
        try {
            this.mCustService.bootupShowNavigationBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void bootupHideNavigationBar() {
        try {
            this.mCustService.bootupHideNavigationBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean isBootupHideNavigationBar() {
        try {
            return this.mCustService.isBootupHideNavigationBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void bootupShowStatusBar() {
        try {
            this.mCustService.bootupShowStatusBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void bootupHideStatusBar() {
        try {
            this.mCustService.bootupHideStatusBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean isBootupHideStatusBar() {
        try {
            return this.mCustService.isBootupHideStatusBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void uninstallApp(String str) {
        try {
            this.mCustService.uninstallApp(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void showStatusBarAndNavBar() {
        try {
            this.mCustService.showStatusBarAndNavBar();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void setBootAnimation(String str) {
        try {
            this.mCustService.setBootAnimation(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void setBootLogo(String str) {
        try {
            this.mCustService.setBootLogo(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void startOSUpdate(String str, boolean z) {
        try {
            this.mCustService.startOSUpdate(str, z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void startOSUpdateCallback(String str, boolean z, BbposRemoteCallback bbposRemoteCallback) {
        try {
            this.mCustService.startOSUpdateCallback(str, z, bbposRemoteCallback);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void setProperty(String str, String str2) {
        try {
            this.mCustService.setProperty(str, str2);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String getProperty(String str) {
        try {
            return this.mCustService.getProperty(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void installCertFromBytes(byte[] bArr, int i, String str) {
        try {
            this.mCustService.installCertFromBytes(bArr, i, str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void installCertFromFilePath(String str) {
        try {
            this.mCustService.installCertFromFilePath(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void removeCert(String str) {
        try {
            this.mCustService.removeCert(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String[] getInstalledCerts() {
        try {
            return this.mCustService.getInstalledCerts();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public BbposMap getInstalledCertsMap() {
        try {
            return this.mCustService.getInstalledCertsMap();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public boolean setDeviceOwner(ComponentName componentName) {
        try {
            return this.mCustService.setDeviceOwner(componentName);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public boolean isDeviceOwnerApp(String str) {
        try {
            return this.mCustService.isDeviceOwnerApp(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void clearDeviceOwnerApp(String str) {
        try {
            this.mCustService.clearDeviceOwnerApp(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean getCradleState() {
        try {
            return this.mCustService.getCradleState();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void setCradleMode(int i) {
        try {
            this.mCustService.setCradleMode(i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public int getCradleMode() {
        try {
            return this.mCustService.getCradleMode();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return 0;
        }
    }

    public boolean setStartupApp(ComponentName componentName) {
        try {
            return this.mCustService.setStartupApp(componentName);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void clearStartupApp() {
        try {
            this.mCustService.clearStartupApp();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String readSysFileStatus(String str) {
        try {
            return this.mCustService.readSysFileStatus(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public boolean writeSysFileStatus(String str, String str2) {
        try {
            return this.mCustService.writeSysFileStatus(str, str2);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void enablePowerKey(boolean z) {
        try {
            this.mCustService.enablePowerKey(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void installTlsCertFromBytes(byte[] bArr, int i, String str) {
        try {
            this.mCustService.installTlsCertFromBytes(bArr, i, str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void installTlsCertFromFilePath(String str) {
        try {
            this.mCustService.installTlsCertFromFilePath(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void removeTlsCert(String str) {
        try {
            this.mCustService.removeTlsCert(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String[] getTlsCerts() {
        try {
            return this.mCustService.getTlsCerts();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    private ICustService getCustService() {
        if (this.mCustService == null) {
            this.mCustService = ICustService.Stub.asInterface(ServiceManager.getService("custservice"));
        }
        return this.mCustService;
    }

    public void initSystemUpdate() {
        try {
            getCustService().initSystemUpdate();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void bindSystemUpdateCallback(ISystemUpdateCallback iSystemUpdateCallback) {
        try {
            getCustService().bindSystemUpdateCallback(iSystemUpdateCallback);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void unbindSystemUpdateCallback() {
        try {
            getCustService().unbindSystemUpdateCallback();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void applySystemUpdatePayload(String str, long j, long j2, String[] strArr) {
        try {
            getCustService().applySystemUpdatePayload(str, j, j2, strArr);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public int readSysFileStatusInt(String str) {
        try {
            return getCustService().readSysFileStatusInt(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return 2;
        }
    }

    public boolean writeSysFileStatusInt(String str, int i) {
        try {
            return getCustService().writeSysFileStatusInt(str, i);
        } catch (Exception e) {
            Log.e("zxw1231312313132131312", this.mCustService + "");
            e.printStackTrace();
            return false;
        }
    }

    public int setDeviceName(String str) {
        try {
            return getCustService().setDeviceName(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return -3;
        }
    }

    public int setRndis(boolean z) {
        try {
            return getCustService().setRndis(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return -3;
        }
    }

    public int getRndisStatus() {
        try {
            return getCustService().getRndisStatus();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return -3;
        }
    }

    public boolean startDeviceReporter() {
        try {
            return getCustService().startDeviceReporter();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public boolean stopDeviceReporter() {
        try {
            return getCustService().stopDeviceReporter();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public boolean isDeviceReporterRunning() {
        try {
            return getCustService().isDeviceReporterRunning();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void generateDeviceReport(String str, IBbposResultCallback iBbposResultCallback) {
        try {
            getCustService().generateDeviceReport(str, iBbposResultCallback);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public void clearBugreportFiles() {
        try {
            getCustService().clearBugreportFiles();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public String getUSBDevicePort(String str) {
        try {
            return getCustService().getUSBDevicePort(str);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void setVibrationEnabled(boolean z) {
        try {
            getCustService().setVibrationEnabled(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean getVibrationEnabled() {
        try {
            return getCustService().getVibrationEnabled();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void setAllowedSettingIntentPackages(List<String> list) {
        try {
            this.mCustService.setAllowedSettingIntentPackages(list);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public List<String> getAllowedSettingIntentPackages() {
        try {
            return this.mCustService.getAllowedSettingIntentPackages();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    public void setDefaultBootAnimationAndLogo() {
        try {
            getCustService().setDefaultBootAnimationAndLogo();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public int setGSensorWakeup(boolean z) {
        try {
            return getCustService().setGSensorWakeup(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return -1;
        }
    }

    public boolean getGSensorWakeup() {
        try {
            return getCustService().getGSensorWakeup();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public void setAutoCorrectionEnabled(boolean z) {
        try {
            getCustService().setAutoCorrectionEnabled(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
        }
    }

    public boolean getAutoCorrectionEnabled() {
        try {
            return getCustService().getAutoCorrectionEnabled();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }

    public int setTouchScreenWakeup(boolean z) {
        try {
            return this.mCustService.setTouchScreenWakeup(z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return -1;
        }
    }

    public boolean getTouchScreenWakeup() {
        try {
            return this.mCustService.getTouchScreenWakeup();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return false;
        }
    }
}
