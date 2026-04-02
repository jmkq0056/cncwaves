package cn.huidu.lcd.transmit.model.report;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes.dex */
public class StorageInfo {
    public long availableSpace;
    public long totalSpace;

    public boolean changed(StorageInfo storageInfo) {
        return storageInfo == null || Math.abs(this.availableSpace - storageInfo.availableSpace) > PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
    }
}
