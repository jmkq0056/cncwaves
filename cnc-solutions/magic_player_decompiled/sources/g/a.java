package g;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(api = 21)
@SuppressLint({"MissingPermission"})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CameraDevice f1708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f1709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HandlerThread f1710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Surface f1711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraDevice.StateCallback f1712e = new C0022a();

    /* JADX INFO: renamed from: g.a$a, reason: collision with other inner class name */
    public class C0022a extends CameraDevice.StateCallback {
        public C0022a() {
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Log.d("HdmiInCamera2", "onDisconnected");
            a.this.a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i4) {
            Log.i("HdmiInCamera2", "onError: " + i4);
            a.this.a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Log.d("HdmiInCamera2", "onOpened");
            a aVar = a.this;
            aVar.f1708a = cameraDevice;
            Objects.requireNonNull(aVar);
            Log.d("HdmiInCamera2", "createCameraPreview");
            try {
                CaptureRequest.Builder builderCreateCaptureRequest = aVar.f1708a.createCaptureRequest(1);
                builderCreateCaptureRequest.addTarget(aVar.f1711d);
                aVar.f1708a.createCaptureSession(Collections.singletonList(aVar.f1711d), new b(aVar, builderCreateCaptureRequest), null);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void a() {
        Log.d("HdmiInCamera2", "closeCamera: ");
        CameraDevice cameraDevice = this.f1708a;
        if (cameraDevice != null) {
            try {
                cameraDevice.close();
                this.f1708a = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
