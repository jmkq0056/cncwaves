package com.example.digitalkiosk.msprintsdk;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class UsbDriver {
    public static final int MAX_DEVICE_NUM = 2;
    private static final String TAG = "UsbDriver";
    public static final int WRITEBUF_SIZE = 4096;
    private UsbManager mManager;
    private PendingIntent mPermissionIntent;
    private static SimpleDateFormat LogSdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static SimpleDateFormat logfile = new SimpleDateFormat("yyyyMMdd");
    private UsbDevice[] m_Device = new UsbDevice[2];
    private UsbInterface[] mInterface = new UsbInterface[2];
    private UsbDeviceConnection[] mDeviceConnection = new UsbDeviceConnection[2];
    private int m_UsbDevIdx = -1;
    private UsbEndpoint[] mFTDIEndpointIN = new UsbEndpoint[2];
    private UsbEndpoint[] mFTDIEndpointOUT = new UsbEndpoint[2];
    private int m_iWaitTime = 3000;
    private String m_strLog_Path = "";
    UsbDevice mUsbDevice = null;
    private boolean syncLock = false;

    public UsbDriver(UsbManager usbManager, Context context) {
        this.mManager = usbManager;
    }

    public synchronized void lock() {
        while (this.syncLock) {
            try {
                wait();
            } catch (Exception unused) {
            }
        }
        this.syncLock = true;
    }

    public synchronized void unlock() {
        this.syncLock = false;
        notifyAll();
    }

    public void setFlowCtrl(int i) {
        if (i == 0) {
            this.m_iWaitTime = 2000;
        } else {
            this.m_iWaitTime = 0;
        }
    }

    public void setPermissionIntent(PendingIntent pendingIntent) {
        this.mPermissionIntent = pendingIntent;
    }

    public boolean usbAttached(Intent intent) {
        return usbAttached((UsbDevice) intent.getParcelableExtra("device"));
    }

    public boolean usbAttached(UsbDevice usbDevice) {
        int usbDevIndex = getUsbDevIndex(usbDevice);
        this.m_UsbDevIdx = usbDevIndex;
        this.m_Device[usbDevIndex] = usbDevice;
        if (usbDevIndex < 0) {
            Log.i(TAG, "Not support device : " + usbDevice.toString());
            return false;
        }
        if (this.mManager.hasPermission(usbDevice)) {
            return true;
        }
        this.mManager.requestPermission(this.m_Device[this.m_UsbDevIdx], this.mPermissionIntent);
        return false;
    }

    public boolean openUsbDevice() {
        if (this.m_UsbDevIdx < 0) {
            Iterator<UsbDevice> it = this.mManager.getDeviceList().values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                UsbDevice next = it.next();
                int usbDevIndex = getUsbDevIndex(next);
                this.m_UsbDevIdx = usbDevIndex;
                if (usbDevIndex >= 0) {
                    this.m_Device[usbDevIndex] = next;
                    break;
                }
            }
        }
        int i = this.m_UsbDevIdx;
        if (i < 0) {
            return false;
        }
        return openUsbDevice(this.m_Device[i]);
    }

    public boolean openUsbDevice(UsbDevice usbDevice) {
        int interfaceCount;
        int usbDevIndex = getUsbDevIndex(usbDevice);
        this.m_UsbDevIdx = usbDevIndex;
        if (usbDevIndex < 0 || (interfaceCount = this.m_Device[usbDevIndex].getInterfaceCount()) == 0) {
            return false;
        }
        if (interfaceCount > 0) {
            UsbInterface[] usbInterfaceArr = this.mInterface;
            int i = this.m_UsbDevIdx;
            usbInterfaceArr[i] = this.m_Device[i].getInterface(0);
        }
        if (this.mInterface[this.m_UsbDevIdx].getEndpoint(1) != null) {
            UsbEndpoint[] usbEndpointArr = this.mFTDIEndpointOUT;
            int i2 = this.m_UsbDevIdx;
            usbEndpointArr[i2] = this.mInterface[i2].getEndpoint(1);
        }
        if (this.mInterface[this.m_UsbDevIdx].getEndpoint(0) != null) {
            UsbEndpoint[] usbEndpointArr2 = this.mFTDIEndpointIN;
            int i3 = this.m_UsbDevIdx;
            usbEndpointArr2[i3] = this.mInterface[i3].getEndpoint(0);
        }
        UsbDeviceConnection[] usbDeviceConnectionArr = this.mDeviceConnection;
        int i4 = this.m_UsbDevIdx;
        usbDeviceConnectionArr[i4] = this.mManager.openDevice(this.m_Device[i4]);
        UsbDeviceConnection[] usbDeviceConnectionArr2 = this.mDeviceConnection;
        int i5 = this.m_UsbDevIdx;
        UsbDeviceConnection usbDeviceConnection = usbDeviceConnectionArr2[i5];
        if (usbDeviceConnection == null) {
            return false;
        }
        if (usbDeviceConnection.claimInterface(this.mInterface[i5], true)) {
            return true;
        }
        this.mDeviceConnection[this.m_UsbDevIdx].close();
        return false;
    }

    public void getPermission(UsbDevice usbDevice) {
        if (usbDevice == null || this.mPermissionIntent == null || this.mManager.hasPermission(usbDevice)) {
            return;
        }
        this.mManager.requestPermission(usbDevice, this.mPermissionIntent);
    }

    public void closeUsbDevice() {
        int i = this.m_UsbDevIdx;
        if (i < 0) {
            return;
        }
        closeUsbDevice(this.m_Device[i]);
    }

    public boolean closeUsbDevice(UsbDevice usbDevice) {
        UsbInterface usbInterface;
        try {
            int usbDevIndex = getUsbDevIndex(usbDevice);
            this.m_UsbDevIdx = usbDevIndex;
            if (usbDevIndex < 0) {
                return false;
            }
            UsbDeviceConnection usbDeviceConnection = this.mDeviceConnection[usbDevIndex];
            if (usbDeviceConnection == null || (usbInterface = this.mInterface[usbDevIndex]) == null) {
                return true;
            }
            usbDeviceConnection.releaseInterface(usbInterface);
            UsbInterface[] usbInterfaceArr = this.mInterface;
            int i = this.m_UsbDevIdx;
            usbInterfaceArr[i] = null;
            this.mDeviceConnection[i].close();
            UsbDeviceConnection[] usbDeviceConnectionArr = this.mDeviceConnection;
            int i2 = this.m_UsbDevIdx;
            usbDeviceConnectionArr[i2] = null;
            this.m_Device[i2] = null;
            this.mFTDIEndpointIN[i2] = null;
            this.mFTDIEndpointOUT[i2] = null;
            return true;
        } catch (Exception e) {
            Log.i(TAG, "closeUsbDevice exception: " + e.getMessage().toString());
            return true;
        }
    }

    public boolean usbDetached(Intent intent) {
        return closeUsbDevice((UsbDevice) intent.getParcelableExtra("device"));
    }

    public int write(byte[] bArr) {
        return write(bArr, bArr.length);
    }

    public int write(byte[] bArr, int i) {
        int i2 = this.m_UsbDevIdx;
        if (i2 < 0) {
            return -1;
        }
        return write(bArr, bArr.length, this.m_Device[i2]);
    }

    public int read(byte[] bArr, byte[] bArr2) {
        int i = this.m_UsbDevIdx;
        if (i < 0) {
            return -1;
        }
        return read(bArr, bArr2, this.m_Device[i]);
    }

    public int write(byte[] bArr, UsbDevice usbDevice) {
        return write(bArr, bArr.length, usbDevice);
    }

    public int write(byte[] bArr, int i, UsbDevice usbDevice) {
        int i2;
        int usbDevIndex = getUsbDevIndex(usbDevice);
        this.m_UsbDevIdx = usbDevIndex;
        if (usbDevIndex < 0) {
            return -1;
        }
        lock();
        int i3 = 0;
        try {
            byte[] bArr2 = new byte[4096];
            i2 = 0;
            while (i2 < i) {
                int i4 = i2 + 4096 > i ? i - i2 : 4096;
                try {
                    System.arraycopy(bArr, i2, bArr2, 0, i4);
                    UsbDeviceConnection[] usbDeviceConnectionArr = this.mDeviceConnection;
                    int i5 = this.m_UsbDevIdx;
                    int iBulkTransfer = usbDeviceConnectionArr[i5].bulkTransfer(this.mFTDIEndpointIN[i5], bArr2, i4, this.m_iWaitTime);
                    if (iBulkTransfer >= 0) {
                        if (!this.m_strLog_Path.equals("")) {
                            String str = "";
                            for (int i6 = 0; i6 < iBulkTransfer; i6++) {
                                str = str + String.format("%02X", Byte.valueOf(bArr2[i6])) + " ";
                            }
                            writeLogtoFile("write", "Length=" + String.valueOf(iBulkTransfer) + ";Data=[" + str + "]");
                        }
                        i2 += iBulkTransfer;
                    } else {
                        unlock();
                        return -1;
                    }
                } catch (Exception unused) {
                    i3 = i2;
                    i2 = i3;
                    unlock();
                    return i2;
                }
            }
        } catch (Exception unused2) {
        }
        unlock();
        return i2;
    }

    public int read(byte[] bArr, byte[] bArr2, UsbDevice usbDevice) {
        if (write(bArr2, bArr2.length, usbDevice) < 0) {
            return -1;
        }
        lock();
        int iBulkTransfer = 0;
        try {
            try {
                Thread.sleep(50L);
                if (bArr.length > 10) {
                    Thread.sleep(150L);
                }
            } catch (Exception unused) {
            }
        } catch (InterruptedException unused2) {
        }
        UsbDeviceConnection[] usbDeviceConnectionArr = this.mDeviceConnection;
        int i = this.m_UsbDevIdx;
        iBulkTransfer = usbDeviceConnectionArr[i].bulkTransfer(this.mFTDIEndpointOUT[i], bArr, bArr.length, 300);
        if (iBulkTransfer == 0) {
            UsbDeviceConnection[] usbDeviceConnectionArr2 = this.mDeviceConnection;
            int i2 = this.m_UsbDevIdx;
            iBulkTransfer = usbDeviceConnectionArr2[i2].bulkTransfer(this.mFTDIEndpointOUT[i2], bArr, bArr.length, 300);
        }
        unlock();
        return iBulkTransfer;
    }

    private int getUsbDevIndex(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return -1;
        }
        try {
            if (usbDevice.getProductId() == 8211 && usbDevice.getVendorId() == 1305) {
                return 0;
            }
            if (usbDevice.getProductId() == 8213) {
                if (usbDevice.getVendorId() == 1305) {
                    return 1;
                }
            }
        } catch (Exception e) {
            Log.i(TAG, "getUsbDevIndex exception: " + e.getMessage().toString());
        }
        return -1;
    }

    public boolean isUsbPermission() {
        UsbManager usbManager;
        try {
            int i = this.m_UsbDevIdx;
            if (i >= 0 && (usbManager = this.mManager) != null) {
                return usbManager.hasPermission(this.m_Device[i]);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isConnected() {
        int i = this.m_UsbDevIdx;
        return (i < 0 || this.m_Device[i] == null || this.mFTDIEndpointIN[i] == null || this.mFTDIEndpointOUT[i] == null) ? false : true;
    }

    public void SetLogPath(String str) {
        this.m_strLog_Path = str;
    }

    private void writeLogtoFile(String str, String str2) {
        if (this.m_strLog_Path.equals("")) {
            return;
        }
        Date date = new Date();
        String str3 = logfile.format(date);
        String str4 = LogSdf.format(date) + " " + str + " " + str2;
        try {
            File file = new File(this.m_strLog_Path);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileWriter fileWriter = new FileWriter(new File(this.m_strLog_Path, "PrintSdk" + str3 + ".log"), true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(str4);
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public int usbDriverCheck() {
        try {
            if (!isUsbPermission()) {
                HashMap<String, UsbDevice> deviceList = this.mManager.getDeviceList();
                this.mUsbDevice = null;
                for (UsbDevice usbDevice : deviceList.values()) {
                    if ((usbDevice.getProductId() == 8211 && usbDevice.getVendorId() == 1305) || (usbDevice.getProductId() == 8213 && usbDevice.getVendorId() == 1305)) {
                        this.mUsbDevice = usbDevice;
                    }
                }
                UsbDevice usbDevice2 = this.mUsbDevice;
                if (usbDevice2 != null) {
                    return (usbAttached(usbDevice2) && openUsbDevice(this.mUsbDevice)) ? 0 : 1;
                }
            } else if (isConnected() || openUsbDevice(this.mUsbDevice)) {
                return 0;
            }
            return -1;
        } catch (Exception e) {
            Log.e(TAG, "usbDriverCheck:" + e.getMessage());
            return -1;
        }
    }
}
