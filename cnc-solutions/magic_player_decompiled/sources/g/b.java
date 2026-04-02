package g;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class b extends CameraCaptureSession.StateCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CaptureRequest.Builder f1714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f1715b;

    public b(a aVar, CaptureRequest.Builder builder) {
        this.f1715b = aVar;
        this.f1714a = builder;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
        Log.d("HdmiInCamera2", "CameraCaptureSession::onConfigureFailed");
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
        if (this.f1715b.f1708a == null) {
            return;
        }
        Log.d("HdmiInCamera2", "CameraCaptureSession::onConfigured");
        this.f1714a.set(CaptureRequest.CONTROL_MODE, 1);
        try {
            cameraCaptureSession.setRepeatingRequest(this.f1714a.build(), null, this.f1715b.f1709b);
        } catch (CameraAccessException e4) {
            e4.printStackTrace();
        }
    }
}
