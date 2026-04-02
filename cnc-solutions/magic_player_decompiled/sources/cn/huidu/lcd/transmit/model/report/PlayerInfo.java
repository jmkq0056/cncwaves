package cn.huidu.lcd.transmit.model.report;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PlayerInfo {
    public int autoBackDelay;
    public boolean autoPlayHdmiIn;
    public boolean enableDLNA;
    public boolean enableDualScreen;
    public boolean enableInteraction;
    public boolean enablePlayResume;
    public boolean locked;
    public String playMode;
    public int status;
    public boolean syncPlay;

    public boolean changed(PlayerInfo playerInfo) {
        return (playerInfo != null && this.status == playerInfo.status && this.locked == playerInfo.locked && this.syncPlay == playerInfo.syncPlay && Objects.equals(this.playMode, playerInfo.playMode) && this.enableInteraction == playerInfo.enableInteraction && this.enablePlayResume == playerInfo.enablePlayResume && this.autoBackDelay == playerInfo.autoBackDelay && this.enableDualScreen == playerInfo.enableDualScreen && this.autoPlayHdmiIn == playerInfo.autoPlayHdmiIn && this.enableDLNA == playerInfo.enableDLNA) ? false : true;
    }
}
