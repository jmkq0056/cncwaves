package org.fourthline.cling.model;

import android.support.v4.media.f;
import java.util.Date;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public class ExpirationDetails {
    public static final int UNLIMITED_AGE = 0;
    private static String simpleName = "ExpirationDetails";
    private long lastRefreshTimestampSeconds;
    private int maxAgeSeconds;

    public ExpirationDetails() {
        this.maxAgeSeconds = 0;
        this.lastRefreshTimestampSeconds = getCurrentTimestampSeconds();
    }

    public long getCurrentTimestampSeconds() {
        return new Date().getTime() / 1000;
    }

    public long getLastRefreshTimestampSeconds() {
        return this.lastRefreshTimestampSeconds;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public long getSecondsUntilExpiration() {
        int i4 = this.maxAgeSeconds;
        return i4 == 0 ? TTL.MAX_VALUE : (this.lastRefreshTimestampSeconds + ((long) i4)) - getCurrentTimestampSeconds();
    }

    public boolean hasExpired() {
        return hasExpired(false);
    }

    public void setLastRefreshTimestampSeconds(long j4) {
        this.lastRefreshTimestampSeconds = j4;
    }

    public void stampLastRefresh() {
        setLastRefreshTimestampSeconds(getCurrentTimestampSeconds());
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(simpleName);
        sbA.append(") MAX AGE: ");
        sbA.append(this.maxAgeSeconds);
        return sbA.toString();
    }

    public boolean hasExpired(boolean z3) {
        int i4 = this.maxAgeSeconds;
        if (i4 != 0) {
            if (this.lastRefreshTimestampSeconds + ((long) (i4 / (z3 ? 2 : 1))) < getCurrentTimestampSeconds()) {
                return true;
            }
        }
        return false;
    }

    public ExpirationDetails(int i4) {
        this.maxAgeSeconds = 0;
        this.lastRefreshTimestampSeconds = getCurrentTimestampSeconds();
        this.maxAgeSeconds = i4;
    }
}
