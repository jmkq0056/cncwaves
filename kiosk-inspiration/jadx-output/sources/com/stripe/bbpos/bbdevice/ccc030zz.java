package com.stripe.bbpos.bbdevice;

import android.hardware.usb.UsbRequest;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class ccc030zz extends UsbRequest {
    ccc030zz() {
    }

    @Override // android.hardware.usb.UsbRequest
    public boolean queue(ByteBuffer byteBuffer, int i) {
        try {
            Field declaredField = UsbRequest.class.getDeclaredField("mBuffer");
            Field declaredField2 = UsbRequest.class.getDeclaredField("mLength");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            declaredField.set(this, byteBuffer);
            declaredField2.set(this, Integer.valueOf(i));
            return super.queue(byteBuffer, i);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
