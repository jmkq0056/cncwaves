package cn.huidu.lcd.core.entity.model;

import android.support.v4.media.e;
import android.support.v4.media.f;
import android.support.v4.media.g;
import java.util.Arrays;
import k.a;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class UdpScanData {
    public long availableSpace;
    public int cpuType;
    public String deviceId;
    public String deviceName;
    public int deviceType;
    public int dns;
    public String extInfo;
    public int gateway;
    public int height;
    public int ipAddress;
    public String lanMqtt;
    public String lanServer;
    public byte lanStatus;
    public String lanUUid;
    public byte lockMode;
    public int mask;
    public byte mode;
    public int playerState;
    public byte priority;
    public boolean screenOn;
    public int screenRotation;
    public String server;
    public byte status;
    public int tag;
    public long totalSpace;
    public String username;
    public int width;
    public byte[] macAddress = new byte[6];
    public int kernelVersion = 1;
    public int fpgaVersion = 1;
    public int ioServicesVersion = 1;
    public int playerVersion = 1;
    public int upgradeVersion = 1;
    public int daemonVersion = 1;
    public int mainVersion = 1;

    public int revertInt(int i4) {
        return ((i4 >> 24) & 255) | ((i4 & 255) << 24) | (((i4 >> 8) & 255) << 16) | (((i4 >> 16) & 255) << 8);
    }

    public void setVersions(int i4, int i5) {
        this.mainVersion = revertInt(i4);
        this.daemonVersion = revertInt(i5);
    }

    public String toString() {
        StringBuilder sbA = f.a("UdpScanData{tag=");
        sbA.append(this.tag);
        sbA.append(", deviceName='");
        a.a(sbA, this.deviceName, '\'', ", deviceId='");
        a.a(sbA, this.deviceId, '\'', ", deviceType=");
        sbA.append(this.deviceType);
        sbA.append(", width=");
        sbA.append(this.width);
        sbA.append(", height=");
        sbA.append(this.height);
        sbA.append(", ipAddress=");
        sbA.append(this.ipAddress);
        sbA.append(", mask=");
        sbA.append(this.mask);
        sbA.append(", gateway=");
        sbA.append(this.gateway);
        sbA.append(", dns=");
        sbA.append(this.dns);
        sbA.append(", macAddress=");
        sbA.append(Arrays.toString(this.macAddress));
        sbA.append(", kernelVersion=");
        sbA.append(this.kernelVersion);
        sbA.append(", fpgaVersion=");
        sbA.append(this.fpgaVersion);
        sbA.append(", ioServicesVersion=");
        sbA.append(this.ioServicesVersion);
        sbA.append(", playerVersion=");
        sbA.append(this.playerVersion);
        sbA.append(", upgradeVersion=");
        sbA.append(this.upgradeVersion);
        sbA.append(", daemonVersion=");
        sbA.append(this.daemonVersion);
        sbA.append(", mainVersion=");
        sbA.append(this.mainVersion);
        sbA.append(", extInfo='");
        a.a(sbA, this.extInfo, '\'', ", cpuType=");
        sbA.append(this.cpuType);
        sbA.append(", screenOn=");
        sbA.append(this.screenOn);
        sbA.append(", screenRotation=");
        sbA.append(this.screenRotation);
        sbA.append(", totalSpace=");
        sbA.append(this.totalSpace);
        sbA.append(", availableSpace=");
        sbA.append(this.availableSpace);
        sbA.append(", playerState=");
        sbA.append(this.playerState);
        sbA.append(", status=");
        sbA.append((int) this.status);
        sbA.append(", mode=");
        sbA.append((int) this.mode);
        sbA.append(", priority=");
        sbA.append((int) this.priority);
        sbA.append(", server='");
        a.a(sbA, this.server, '\'', ", username='");
        a.a(sbA, this.username, '\'', ", lanStatus=");
        sbA.append((int) this.lanStatus);
        sbA.append(", lockMode=");
        sbA.append((int) this.lockMode);
        sbA.append(", lanUUid='");
        a.a(sbA, this.lanUUid, '\'', ", lanServer='");
        a.a(sbA, this.lanServer, '\'', ", lanMqtt='");
        sbA.append(this.lanMqtt);
        sbA.append('\'');
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    public void updateExtraInfo() {
        StringBuilder sbA = g.a(e.a(g.a(e.a(g.a(e.a(g.a("<?xml version=\"1.0\" encoding=\"utf-8\"?><DeviceInfo>", "<CPUType Value=\""), this.cpuType, "\"/>"), "<ScreenOnOff Value=\""), this.screenOn ? 1 : 0, "\"/>"), "<Screen rotation=\""), this.screenRotation, "\"/>"), "<Storage available=\"");
        sbA.append(this.availableSpace);
        sbA.append("\" total=\"");
        sbA.append(this.totalSpace);
        sbA.append("\"/>");
        this.extInfo = androidx.appcompat.view.a.a(e.a(g.a(sbA.toString(), "<Player state=\""), this.playerState, "\"/>"), "</DeviceInfo>");
    }
}
