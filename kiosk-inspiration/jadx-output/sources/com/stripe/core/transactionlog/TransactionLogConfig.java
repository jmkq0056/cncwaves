package com.stripe.core.transactionlog;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionLogConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/transactionlog/TransactionLogConfig;", "", "name", "", "journalDOL", "", "Lcom/stripe/core/transactionlog/JournalDolEntry;", "(Ljava/lang/String;Ljava/util/List;)V", "getJournalDOL", "()Ljava/util/List;", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "transactionlog_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TransactionLogConfig {
    private final List<JournalDolEntry> journalDOL;
    private final String name;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TransactionLogConfig copy$default(TransactionLogConfig transactionLogConfig, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionLogConfig.name;
        }
        if ((i & 2) != 0) {
            list = transactionLogConfig.journalDOL;
        }
        return transactionLogConfig.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<JournalDolEntry> component2() {
        return this.journalDOL;
    }

    public final TransactionLogConfig copy(String name, List<JournalDolEntry> journalDOL) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(journalDOL, "journalDOL");
        return new TransactionLogConfig(name, journalDOL);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionLogConfig)) {
            return false;
        }
        TransactionLogConfig transactionLogConfig = (TransactionLogConfig) other;
        return Intrinsics.areEqual(this.name, transactionLogConfig.name) && Intrinsics.areEqual(this.journalDOL, transactionLogConfig.journalDOL);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.journalDOL.hashCode();
    }

    public String toString() {
        return "TransactionLogConfig(name=" + this.name + ", journalDOL=" + this.journalDOL + ')';
    }

    public TransactionLogConfig(String name, List<JournalDolEntry> journalDOL) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(journalDOL, "journalDOL");
        this.name = name;
        this.journalDOL = journalDOL;
    }

    public final String getName() {
        return this.name;
    }

    public final List<JournalDolEntry> getJournalDOL() {
        return this.journalDOL;
    }
}
