package com.stripe.hardware.status;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderInputOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/status/ReaderInputOptions;", "", "options", "", "Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;", "(Ljava/util/List;)V", "getOptions", "()Ljava/util/List;", "toString", "", "ReaderInputOption", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInputOptions {
    private final List<ReaderInputOption> options;

    /* JADX WARN: Multi-variable type inference failed */
    public ReaderInputOptions(List<? extends ReaderInputOption> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.options = options;
    }

    public final List<ReaderInputOption> getOptions() {
        return this.options;
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this.options, " / ", null, null, 0, null, new Function1<ReaderInputOption, CharSequence>() { // from class: com.stripe.hardware.status.ReaderInputOptions.toString.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(ReaderInputOption it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.toString();
            }
        }, 30, null);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderInputOptions.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;", "", "displayName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "NONE", "INSERT", "SWIPE", "TAP", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderInputOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ReaderInputOption[] $VALUES;
        private final String displayName;
        public static final ReaderInputOption NONE = new ReaderInputOption("NONE", 0, "None");
        public static final ReaderInputOption INSERT = new ReaderInputOption("INSERT", 1, "Insert");
        public static final ReaderInputOption SWIPE = new ReaderInputOption("SWIPE", 2, "Swipe");
        public static final ReaderInputOption TAP = new ReaderInputOption("TAP", 3, "Tap");

        private static final /* synthetic */ ReaderInputOption[] $values() {
            return new ReaderInputOption[]{NONE, INSERT, SWIPE, TAP};
        }

        public static EnumEntries<ReaderInputOption> getEntries() {
            return $ENTRIES;
        }

        public static ReaderInputOption valueOf(String str) {
            return (ReaderInputOption) Enum.valueOf(ReaderInputOption.class, str);
        }

        public static ReaderInputOption[] values() {
            return (ReaderInputOption[]) $VALUES.clone();
        }

        private ReaderInputOption(String str, int i, String str2) {
            this.displayName = str2;
        }

        static {
            ReaderInputOption[] readerInputOptionArr$values = $values();
            $VALUES = readerInputOptionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(readerInputOptionArr$values);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.displayName;
        }
    }
}
