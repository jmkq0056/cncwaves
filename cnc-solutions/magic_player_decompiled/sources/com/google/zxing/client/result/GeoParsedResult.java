package com.google.zxing.client.result;

import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public final class GeoParsedResult extends ParsedResult {
    private final double altitude;
    private final double latitude;
    private final double longitude;
    private final String query;

    public GeoParsedResult(double d4, double d5, double d6, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d4;
        this.longitude = d5;
        this.altitude = d6;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(", ");
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(", ");
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(" (");
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder sbA = f.a("geo:");
        sbA.append(this.latitude);
        sbA.append(',');
        sbA.append(this.longitude);
        if (this.altitude > 0.0d) {
            sbA.append(',');
            sbA.append(this.altitude);
        }
        if (this.query != null) {
            sbA.append('?');
            sbA.append(this.query);
        }
        return sbA.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}
