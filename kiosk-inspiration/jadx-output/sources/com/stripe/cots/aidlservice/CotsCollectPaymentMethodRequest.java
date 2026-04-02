package com.stripe.cots.aidlservice;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CotsCollectPaymentMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "readerProfile", "transactionDataObjects", "", "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;", "uxConfig", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "unknownFields", "Lokio/ByteString;", "(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsCollectPaymentMethodRequest extends Message<CotsCollectPaymentMethodRequest, Builder> {
    public static final ProtoAdapter<CotsCollectPaymentMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final String readerProfile;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsTransactionDataObject#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<CotsTransactionDataObject> transactionDataObjects;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final CotsUxConfig uxConfig;

    public CotsCollectPaymentMethodRequest() {
        this(0L, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ CotsCollectPaymentMethodRequest(long j, String str, String str2, List list, CotsUxConfig cotsUxConfig, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) == 0 ? cotsUxConfig : null, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsCollectPaymentMethodRequest(long j, String currency, String str, List<CotsTransactionDataObject> transactionDataObjects, CotsUxConfig cotsUxConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(transactionDataObjects, "transactionDataObjects");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.amount = j;
        this.currency = currency;
        this.readerProfile = str;
        this.uxConfig = cotsUxConfig;
        this.transactionDataObjects = Internal.immutableCopyOf("transactionDataObjects", transactionDataObjects);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.amount = this.amount;
        builder.currency = this.currency;
        builder.readerProfile = this.readerProfile;
        builder.transactionDataObjects = this.transactionDataObjects;
        builder.uxConfig = this.uxConfig;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsCollectPaymentMethodRequest)) {
            return false;
        }
        CotsCollectPaymentMethodRequest cotsCollectPaymentMethodRequest = (CotsCollectPaymentMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), cotsCollectPaymentMethodRequest.unknownFields()) && this.amount == cotsCollectPaymentMethodRequest.amount && Intrinsics.areEqual(this.currency, cotsCollectPaymentMethodRequest.currency) && Intrinsics.areEqual(this.readerProfile, cotsCollectPaymentMethodRequest.readerProfile) && Intrinsics.areEqual(this.transactionDataObjects, cotsCollectPaymentMethodRequest.transactionDataObjects) && Intrinsics.areEqual(this.uxConfig, cotsCollectPaymentMethodRequest.uxConfig);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + Long.hashCode(this.amount)) * 37) + this.currency.hashCode()) * 37;
        String str = this.readerProfile;
        int iHashCode2 = (((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + this.transactionDataObjects.hashCode()) * 37;
        CotsUxConfig cotsUxConfig = this.uxConfig;
        int iHashCode3 = iHashCode2 + (cotsUxConfig != null ? cotsUxConfig.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("amount=" + this.amount);
        arrayList2.add("currency=" + Internal.sanitize(this.currency));
        if (this.readerProfile != null) {
            arrayList2.add("readerProfile=" + Internal.sanitize(this.readerProfile));
        }
        if (!this.transactionDataObjects.isEmpty()) {
            arrayList2.add("transactionDataObjects=" + this.transactionDataObjects);
        }
        if (this.uxConfig != null) {
            arrayList2.add("uxConfig=" + this.uxConfig);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsCollectPaymentMethodRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CotsCollectPaymentMethodRequest copy$default(CotsCollectPaymentMethodRequest cotsCollectPaymentMethodRequest, long j, String str, String str2, List list, CotsUxConfig cotsUxConfig, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cotsCollectPaymentMethodRequest.amount;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = cotsCollectPaymentMethodRequest.currency;
        }
        String str3 = str;
        if ((i & 4) != 0) {
            str2 = cotsCollectPaymentMethodRequest.readerProfile;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            list = cotsCollectPaymentMethodRequest.transactionDataObjects;
        }
        List list2 = list;
        if ((i & 16) != 0) {
            cotsUxConfig = cotsCollectPaymentMethodRequest.uxConfig;
        }
        CotsUxConfig cotsUxConfig2 = cotsUxConfig;
        if ((i & 32) != 0) {
            byteString = cotsCollectPaymentMethodRequest.unknownFields();
        }
        return cotsCollectPaymentMethodRequest.copy(j2, str3, str4, list2, cotsUxConfig2, byteString);
    }

    public final CotsCollectPaymentMethodRequest copy(long amount, String currency, String readerProfile, List<CotsTransactionDataObject> transactionDataObjects, CotsUxConfig uxConfig, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(transactionDataObjects, "transactionDataObjects");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsCollectPaymentMethodRequest(amount, currency, readerProfile, transactionDataObjects, uxConfig, unknownFields);
    }

    /* JADX INFO: compiled from: CotsCollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "readerProfile", "transactionDataObjects", "", "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;", "uxConfig", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsCollectPaymentMethodRequest, Builder> {
        public long amount;
        public String readerProfile;
        public CotsUxConfig uxConfig;
        public String currency = "";
        public List<CotsTransactionDataObject> transactionDataObjects = CollectionsKt.emptyList();

        public final Builder amount(long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        public final Builder readerProfile(String readerProfile) {
            this.readerProfile = readerProfile;
            return this;
        }

        public final Builder transactionDataObjects(List<CotsTransactionDataObject> transactionDataObjects) {
            Intrinsics.checkNotNullParameter(transactionDataObjects, "transactionDataObjects");
            Internal.checkElementsNotNull(transactionDataObjects);
            this.transactionDataObjects = transactionDataObjects;
            return this;
        }

        public final Builder uxConfig(CotsUxConfig uxConfig) {
            this.uxConfig = uxConfig;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsCollectPaymentMethodRequest build() {
            return new CotsCollectPaymentMethodRequest(this.amount, this.currency, this.readerProfile, this.transactionDataObjects, this.uxConfig, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsCollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsCollectPaymentMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsCollectPaymentMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsCollectPaymentMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsCollectPaymentMethodRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsCollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.amount != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.currency);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.readerProfile) + CotsTransactionDataObject.ADAPTER.asRepeated().encodedSizeWithTag(4, value.transactionDataObjects);
                return value.uxConfig != null ? iEncodedSizeWithTag + CotsUxConfig.ADAPTER.encodedSizeWithTag(5, value.uxConfig) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsCollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.amount != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.currency);
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.readerProfile);
                CotsTransactionDataObject.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.transactionDataObjects);
                if (value.uxConfig != null) {
                    CotsUxConfig.ADAPTER.encodeWithTag(writer, 5, value.uxConfig);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsCollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.uxConfig != null) {
                    CotsUxConfig.ADAPTER.encodeWithTag(writer, 5, value.uxConfig);
                }
                CotsTransactionDataObject.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.transactionDataObjects);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.readerProfile);
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.currency);
                }
                if (value.amount != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsCollectPaymentMethodRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                String strDecode = "";
                String strDecode2 = null;
                CotsUxConfig cotsUxConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsCollectPaymentMethodRequest(jLongValue, strDecode, strDecode2, arrayList, cotsUxConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        arrayList.add(CotsTransactionDataObject.ADAPTER.decode(reader));
                    } else if (iNextTag == 5) {
                        cotsUxConfigDecode = CotsUxConfig.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsCollectPaymentMethodRequest redact(CotsCollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List listM361redactElements = Internal.m361redactElements(value.transactionDataObjects, CotsTransactionDataObject.ADAPTER);
                CotsUxConfig cotsUxConfig = value.uxConfig;
                return CotsCollectPaymentMethodRequest.copy$default(value, 0L, null, null, listM361redactElements, cotsUxConfig != null ? CotsUxConfig.ADAPTER.redact(cotsUxConfig) : null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
