package org.fourthline.cling.support.renderingcontrol.lastchange;

import android.support.v4.media.f;
import org.fourthline.cling.support.model.Channel;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelVolume {
    public Channel channel;
    public Integer volume;

    public ChannelVolume(Channel channel, Integer num) {
        this.channel = channel;
        this.volume = num;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Integer getVolume() {
        return this.volume;
    }

    public String toString() {
        StringBuilder sbA = f.a("Volume: ");
        sbA.append(getVolume());
        sbA.append(" (");
        sbA.append(getChannel());
        sbA.append(")");
        return sbA.toString();
    }
}
