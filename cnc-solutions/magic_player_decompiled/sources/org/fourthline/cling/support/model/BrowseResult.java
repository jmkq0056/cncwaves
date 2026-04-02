package org.fourthline.cling.support.model;

import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes2.dex */
public class BrowseResult {
    public UnsignedIntegerFourBytes containerUpdateID;
    public UnsignedIntegerFourBytes count;
    public String result;
    public UnsignedIntegerFourBytes totalMatches;

    public BrowseResult(String str, UnsignedIntegerFourBytes unsignedIntegerFourBytes, UnsignedIntegerFourBytes unsignedIntegerFourBytes2, UnsignedIntegerFourBytes unsignedIntegerFourBytes3) {
        this.result = str;
        this.count = unsignedIntegerFourBytes;
        this.totalMatches = unsignedIntegerFourBytes2;
        this.containerUpdateID = unsignedIntegerFourBytes3;
    }

    public UnsignedIntegerFourBytes getContainerUpdateID() {
        return this.containerUpdateID;
    }

    public long getContainerUpdateIDLong() {
        return this.containerUpdateID.getValue().longValue();
    }

    public UnsignedIntegerFourBytes getCount() {
        return this.count;
    }

    public long getCountLong() {
        return this.count.getValue().longValue();
    }

    public String getResult() {
        return this.result;
    }

    public UnsignedIntegerFourBytes getTotalMatches() {
        return this.totalMatches;
    }

    public long getTotalMatchesLong() {
        return this.totalMatches.getValue().longValue();
    }

    public BrowseResult(String str, long j4, long j5) {
        this(str, j4, j5, 0L);
    }

    public BrowseResult(String str, long j4, long j5, long j6) {
        this(str, new UnsignedIntegerFourBytes(j4), new UnsignedIntegerFourBytes(j5), new UnsignedIntegerFourBytes(j6));
    }
}
