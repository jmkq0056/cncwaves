package org.fourthline.cling.support.renderingcontrol.lastchange;

import android.support.v4.media.f;
import org.fourthline.cling.support.model.Channel;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelVolumeDB {
    public Channel channel;
    public Integer volumeDB;

    public ChannelVolumeDB(Channel channel, Integer num) {
        this.channel = channel;
        this.volumeDB = num;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Integer getVolumeDB() {
        return this.volumeDB;
    }

    public String toString() {
        StringBuilder sbA = f.a("VolumeDB: ");
        sbA.append(getVolumeDB());
        sbA.append(" (");
        sbA.append(getChannel());
        sbA.append(")");
        return sbA.toString();
    }
}
