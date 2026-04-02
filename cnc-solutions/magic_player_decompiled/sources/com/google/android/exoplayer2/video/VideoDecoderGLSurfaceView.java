package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import p1.b;
import p1.c;

/* JADX INFO: loaded from: classes.dex */
public class VideoDecoderGLSurfaceView extends GLSurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f1384a;

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public c getVideoDecoderOutputBufferRenderer() {
        return this.f1384a;
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b bVar = new b(this);
        this.f1384a = bVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(bVar);
        setRenderMode(0);
    }
}
