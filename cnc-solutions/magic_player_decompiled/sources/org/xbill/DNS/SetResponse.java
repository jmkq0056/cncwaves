package org.xbill.DNS;

import androidx.core.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.List;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class SetResponse {
    public static final int CNAME = 4;
    public static final int DELEGATION = 3;
    public static final int DNAME = 5;
    public static final int NXDOMAIN = 1;
    public static final int NXRRSET = 2;
    public static final int SUCCESSFUL = 6;
    public static final int UNKNOWN = 0;
    private Object data;
    private int type;
    private static final SetResponse unknown = new SetResponse(0);
    private static final SetResponse nxdomain = new SetResponse(1);
    private static final SetResponse nxrrset = new SetResponse(2);

    private SetResponse() {
    }

    public static SetResponse ofType(int i4) {
        switch (i4) {
            case 0:
                return unknown;
            case 1:
                return nxdomain;
            case 2:
                return nxrrset;
            case 3:
            case 4:
            case 5:
            case 6:
                SetResponse setResponse = new SetResponse();
                setResponse.type = i4;
                setResponse.data = null;
                return setResponse;
            default:
                throw new IllegalArgumentException("invalid type");
        }
    }

    public void addRRset(RRset rRset) {
        if (this.data == null) {
            this.data = new ArrayList();
        }
        ((List) this.data).add(rRset);
    }

    public RRset[] answers() {
        if (this.type != 6) {
            return null;
        }
        List list = (List) this.data;
        return (RRset[]) list.toArray(new RRset[list.size()]);
    }

    public CNAMERecord getCNAME() {
        return (CNAMERecord) ((RRset) this.data).first();
    }

    public DNAMERecord getDNAME() {
        return (DNAMERecord) ((RRset) this.data).first();
    }

    public RRset getNS() {
        return (RRset) this.data;
    }

    public boolean isCNAME() {
        return this.type == 4;
    }

    public boolean isDNAME() {
        return this.type == 5;
    }

    public boolean isDelegation() {
        return this.type == 3;
    }

    public boolean isNXDOMAIN() {
        return this.type == 1;
    }

    public boolean isNXRRSET() {
        return this.type == 2;
    }

    public boolean isSuccessful() {
        return this.type == 6;
    }

    public boolean isUnknown() {
        return this.type == 0;
    }

    public String toString() {
        switch (this.type) {
            case 0:
                return EnvironmentCompat.MEDIA_UNKNOWN;
            case 1:
                return "NXDOMAIN";
            case 2:
                return "NXRRSET";
            case 3:
                StringBuffer stringBufferA = e.a("delegation: ");
                stringBufferA.append(this.data);
                return stringBufferA.toString();
            case 4:
                StringBuffer stringBufferA2 = e.a("CNAME: ");
                stringBufferA2.append(this.data);
                return stringBufferA2.toString();
            case 5:
                StringBuffer stringBufferA3 = e.a("DNAME: ");
                stringBufferA3.append(this.data);
                return stringBufferA3.toString();
            case 6:
                return "successful";
            default:
                throw new IllegalStateException();
        }
    }

    public SetResponse(int i4, RRset rRset) {
        if (i4 < 0 || i4 > 6) {
            throw new IllegalArgumentException("invalid type");
        }
        this.type = i4;
        this.data = rRset;
    }

    public SetResponse(int i4) {
        if (i4 >= 0 && i4 <= 6) {
            this.type = i4;
            this.data = null;
            return;
        }
        throw new IllegalArgumentException("invalid type");
    }
}
