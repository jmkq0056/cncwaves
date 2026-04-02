package com.google.android.exoplayer2.ui.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes.dex */
public final class a implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f1370a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f1371b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f1372c = new float[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f1373d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Display f1374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InterfaceC0013a[] f1375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1376g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.ui.spherical.a$a, reason: collision with other inner class name */
    public interface InterfaceC0013a {
        void a(float[] fArr, float f4);
    }

    public a(Display display, InterfaceC0013a... interfaceC0013aArr) {
        this.f1374e = display;
        this.f1375f = interfaceC0013aArr;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i4) {
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f1370a, sensorEvent.values);
        float[] fArr = this.f1370a;
        int rotation = this.f1374e.getRotation();
        if (rotation != 0) {
            int i4 = WKSRecord.Service.PWDGEN;
            int i5 = WKSRecord.Service.CISCO_FNA;
            if (rotation == 1) {
                i4 = 2;
                i5 = WKSRecord.Service.PWDGEN;
            } else if (rotation != 2) {
                if (rotation != 3) {
                    throw new IllegalStateException();
                }
                i4 = WKSRecord.Service.CISCO_FNA;
                i5 = 1;
            }
            float[] fArr2 = this.f1371b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f1371b, i4, i5, fArr);
        }
        SensorManager.remapCoordinateSystem(this.f1370a, 1, WKSRecord.Service.CISCO_TNA, this.f1371b);
        SensorManager.getOrientation(this.f1371b, this.f1373d);
        float f4 = this.f1373d[2];
        Matrix.rotateM(this.f1370a, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        float[] fArr3 = this.f1370a;
        if (!this.f1376g) {
            q1.b.b(this.f1372c, fArr3);
            this.f1376g = true;
        }
        float[] fArr4 = this.f1371b;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        Matrix.multiplyMM(fArr3, 0, this.f1371b, 0, this.f1372c, 0);
        float[] fArr5 = this.f1370a;
        for (InterfaceC0013a interfaceC0013a : this.f1375f) {
            interfaceC0013a.a(fArr5, f4);
        }
    }
}
