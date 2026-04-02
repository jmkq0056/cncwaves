package org.fourthline.cling.support.renderingcontrol.lastchange;

import android.support.v4.media.f;
import org.fourthline.cling.support.model.Channel;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelMute {
    public Channel channel;
    public Boolean mute;

    public ChannelMute(Channel channel, Boolean bool) {
        this.channel = channel;
        this.mute = bool;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Boolean getMute() {
        return this.mute;
    }

    public String toString() {
        StringBuilder sbA = f.a("Mute: ");
        sbA.append(getMute());
        sbA.append(" (");
        sbA.append(getChannel());
        sbA.append(")");
        return sbA.toString();
    }
}
