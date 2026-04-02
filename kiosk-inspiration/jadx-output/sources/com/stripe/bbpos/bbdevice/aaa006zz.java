package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.io.PipedInputStream;

/* JADX INFO: loaded from: classes3.dex */
final class aaa006zz {
    private final Context aaa000;
    private final aaa003zz aaa001;
    private aaa001zz aaa002 = aaa001zz.IDLE;
    private final BluetoothAdapter aaa003 = BluetoothAdapter.getDefaultAdapter();
    private BroadcastReceiver aaa004;

    class aaa000zz extends BroadcastReceiver {
        final /* synthetic */ BluetoothDevice aaa000;

        aaa000zz(BluetoothDevice bluetoothDevice) {
            this.aaa000 = bluetoothDevice;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            aaa006zz.this.aaa000("[registerReceivers] [onReceive] intent.getAction() : " + intent.getAction());
            String action = intent.getAction();
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
                aaa006zz.this.aaa000("[registerReceivers] [onReceive] ACTION_DISCOVERY_FINISHED");
                return;
            }
            if (action.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                aaa006zz.this.aaa000("[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED");
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                aaa006zz.this.aaa000("[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED bluetoothDevice : " + bluetoothDevice);
                aaa006zz.this.aaa000("[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED state : " + aaa006zz.this.aaa002);
                if (aaa006zz.this.aaa002 == aaa001zz.CONNECTED_BTV2 && bluetoothDevice.getAddress().equals(this.aaa000.getAddress())) {
                    aaa006zz.this.aaa001.aaa011.aaa000("Unknown BT disconnection (3050)", false);
                    aaa006zz.this.aaa001.aaa014();
                    return;
                }
                return;
            }
            if (action.equalsIgnoreCase("android.bluetooth.adapter.action.STATE_CHANGED")) {
                aaa006zz.this.aaa000("[registerReceivers] [onReceive] ACTION_STATE_CHANGED bluetoothAdapter.getState() : " + aaa006zz.this.aaa003.getState());
                if (aaa006zz.this.aaa002 == aaa001zz.CONNECTED_BTV2 || aaa006zz.this.aaa002 == aaa001zz.CONNECTED_BTV4) {
                    int state = aaa006zz.this.aaa003.getState();
                    if (state == 10 || state == 13) {
                        aaa006zz.this.aaa001.aaa011.aaa000("Android/iOS Bluetooth is off (3051)", false);
                        aaa006zz.this.aaa001.aaa014();
                    }
                }
            }
        }
    }

    private enum aaa001zz {
        IDLE,
        CONNECTED_BTV2,
        CONNECTED_BTV4
    }

    aaa006zz(Context context, aaa003zz aaa003zzVar) {
        this.aaa000 = context;
        this.aaa001 = aaa003zzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaa000(String str) {
    }

    void aaa001() {
        if (this.aaa002 == aaa001zz.CONNECTED_BTV4) {
            this.aaa002 = aaa001zz.IDLE;
            this.aaa001.aaa045();
        }
    }

    private void aaa000(BluetoothDevice bluetoothDevice) {
        aaa000("[registerReceivers]");
        BroadcastReceiver broadcastReceiver = this.aaa004;
        if (broadcastReceiver != null) {
            try {
                this.aaa000.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused) {
            }
        }
        this.aaa004 = new aaa000zz(bluetoothDevice);
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        int i = this.aaa000.getApplicationInfo().targetSdkVersion;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31 || i < 31) {
            this.aaa000.registerReceiver(this.aaa004, intentFilter, "android.permission.BLUETOOTH", null);
        } else if (i2 >= 34) {
            this.aaa000.registerReceiver(this.aaa004, intentFilter, "android.permission.BLUETOOTH_CONNECT", null, 2);
        } else {
            this.aaa000.registerReceiver(this.aaa004, intentFilter, "android.permission.BLUETOOTH_CONNECT", null);
        }
    }

    void aaa000(BluetoothDevice bluetoothDevice, BluetoothSocket bluetoothSocket) {
        aaa000("[connectBTv2] bluetoothDevice : " + bluetoothDevice + ", bluetoothSocket : " + bluetoothSocket);
        if (this.aaa002 == aaa001zz.IDLE) {
            this.aaa002 = aaa001zz.CONNECTED_BTV2;
            aaa000(bluetoothDevice);
            this.aaa001.aaa000(bluetoothSocket);
            return;
        }
        this.aaa001.aaa000(aaa003zz.aaa002zz.ILLEGAL_STATE, "");
    }

    void aaa000() {
        if (this.aaa002 == aaa001zz.CONNECTED_BTV2) {
            this.aaa002 = aaa001zz.IDLE;
            BroadcastReceiver broadcastReceiver = this.aaa004;
            if (broadcastReceiver != null) {
                try {
                    this.aaa000.unregisterReceiver(broadcastReceiver);
                    this.aaa004 = null;
                } catch (Exception unused) {
                }
            }
            this.aaa001.aaa043();
        }
    }

    void aaa000(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, PipedInputStream pipedInputStream, Object obj, Object obj2, BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        if (this.aaa002 == aaa001zz.IDLE) {
            this.aaa002 = aaa001zz.CONNECTED_BTV4;
            this.aaa001.aaa000(bluetoothGatt, bluetoothGattCharacteristic, pipedInputStream, obj, obj2, bluetoothGattCharacteristic2);
        } else {
            this.aaa001.aaa000(aaa003zz.aaa002zz.ILLEGAL_STATE, "");
        }
    }
}
