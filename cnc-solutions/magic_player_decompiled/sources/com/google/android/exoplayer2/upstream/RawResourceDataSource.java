package com.google.android.exoplayer2.upstream;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class RawResourceDataSource {
    public static Uri buildRawResourceUri(int i4) {
        return Uri.parse("rawresource:///" + i4);
    }
}
