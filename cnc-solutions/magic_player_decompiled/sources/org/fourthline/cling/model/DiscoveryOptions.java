package org.fourthline.cling.model;

import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public class DiscoveryOptions {
    private static String simpleName = "DiscoveryOptions";
    public boolean advertised;
    public boolean byeByeBeforeFirstAlive;

    public DiscoveryOptions(boolean z3) {
        this.advertised = z3;
    }

    public boolean isAdvertised() {
        return this.advertised;
    }

    public boolean isByeByeBeforeFirstAlive() {
        return this.byeByeBeforeFirstAlive;
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(simpleName);
        sbA.append(") advertised: ");
        sbA.append(isAdvertised());
        sbA.append(" byebyeBeforeFirstAlive: ");
        sbA.append(isByeByeBeforeFirstAlive());
        return sbA.toString();
    }

    public DiscoveryOptions(boolean z3, boolean z4) {
        this.advertised = z3;
        this.byeByeBeforeFirstAlive = z4;
    }
}
