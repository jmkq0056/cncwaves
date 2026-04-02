package com.stripe.proto.model.debugconfig;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: NavigationConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/debugconfig/NavigationConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;", "alwaysShowSummaryScreens", "", "alwaysNavigateToReaderApplication", "unknownFields", "Lokio/ByteString;", "(ZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NavigationConfig extends Message<NavigationConfig, Builder> {
    public static final ProtoAdapter<NavigationConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean alwaysNavigateToReaderApplication;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean alwaysShowSummaryScreens;

    public NavigationConfig() {
        this(false, false, null, 7, null);
    }

    public /* synthetic */ NavigationConfig(boolean z, boolean z2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavigationConfig(boolean z, boolean z2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.alwaysShowSummaryScreens = z;
        this.alwaysNavigateToReaderApplication = z2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.alwaysShowSummaryScreens = this.alwaysShowSummaryScreens;
        builder.alwaysNavigateToReaderApplication = this.alwaysNavigateToReaderApplication;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof NavigationConfig)) {
            return false;
        }
        NavigationConfig navigationConfig = (NavigationConfig) other;
        return Intrinsics.areEqual(unknownFields(), navigationConfig.unknownFields()) && this.alwaysShowSummaryScreens == navigationConfig.alwaysShowSummaryScreens && this.alwaysNavigateToReaderApplication == navigationConfig.alwaysNavigateToReaderApplication;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.alwaysShowSummaryScreens)) * 37) + Boolean.hashCode(this.alwaysNavigateToReaderApplication);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("alwaysShowSummaryScreens=" + this.alwaysShowSummaryScreens);
        arrayList2.add("alwaysNavigateToReaderApplication=" + this.alwaysNavigateToReaderApplication);
        return CollectionsKt.joinToString$default(arrayList, ", ", "NavigationConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ NavigationConfig copy$default(NavigationConfig navigationConfig, boolean z, boolean z2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            z = navigationConfig.alwaysShowSummaryScreens;
        }
        if ((i & 2) != 0) {
            z2 = navigationConfig.alwaysNavigateToReaderApplication;
        }
        if ((i & 4) != 0) {
            byteString = navigationConfig.unknownFields();
        }
        return navigationConfig.copy(z, z2, byteString);
    }

    public final NavigationConfig copy(boolean alwaysShowSummaryScreens, boolean alwaysNavigateToReaderApplication, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new NavigationConfig(alwaysShowSummaryScreens, alwaysNavigateToReaderApplication, unknownFields);
    }

    /* JADX INFO: compiled from: NavigationConfig.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/NavigationConfig;", "()V", "alwaysNavigateToReaderApplication", "", "alwaysShowSummaryScreens", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<NavigationConfig, Builder> {
        public boolean alwaysNavigateToReaderApplication;
        public boolean alwaysShowSummaryScreens;

        public final Builder alwaysShowSummaryScreens(boolean alwaysShowSummaryScreens) {
            this.alwaysShowSummaryScreens = alwaysShowSummaryScreens;
            return this;
        }

        public final Builder alwaysNavigateToReaderApplication(boolean alwaysNavigateToReaderApplication) {
            this.alwaysNavigateToReaderApplication = alwaysNavigateToReaderApplication;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public NavigationConfig build() {
            return new NavigationConfig(this.alwaysShowSummaryScreens, this.alwaysNavigateToReaderApplication, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: NavigationConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/NavigationConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/NavigationConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ NavigationConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NavigationConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<NavigationConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.NavigationConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(NavigationConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.alwaysShowSummaryScreens) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.alwaysShowSummaryScreens));
                }
                return value.alwaysNavigateToReaderApplication ? size + ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.alwaysNavigateToReaderApplication)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, NavigationConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.alwaysShowSummaryScreens) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.alwaysShowSummaryScreens));
                }
                if (value.alwaysNavigateToReaderApplication) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.alwaysNavigateToReaderApplication));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, NavigationConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.alwaysNavigateToReaderApplication) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.alwaysNavigateToReaderApplication));
                }
                if (value.alwaysShowSummaryScreens) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.alwaysShowSummaryScreens));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public NavigationConfig redact(NavigationConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return NavigationConfig.copy$default(value, false, false, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public NavigationConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new NavigationConfig(zBooleanValue, zBooleanValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
