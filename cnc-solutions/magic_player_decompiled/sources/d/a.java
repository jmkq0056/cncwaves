package d;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.TextureView;
import cn.huidu.lcd.arcface.FaceRectView;
import cn.huidu.lcd.arcface.R$string;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import org.xbill.DNS.SimpleResolver;

/* JADX INFO: loaded from: classes.dex */
public class a implements Camera.PreviewCallback, Camera.ErrorCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Camera f1410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SurfaceHolder f1412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SurfaceTexture f1413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f1414e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextureView.SurfaceTextureListener f1416g = new TextureViewSurfaceTextureListenerC0015a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SurfaceHolder.Callback f1417h = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Point f1415f = new Point(SimpleResolver.DEFAULT_EDNS_PAYLOADSIZE, 720);

    /* JADX INFO: renamed from: d.a$a, reason: collision with other inner class name */
    public class TextureViewSurfaceTextureListenerC0015a implements TextureView.SurfaceTextureListener {
        public TextureViewSurfaceTextureListenerC0015a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
            a.b.a("onSurfaceTextureAvailable: ", i4, ", ", i5, "FaceDetectPlayer");
            a aVar = a.this;
            aVar.f1413d = surfaceTexture;
            Camera camera = aVar.f1410a;
            if (camera != null) {
                try {
                    camera.setPreviewTexture(surfaceTexture);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Log.d("FaceDetectPlayer", "onSurfaceTextureDestroyed: ");
            a aVar = a.this;
            aVar.f1413d = null;
            Camera camera = aVar.f1410a;
            if (camera == null) {
                return true;
            }
            try {
                camera.setPreviewTexture(null);
                return true;
            } catch (IOException e4) {
                e4.printStackTrace();
                return true;
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
            Log.i("FaceDetectPlayer", "onSurfaceTextureSizeChanged: " + i4 + "  " + i5);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public class b implements SurfaceHolder.Callback {
        public b() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            a aVar = a.this;
            aVar.f1412c = surfaceHolder;
            Camera camera = aVar.f1410a;
            if (camera != null) {
                try {
                    camera.setPreviewDisplay(surfaceHolder);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            a aVar = a.this;
            aVar.f1412c = null;
            Camera camera = aVar.f1410a;
            if (camera != null) {
                try {
                    camera.setPreviewDisplay(null);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public interface c {
    }

    public final Camera.Size a(List<Camera.Size> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            Camera.Size size = list.get(i4);
            StringBuilder sbA = android.support.v4.media.f.a("supportedPreviewSize: ");
            sbA.append(size.width);
            sbA.append(", ");
            androidx.media.b.a(sbA, size.height, "FaceDetectPlayer");
            Point point = this.f1415f;
            if (point != null && size.width == point.x && size.height == point.y) {
                return size;
            }
        }
        return null;
    }

    public final int b(int i4) {
        int i5 = i4 * 90;
        if (i4 == 0) {
            i5 = 0;
        } else if (i4 == 1) {
            i5 = 90;
        } else if (i4 == 2) {
            i5 = BaseTransientBottomBar.ANIMATION_FADE_DURATION;
        } else if (i4 == 3) {
            i5 = 270;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.f1411b, cameraInfo);
        return cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i5) % 360)) % 360 : ((cameraInfo.orientation - i5) + 360) % 360;
    }

    public void c() {
        synchronized (this) {
            if (this.f1410a != null) {
                return;
            }
            int numberOfCameras = Camera.getNumberOfCameras() - 1;
            this.f1411b = numberOfCameras;
            if (numberOfCameras == -1) {
                Log.d("FaceDetectPlayer", "start: camera not found!");
                return;
            }
            try {
                if (this.f1410a == null) {
                    this.f1410a = Camera.open(numberOfCameras);
                }
                int iB = b(0);
                this.f1410a.setDisplayOrientation(iB);
                Camera.Parameters parameters = this.f1410a.getParameters();
                parameters.setPreviewFormat(17);
                Camera.Size sizeA = a(parameters.getSupportedPreviewSizes());
                if (sizeA != null) {
                    parameters.setPreviewSize(sizeA.width, sizeA.height);
                }
                List<String> supportedFocusModes = parameters.getSupportedFocusModes();
                if (supportedFocusModes != null && supportedFocusModes.size() > 0) {
                    if (supportedFocusModes.contains("continuous-picture")) {
                        parameters.setFocusMode("continuous-picture");
                    } else if (supportedFocusModes.contains("continuous-video")) {
                        parameters.setFocusMode("continuous-video");
                    } else if (supportedFocusModes.contains("auto")) {
                        parameters.setFocusMode("auto");
                    }
                }
                this.f1410a.setParameters(parameters);
                SurfaceTexture surfaceTexture = this.f1413d;
                if (surfaceTexture != null) {
                    this.f1410a.setPreviewTexture(surfaceTexture);
                } else {
                    SurfaceHolder surfaceHolder = this.f1412c;
                    if (surfaceHolder != null) {
                        this.f1410a.setPreviewDisplay(surfaceHolder);
                    }
                }
                this.f1410a.setPreviewCallback(this);
                this.f1410a.startPreview();
                this.f1410a.setErrorCallback(this);
                c cVar = this.f1414e;
                if (cVar != null) {
                    ((d.b) cVar).e(this.f1410a, this.f1411b, iB);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void d() {
        synchronized (this) {
            Camera camera = this.f1410a;
            if (camera == null) {
                return;
            }
            try {
                camera.setPreviewCallback(null);
                this.f1410a.stopPreview();
                this.f1410a.release();
                this.f1410a = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // android.hardware.Camera.ErrorCallback
    public void onError(int i4, Camera camera) {
        d();
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(final byte[] bArr, Camera camera) {
        float f4;
        float f5;
        c cVar = this.f1414e;
        if (cVar != null) {
            d.b bVar = (d.b) cVar;
            if (bVar.f1421b == null) {
                bVar.f1421b = camera.getParameters().getPreviewSize();
            }
            Camera.Size size = bVar.f1421b;
            final int i4 = size.width;
            final int i5 = size.height;
            final g gVarD = g.d();
            if (gVarD.f1445c) {
                gVarD.e(new Runnable() { // from class: d.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        g gVar = gVarD;
                        byte[] bArr2 = bArr;
                        int i6 = i4;
                        int i7 = i5;
                        Objects.requireNonNull(gVar);
                        try {
                            gVar.f(bArr2, i6, i7);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                });
            }
            if (bVar.f1427h != null) {
                List<d.c> list = bVar.f1423d;
                synchronized (gVarD) {
                    list.clear();
                    list.addAll(gVarD.f1446d);
                }
                FaceRectView faceRectView = bVar.f1427h;
                List<d.c> list2 = bVar.f1423d;
                int i6 = bVar.f1422c;
                faceRectView.f327c.clear();
                for (int i7 = 0; i7 < list2.size(); i7++) {
                    d.c cVar2 = list2.get(i7);
                    Rect rect = cVar2.f1430b;
                    int width = faceRectView.getWidth();
                    int height = faceRectView.getHeight();
                    Rect rect2 = new Rect(rect);
                    if (i6 % BaseTransientBottomBar.ANIMATION_FADE_DURATION == 0) {
                        f4 = width / i4;
                        f5 = height;
                    } else {
                        f4 = height / i4;
                        f5 = width;
                    }
                    float f6 = f5 / i5;
                    rect2.left = (int) (rect2.left * f4);
                    rect2.right = (int) (rect2.right * f4);
                    rect2.top = (int) (rect2.top * f6);
                    rect2.bottom = (int) (rect2.bottom * f6);
                    Rect rect3 = new Rect();
                    if (i6 == 0) {
                        rect3.left = rect2.left;
                        rect3.right = rect2.right;
                        rect3.top = rect2.top;
                        rect3.bottom = rect2.bottom;
                    } else if (i6 == 90) {
                        rect3.right = width - rect2.top;
                        rect3.left = width - rect2.bottom;
                        rect3.top = rect2.left;
                        rect3.bottom = rect2.right;
                    } else if (i6 == 180) {
                        rect3.top = height - rect2.bottom;
                        rect3.bottom = height - rect2.top;
                        rect3.left = width - rect2.right;
                        rect3.right = width - rect2.left;
                    } else if (i6 == 270) {
                        rect3.left = rect2.top;
                        rect3.right = rect2.bottom;
                        rect3.top = height - rect2.right;
                        rect3.bottom = height - rect2.left;
                    }
                    if (faceRectView.f328d ^ faceRectView.f329e) {
                        int i8 = rect3.left;
                        rect3.left = width - rect3.right;
                        rect3.right = width - i8;
                    }
                    if (faceRectView.f330f) {
                        int i9 = rect3.top;
                        rect3.top = height - rect3.bottom;
                        rect3.bottom = height - i9;
                    }
                    StringBuilder sb = new StringBuilder();
                    int i10 = cVar2.f1431c;
                    Object objValueOf = "UNKNOWN";
                    sb.append(i10 == 0 ? "MALE" : i10 == 1 ? "FEMALE" : "UNKNOWN");
                    sb.append("  ");
                    int i11 = cVar2.f1432d;
                    if (i11 > 0) {
                        objValueOf = Integer.valueOf(i11);
                    }
                    sb.append(objValueOf);
                    faceRectView.f327c.add(new FaceRectView.a(rect3, sb.toString()));
                }
                faceRectView.postInvalidate();
            }
            if (bVar.f1428i != null) {
                bVar.f1428i.setText(bVar.f1428i.getContext().getString(R$string.visitor_count) + ": " + gVarD.f1450h);
            }
        }
    }
}
