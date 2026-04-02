package com.stripe.bbpos.bbdevice;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc058zz {
    static BBDeviceController aaa000;

    static byte[] aaa000(byte b, byte b2, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(b);
        byteArrayOutputStream.write(b2);
        byteArrayOutputStream.write(bArr == null ? (byte) 0 : (byte) ((bArr.length >> 8) & 255));
        byteArrayOutputStream.write(bArr == null ? (byte) 0 : (byte) (bArr.length & 255));
        if (bArr != null) {
            byteArrayOutputStream.write(bArr, 0, bArr.length);
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        byteArrayOutputStream2.write(b);
        byteArrayOutputStream2.write(b2);
        byteArrayOutputStream2.write(bArr == null ? (byte) 0 : (byte) ((bArr.length >> 8) & 255));
        byteArrayOutputStream2.write(bArr == null ? (byte) 0 : (byte) (bArr.length & 255));
        if (bArr != null) {
            byteArrayOutputStream2.write(bArr, 0, bArr.length);
        }
        byteArrayOutputStream.write(ccc056zz.aaa000(byteArrayOutputStream2.toByteArray()));
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        byteArrayOutputStream3.write(byteArrayOutputStream2.toByteArray(), 0, byteArrayOutputStream2.size());
        byteArrayOutputStream3.write(ccc056zz.aaa000(byteArrayOutputStream2.toByteArray()));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(-86);
        for (int i = 0; i < byteArray.length; i++) {
            byte b3 = byteArray[i];
            if (b3 == -86 || b3 == -69 || b3 == -52) {
                byteArrayOutputStream.write(-52);
            }
            byteArrayOutputStream.write(byteArray[i]);
        }
        byteArrayOutputStream.write(-69);
        ccc061zz.aaa000("[CommandFactory] [createBluetoothCommand] out: " + ccc071zz.aaa000(byteArrayOutputStream3.toByteArray()));
        BBDeviceController bBDeviceController = aaa000;
        if (bBDeviceController != null) {
            bBDeviceController.aaa013("(" + ccc071zz.aaa000() + ") [CommandFactory] [createBluetoothCommand] out: " + ccc071zz.aaa000(byteArrayOutputStream3.toByteArray()));
        }
        return byteArrayOutputStream.toByteArray();
    }

    static byte[] aaa000(byte b, byte b2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(-15);
        byteArrayOutputStream.write(b);
        byteArrayOutputStream.write(b2);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        byteArrayOutputStream2.write(-15);
        byteArrayOutputStream2.write(b);
        byteArrayOutputStream2.write(b2);
        byteArrayOutputStream.write(ccc056zz.aaa000(byteArrayOutputStream2.toByteArray()));
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        byteArrayOutputStream3.write(byteArrayOutputStream2.toByteArray(), 0, byteArrayOutputStream2.size());
        byteArrayOutputStream3.write(ccc056zz.aaa000(byteArrayOutputStream2.toByteArray()));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(-86);
        for (int i = 0; i < byteArray.length; i++) {
            byte b3 = byteArray[i];
            if (b3 == -86 || b3 == -69 || b3 == -52) {
                byteArrayOutputStream.write(-52);
            }
            byteArrayOutputStream.write(byteArray[i]);
        }
        byteArrayOutputStream.write(-69);
        ccc061zz.aaa000("[CommandFactory] [createBluetoothResponse] out: " + ccc071zz.aaa000(byteArrayOutputStream3.toByteArray()));
        BBDeviceController bBDeviceController = aaa000;
        if (bBDeviceController != null) {
            bBDeviceController.aaa013("[CommandFactory] [createBluetoothResponse] out: " + ccc071zz.aaa000(byteArrayOutputStream3.toByteArray()));
        }
        return byteArrayOutputStream.toByteArray();
    }
}
