package org.fourthline.cling.support.model;

import java.net.URI;
import org.seamless.util.MimeType;

/* JADX INFO: loaded from: classes2.dex */
public class Res {
    public Long bitrate;
    public Long bitsPerSample;
    public Long colorDepth;
    public String duration;
    public URI importUri;
    public Long nrAudioChannels;
    public String protection;
    public ProtocolInfo protocolInfo;
    public String resolution;
    public Long sampleFrequency;
    public Long size;
    public String value;

    public Res() {
    }

    public Long getBitrate() {
        return this.bitrate;
    }

    public Long getBitsPerSample() {
        return this.bitsPerSample;
    }

    public Long getColorDepth() {
        return this.colorDepth;
    }

    public String getDuration() {
        return this.duration;
    }

    public URI getImportUri() {
        return this.importUri;
    }

    public Long getNrAudioChannels() {
        return this.nrAudioChannels;
    }

    public String getProtection() {
        return this.protection;
    }

    public ProtocolInfo getProtocolInfo() {
        return this.protocolInfo;
    }

    public String getResolution() {
        return this.resolution;
    }

    public int getResolutionX() {
        if (getResolution() == null || getResolution().split("x").length != 2) {
            return 0;
        }
        return Integer.valueOf(getResolution().split("x")[0]).intValue();
    }

    public int getResolutionY() {
        if (getResolution() == null || getResolution().split("x").length != 2) {
            return 0;
        }
        return Integer.valueOf(getResolution().split("x")[1]).intValue();
    }

    public Long getSampleFrequency() {
        return this.sampleFrequency;
    }

    public Long getSize() {
        return this.size;
    }

    public String getValue() {
        return this.value;
    }

    public void setBitrate(Long l4) {
        this.bitrate = l4;
    }

    public void setBitsPerSample(Long l4) {
        this.bitsPerSample = l4;
    }

    public void setColorDepth(Long l4) {
        this.colorDepth = l4;
    }

    public void setDuration(String str) {
        this.duration = str;
    }

    public void setImportUri(URI uri) {
        this.importUri = uri;
    }

    public void setNrAudioChannels(Long l4) {
        this.nrAudioChannels = l4;
    }

    public void setProtection(String str) {
        this.protection = str;
    }

    public void setProtocolInfo(ProtocolInfo protocolInfo) {
        this.protocolInfo = protocolInfo;
    }

    public void setResolution(String str) {
        this.resolution = str;
    }

    public void setSampleFrequency(Long l4) {
        this.sampleFrequency = l4;
    }

    public void setSize(Long l4) {
        this.size = l4;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public Res(String str, Long l4, String str2, Long l5, String str3) {
        this(new ProtocolInfo(Protocol.HTTP_GET, "*", str, "*"), l4, str2, l5, str3);
    }

    public void setResolution(int i4, int i5) {
        this.resolution = i4 + "x" + i5;
    }

    public Res(MimeType mimeType, Long l4, String str, Long l5, String str2) {
        this(new ProtocolInfo(mimeType), l4, str, l5, str2);
    }

    public Res(MimeType mimeType, Long l4, String str) {
        this(new ProtocolInfo(mimeType), l4, str);
    }

    public Res(ProtocolInfo protocolInfo, Long l4, String str) {
        this.protocolInfo = protocolInfo;
        this.size = l4;
        this.value = str;
    }

    public Res(ProtocolInfo protocolInfo, Long l4, String str, Long l5, String str2) {
        this.protocolInfo = protocolInfo;
        this.size = l4;
        this.duration = str;
        this.bitrate = l5;
        this.value = str2;
    }

    public Res(URI uri, ProtocolInfo protocolInfo, Long l4, String str, Long l5, Long l6, Long l7, Long l8, Long l9, String str2, String str3, String str4) {
        this.importUri = uri;
        this.protocolInfo = protocolInfo;
        this.size = l4;
        this.duration = str;
        this.bitrate = l5;
        this.sampleFrequency = l6;
        this.bitsPerSample = l7;
        this.nrAudioChannels = l8;
        this.colorDepth = l9;
        this.protection = str2;
        this.resolution = str3;
        this.value = str4;
    }
}
