package com.stripe.proto.extension;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PostContentType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/extension/PostContentType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NONE", "URL_ENCODED", "MULTIPART", "PLAIN", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PostContentType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PostContentType[] $VALUES;
    public static final ProtoAdapter<PostContentType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final PostContentType MULTIPART;
    public static final PostContentType NONE;
    public static final PostContentType PLAIN;
    public static final PostContentType URL_ENCODED;
    private final int value;

    private static final /* synthetic */ PostContentType[] $values() {
        return new PostContentType[]{NONE, URL_ENCODED, MULTIPART, PLAIN};
    }

    @JvmStatic
    public static final PostContentType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<PostContentType> getEntries() {
        return $ENTRIES;
    }

    public static PostContentType valueOf(String str) {
        return (PostContentType) Enum.valueOf(PostContentType.class, str);
    }

    public static PostContentType[] values() {
        return (PostContentType[]) $VALUES.clone();
    }

    private PostContentType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final PostContentType postContentType = new PostContentType("NONE", 0, 0);
        NONE = postContentType;
        URL_ENCODED = new PostContentType("URL_ENCODED", 1, 1);
        MULTIPART = new PostContentType("MULTIPART", 2, 2);
        PLAIN = new PostContentType("PLAIN", 3, 3);
        PostContentType[] postContentTypeArr$values = $values();
        $VALUES = postContentTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(postContentTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PostContentType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<PostContentType>(orCreateKotlinClass, syntax, postContentType) { // from class: com.stripe.proto.extension.PostContentType$Companion$ADAPTER$1
            {
                PostContentType postContentType2 = postContentType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public PostContentType fromValue(int value) {
                return PostContentType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: PostContentType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/extension/PostContentType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/extension/PostContentType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PostContentType fromValue(int value) {
            if (value == 0) {
                return PostContentType.NONE;
            }
            if (value == 1) {
                return PostContentType.URL_ENCODED;
            }
            if (value == 2) {
                return PostContentType.MULTIPART;
            }
            if (value != 3) {
                return null;
            }
            return PostContentType.PLAIN;
        }
    }
}
