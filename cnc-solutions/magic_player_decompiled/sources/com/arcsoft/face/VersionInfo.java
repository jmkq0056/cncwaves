package com.arcsoft.face;

import android.support.v4.media.f;
import k.a;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class VersionInfo {
    private String version = null;
    private String buildDate = null;
    private String copyRight = null;

    public String getBuildDate() {
        return this.buildDate;
    }

    public String getCopyRight() {
        return this.copyRight;
    }

    public String getVersion() {
        return this.version;
    }

    public String toString() {
        StringBuilder sbA = f.a("VersionInfo{version='");
        a.a(sbA, this.version, '\'', ", buildDate='");
        a.a(sbA, this.buildDate, '\'', ", copyRight='");
        sbA.append(this.copyRight);
        sbA.append('\'');
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
