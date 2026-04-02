package org.fourthline.cling.support.renderingcontrol.lastchange;

import android.support.v4.media.f;
import org.fourthline.cling.support.model.Channel;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelLoudness {
    public Channel channel;
    public Boolean loudness;

    public ChannelLoudness(Channel channel, Boolean bool) {
        this.channel = channel;
        this.loudness = bool;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Boolean getLoudness() {
        return this.loudness;
    }

    public String toString() {
        StringBuilder sbA = f.a("Loudness: ");
        sbA.append(getLoudness());
        sbA.append(" (");
        sbA.append(getChannel());
        sbA.append(")");
        return sbA.toString();
    }
}
