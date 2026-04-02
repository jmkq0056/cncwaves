package com.example.digitalkiosk.models;

import kotlin.Metadata;

/* JADX INFO: compiled from: TestPrintQueueResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/models/TestPrintQueueResponse;", "", "print", "", "<init>", "(Z)V", "getPrint", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TestPrintQueueResponse {
    private final boolean print;

    public static /* synthetic */ TestPrintQueueResponse copy$default(TestPrintQueueResponse testPrintQueueResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = testPrintQueueResponse.print;
        }
        return testPrintQueueResponse.copy(z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getPrint() {
        return this.print;
    }

    public final TestPrintQueueResponse copy(boolean print) {
        return new TestPrintQueueResponse(print);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TestPrintQueueResponse) && this.print == ((TestPrintQueueResponse) other).print;
    }

    public int hashCode() {
        return Boolean.hashCode(this.print);
    }

    public String toString() {
        return "TestPrintQueueResponse(print=" + this.print + ')';
    }

    public TestPrintQueueResponse(boolean z) {
        this.print = z;
    }

    public final boolean getPrint() {
        return this.print;
    }
}
