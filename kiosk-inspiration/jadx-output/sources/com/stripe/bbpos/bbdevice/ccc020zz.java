package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

/* JADX INFO: loaded from: classes3.dex */
final class ccc020zz extends ccc018zz {
    private final BluetoothGatt aaa000;
    private final BluetoothGattCharacteristic aaa001;
    private final BluetoothGattCharacteristic aaa002;
    private final Object aaa003;
    private int aaa004 = 100;
    private long aaa005 = 0;
    private final Object aaa006 = new Object();

    ccc020zz(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, Object obj, BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        this.aaa000 = bluetoothGatt;
        this.aaa001 = bluetoothGattCharacteristic;
        this.aaa002 = bluetoothGattCharacteristic2;
        this.aaa003 = obj;
    }

    private void aaa000(String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000() {
    }

    synchronized void aaa000(int i) {
        aaa000("[setMtuSize] inputMtuSize : " + i);
        this.aaa004 = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void aaa000(byte[] r11) {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r0 = com.stripe.bbpos.bbdevice.aaa009zz.aaa040     // Catch: java.lang.Throwable -> Lc3
            r1 = 8
            r3 = 0
            if (r0 != 0) goto L6a
            int r0 = r10.aaa004     // Catch: java.lang.Throwable -> Lc3
            int r0 = r0 + (-5)
            int r4 = r11.length     // Catch: java.lang.Throwable -> Lc3
            int r4 = java.lang.Math.min(r0, r4)     // Catch: java.lang.Throwable -> Lc3
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> Lc3
            r5 = r3
        L14:
            int r6 = r11.length     // Catch: java.lang.Throwable -> Lc3
            if (r5 >= r6) goto Lc1
            int r6 = r11.length     // Catch: java.lang.Throwable -> Lc3
            int r6 = r6 - r5
            int r6 = java.lang.Math.min(r0, r6)     // Catch: java.lang.Throwable -> Lc3
            int r7 = r4.length     // Catch: java.lang.Throwable -> Lc3
            if (r7 == r6) goto L22
            byte[] r4 = new byte[r6]     // Catch: java.lang.Throwable -> Lc3
        L22:
            int r6 = r4.length     // Catch: java.lang.Throwable -> Lc3
            java.lang.System.arraycopy(r11, r5, r4, r3, r6)     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGattCharacteristic r6 = r10.aaa001     // Catch: java.lang.Throwable -> Lc3
            r6.setValue(r4)     // Catch: java.lang.Throwable -> Lc3
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc3
            long r8 = r10.aaa005     // Catch: java.lang.Throwable -> Lc3
            long r6 = r6 - r8
            int r8 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r8 >= 0) goto L47
            java.lang.Object r8 = r10.aaa006     // Catch: java.lang.Throwable -> Lc3
            monitor-enter(r8)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r9 = r10.aaa006     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            long r6 = r1 - r6
            r9.wait(r6)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            goto L43
        L41:
            r11 = move-exception
            goto L45
        L43:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L41
            goto L47
        L45:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L41
            throw r11     // Catch: java.lang.Throwable -> Lc3
        L47:
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc3
            r10.aaa005 = r6     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGatt r6 = r10.aaa000     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGattCharacteristic r7 = r10.aaa001     // Catch: java.lang.Throwable -> Lc3
            r6.writeCharacteristic(r7)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r6 = r10.aaa003     // Catch: java.lang.Throwable -> Lc3
            monitor-enter(r6)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r7 = r10.aaa003     // Catch: java.lang.Throwable -> L5f java.lang.InterruptedException -> L61
            r8 = 3000(0xbb8, double:1.482E-320)
            r7.wait(r8)     // Catch: java.lang.Throwable -> L5f java.lang.InterruptedException -> L61
            goto L65
        L5f:
            r11 = move-exception
            goto L68
        L61:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L5f
        L65:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L5f
            int r5 = r5 + r0
            goto L14
        L68:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L5f
            throw r11     // Catch: java.lang.Throwable -> Lc3
        L6a:
            int r0 = r10.aaa004     // Catch: java.lang.Throwable -> Lc3
            int r0 = r0 + (-5)
            r4 = r3
        L6f:
            int r5 = r11.length     // Catch: java.lang.Throwable -> Lc3
            if (r4 >= r5) goto Lc1
            int r5 = r11.length     // Catch: java.lang.Throwable -> Lc3
            int r5 = r5 - r4
            int r5 = java.lang.Math.min(r0, r5)     // Catch: java.lang.Throwable -> Lc3
            byte[] r6 = new byte[r5]     // Catch: java.lang.Throwable -> Lc3
            java.lang.System.arraycopy(r11, r4, r6, r3, r5)     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGattCharacteristic r5 = r10.aaa002     // Catch: java.lang.Throwable -> Lc3
            r5.setValue(r6)     // Catch: java.lang.Throwable -> Lc3
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc3
            long r7 = r10.aaa005     // Catch: java.lang.Throwable -> Lc3
            long r5 = r5 - r7
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 >= 0) goto L9e
            java.lang.Object r7 = r10.aaa006     // Catch: java.lang.Throwable -> Lc3
            monitor-enter(r7)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r8 = r10.aaa006     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            long r5 = r1 - r5
            r8.wait(r5)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            goto L9a
        L98:
            r11 = move-exception
            goto L9c
        L9a:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L98
            goto L9e
        L9c:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L98
            throw r11     // Catch: java.lang.Throwable -> Lc3
        L9e:
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc3
            r10.aaa005 = r5     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGatt r5 = r10.aaa000     // Catch: java.lang.Throwable -> Lc3
            android.bluetooth.BluetoothGattCharacteristic r6 = r10.aaa002     // Catch: java.lang.Throwable -> Lc3
            r5.writeCharacteristic(r6)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r5 = r10.aaa003     // Catch: java.lang.Throwable -> Lc3
            monitor-enter(r5)     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r6 = r10.aaa003     // Catch: java.lang.Throwable -> Lb6 java.lang.InterruptedException -> Lb8
            r7 = 200(0xc8, double:9.9E-322)
            r6.wait(r7)     // Catch: java.lang.Throwable -> Lb6 java.lang.InterruptedException -> Lb8
            goto Lbc
        Lb6:
            r11 = move-exception
            goto Lbf
        Lb8:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lb6
        Lbc:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb6
            int r4 = r4 + r0
            goto L6f
        Lbf:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb6
            throw r11     // Catch: java.lang.Throwable -> Lc3
        Lc1:
            monitor-exit(r10)
            return
        Lc3:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> Lc3
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc020zz.aaa000(byte[]):void");
    }
}
