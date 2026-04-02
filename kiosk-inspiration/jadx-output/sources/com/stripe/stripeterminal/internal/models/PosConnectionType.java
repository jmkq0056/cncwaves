package com.stripe.stripeterminal.internal.models;

import kotlin.Metadata;

/* JADX INFO: compiled from: PosConnectionType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "", "Countertop", "Default", "Handoff", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Countertop;", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Handoff;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PosConnectionType {

    /* JADX INFO: compiled from: PosConnectionType.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Default implements PosConnectionType {
        public static final Default INSTANCE = new Default();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Default)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -212862085;
        }

        private Default() {
        }

        public String toString() {
            return "PosConnectionType.Default";
        }
    }

    /* JADX INFO: compiled from: PosConnectionType.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Handoff;", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Handoff implements PosConnectionType {
        public static final Handoff INSTANCE = new Handoff();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Handoff)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1064859686;
        }

        private Handoff() {
        }

        public String toString() {
            return "PosConnectionType.Handoff";
        }
    }

    /* JADX INFO: compiled from: PosConnectionType.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Countertop;", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Countertop implements PosConnectionType {
        public static final Countertop INSTANCE = new Countertop();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Countertop)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 584118879;
        }

        private Countertop() {
        }

        public String toString() {
            return "PosConnectionType.Countertop";
        }
    }
}
