package com.example.digitalkiosk.models;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VoucherResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/example/digitalkiosk/models/VoucherResponse;", "", NotificationCompat.CATEGORY_STATUS, "", "message", "voucher", "Lcom/example/digitalkiosk/models/Voucher;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/example/digitalkiosk/models/Voucher;)V", "getStatus", "()Ljava/lang/String;", "getMessage", "getVoucher", "()Lcom/example/digitalkiosk/models/Voucher;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class VoucherResponse {
    private final String message;
    private final String status;
    private final Voucher voucher;

    public static /* synthetic */ VoucherResponse copy$default(VoucherResponse voucherResponse, String str, String str2, Voucher voucher, int i, Object obj) {
        if ((i & 1) != 0) {
            str = voucherResponse.status;
        }
        if ((i & 2) != 0) {
            str2 = voucherResponse.message;
        }
        if ((i & 4) != 0) {
            voucher = voucherResponse.voucher;
        }
        return voucherResponse.copy(str, str2, voucher);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Voucher getVoucher() {
        return this.voucher;
    }

    public final VoucherResponse copy(String status, String message, Voucher voucher) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new VoucherResponse(status, message, voucher);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VoucherResponse)) {
            return false;
        }
        VoucherResponse voucherResponse = (VoucherResponse) other;
        return Intrinsics.areEqual(this.status, voucherResponse.status) && Intrinsics.areEqual(this.message, voucherResponse.message) && Intrinsics.areEqual(this.voucher, voucherResponse.voucher);
    }

    public int hashCode() {
        int iHashCode = this.status.hashCode() * 31;
        String str = this.message;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Voucher voucher = this.voucher;
        return iHashCode2 + (voucher != null ? voucher.hashCode() : 0);
    }

    public String toString() {
        return "VoucherResponse(status=" + this.status + ", message=" + this.message + ", voucher=" + this.voucher + ')';
    }

    public VoucherResponse(String status, String str, Voucher voucher) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.message = str;
        this.voucher = voucher;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Voucher getVoucher() {
        return this.voucher;
    }
}
