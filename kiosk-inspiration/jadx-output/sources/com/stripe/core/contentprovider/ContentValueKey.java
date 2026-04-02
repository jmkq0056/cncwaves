package com.stripe.core.contentprovider;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AbstractProtoContentProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0013\b\u0004\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/contentprovider/ContentValueKey;", "", "value", "", "(Ljava/lang/String;)V", "getValue$contentprovider_release", "()Ljava/lang/String;", "UnusedContentValueKey", "ValidContentValueKey", "Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;", "Lcom/stripe/core/contentprovider/ContentValueKey$ValidContentValueKey;", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ContentValueKey {
    private final String value;

    public /* synthetic */ ContentValueKey(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* JADX INFO: compiled from: AbstractProtoContentProvider.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/contentprovider/ContentValueKey$ValidContentValueKey;", "Lcom/stripe/core/contentprovider/ContentValueKey;", "value", "", "(Ljava/lang/String;)V", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ValidContentValueKey extends ContentValueKey {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValidContentValueKey(String value) {
            super(value, null);
            Intrinsics.checkNotNullParameter(value, "value");
        }
    }

    private ContentValueKey(String str) {
        this.value = str;
    }

    public /* synthetic */ ContentValueKey(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, null);
    }

    /* JADX INFO: renamed from: getValue$contentprovider_release, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    /* JADX INFO: compiled from: AbstractProtoContentProvider.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;", "Lcom/stripe/core/contentprovider/ContentValueKey;", "()V", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UnusedContentValueKey extends ContentValueKey {
        public static final UnusedContentValueKey INSTANCE = new UnusedContentValueKey();

        /* JADX WARN: Multi-variable type inference failed */
        private UnusedContentValueKey() {
            super(null, 0 == true ? 1 : 0);
        }
    }
}
