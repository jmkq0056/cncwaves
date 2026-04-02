package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "Ljava/io/Serializable;", "OfflineDataPaymentIntent", "OfflineDataReader", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineData extends Serializable {

    /* JADX INFO: compiled from: OfflineData.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "connections", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineConnection;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;", "(Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;)V", "getConnections", "()Ljava/util/List;", "getReader", "()Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OfflineDataReader implements OfflineData {
        private final List<SimpleOfflineConnection> connections;
        private final SimpleOfflineReader reader;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OfflineDataReader copy$default(OfflineDataReader offlineDataReader, List list, SimpleOfflineReader simpleOfflineReader, int i, Object obj) {
            if ((i & 1) != 0) {
                list = offlineDataReader.connections;
            }
            if ((i & 2) != 0) {
                simpleOfflineReader = offlineDataReader.reader;
            }
            return offlineDataReader.copy(list, simpleOfflineReader);
        }

        public final List<SimpleOfflineConnection> component1() {
            return this.connections;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final SimpleOfflineReader getReader() {
            return this.reader;
        }

        public final OfflineDataReader copy(List<SimpleOfflineConnection> connections, SimpleOfflineReader reader) {
            Intrinsics.checkNotNullParameter(connections, "connections");
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new OfflineDataReader(connections, reader);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OfflineDataReader)) {
                return false;
            }
            OfflineDataReader offlineDataReader = (OfflineDataReader) other;
            return Intrinsics.areEqual(this.connections, offlineDataReader.connections) && Intrinsics.areEqual(this.reader, offlineDataReader.reader);
        }

        public int hashCode() {
            return (this.connections.hashCode() * 31) + this.reader.hashCode();
        }

        public String toString() {
            return "OfflineDataReader(connections=" + this.connections + ", reader=" + this.reader + ')';
        }

        public OfflineDataReader(List<SimpleOfflineConnection> connections, SimpleOfflineReader reader) {
            Intrinsics.checkNotNullParameter(connections, "connections");
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.connections = connections;
            this.reader = reader;
        }

        public final List<SimpleOfflineConnection> getConnections() {
            return this.connections;
        }

        public final SimpleOfflineReader getReader() {
            return this.reader;
        }
    }

    /* JADX INFO: compiled from: OfflineData.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003JA\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010¨\u0006\""}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "offlineId", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, OfflineStorageConstantsKt.DELETED, "", "events", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;", "(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)V", "getAmount", "()J", "getCurrency", "()Ljava/lang/String;", "getDeleted", "()Z", "getEvents", "()Ljava/util/List;", "getOfflineId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OfflineDataPaymentIntent implements OfflineData {
        private final long amount;
        private final String currency;
        private final boolean deleted;
        private final List<SimpleOfflinePayment> events;
        private final String offlineId;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OfflineDataPaymentIntent copy$default(OfflineDataPaymentIntent offlineDataPaymentIntent, String str, long j, String str2, boolean z, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = offlineDataPaymentIntent.offlineId;
            }
            if ((i & 2) != 0) {
                j = offlineDataPaymentIntent.amount;
            }
            if ((i & 4) != 0) {
                str2 = offlineDataPaymentIntent.currency;
            }
            if ((i & 8) != 0) {
                z = offlineDataPaymentIntent.deleted;
            }
            if ((i & 16) != 0) {
                list = offlineDataPaymentIntent.events;
            }
            List list2 = list;
            String str3 = str2;
            return offlineDataPaymentIntent.copy(str, j, str3, z, list2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getOfflineId() {
            return this.offlineId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getCurrency() {
            return this.currency;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getDeleted() {
            return this.deleted;
        }

        public final List<SimpleOfflinePayment> component5() {
            return this.events;
        }

        public final OfflineDataPaymentIntent copy(String offlineId, long amount, String currency, boolean deleted, List<SimpleOfflinePayment> events) {
            Intrinsics.checkNotNullParameter(offlineId, "offlineId");
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(events, "events");
            return new OfflineDataPaymentIntent(offlineId, amount, currency, deleted, events);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OfflineDataPaymentIntent)) {
                return false;
            }
            OfflineDataPaymentIntent offlineDataPaymentIntent = (OfflineDataPaymentIntent) other;
            return Intrinsics.areEqual(this.offlineId, offlineDataPaymentIntent.offlineId) && this.amount == offlineDataPaymentIntent.amount && Intrinsics.areEqual(this.currency, offlineDataPaymentIntent.currency) && this.deleted == offlineDataPaymentIntent.deleted && Intrinsics.areEqual(this.events, offlineDataPaymentIntent.events);
        }

        public int hashCode() {
            return (((((((this.offlineId.hashCode() * 31) + Long.hashCode(this.amount)) * 31) + this.currency.hashCode()) * 31) + Boolean.hashCode(this.deleted)) * 31) + this.events.hashCode();
        }

        public String toString() {
            return "OfflineDataPaymentIntent(offlineId=" + this.offlineId + ", amount=" + this.amount + ", currency=" + this.currency + ", deleted=" + this.deleted + ", events=" + this.events + ')';
        }

        public OfflineDataPaymentIntent(String offlineId, long j, String currency, boolean z, List<SimpleOfflinePayment> events) {
            Intrinsics.checkNotNullParameter(offlineId, "offlineId");
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(events, "events");
            this.offlineId = offlineId;
            this.amount = j;
            this.currency = currency;
            this.deleted = z;
            this.events = events;
        }

        public final String getOfflineId() {
            return this.offlineId;
        }

        public final long getAmount() {
            return this.amount;
        }

        public final String getCurrency() {
            return this.currency;
        }

        public final boolean getDeleted() {
            return this.deleted;
        }

        public final List<SimpleOfflinePayment> getEvents() {
            return this.events;
        }
    }
}
