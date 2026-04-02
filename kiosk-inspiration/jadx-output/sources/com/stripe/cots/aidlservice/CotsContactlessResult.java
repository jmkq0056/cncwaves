package com.stripe.cots.aidlservice;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.cots.aidlservice.CotsContactlessResult;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CotsContactlessResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0017\u0018\u0019\u001aBC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0006H\u0016R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;", "outcome", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;", "emvBlob", "", "encryptedTrack2", "cryptogram", "ttpaPinData", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "ContactlessOutcome", "TtpaPinData", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsContactlessResult extends Message<CotsContactlessResult, Builder> {
    public static final ProtoAdapter<CotsContactlessResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String cryptogram;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String emvBlob;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String encryptedTrack2;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsContactlessResult$ContactlessOutcome#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ContactlessOutcome outcome;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsContactlessResult$TtpaPinData#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final TtpaPinData ttpaPinData;

    public CotsContactlessResult() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ CotsContactlessResult(ContactlessOutcome contactlessOutcome, String str, String str2, String str3, TtpaPinData ttpaPinData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ContactlessOutcome.UNKNOWN : contactlessOutcome, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? null : ttpaPinData, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsContactlessResult(ContactlessOutcome outcome, String emvBlob, String encryptedTrack2, String cryptogram, TtpaPinData ttpaPinData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        Intrinsics.checkNotNullParameter(cryptogram, "cryptogram");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.outcome = outcome;
        this.emvBlob = emvBlob;
        this.encryptedTrack2 = encryptedTrack2;
        this.cryptogram = cryptogram;
        this.ttpaPinData = ttpaPinData;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.outcome = this.outcome;
        builder.emvBlob = this.emvBlob;
        builder.encryptedTrack2 = this.encryptedTrack2;
        builder.cryptogram = this.cryptogram;
        builder.ttpaPinData = this.ttpaPinData;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsContactlessResult)) {
            return false;
        }
        CotsContactlessResult cotsContactlessResult = (CotsContactlessResult) other;
        return Intrinsics.areEqual(unknownFields(), cotsContactlessResult.unknownFields()) && this.outcome == cotsContactlessResult.outcome && Intrinsics.areEqual(this.emvBlob, cotsContactlessResult.emvBlob) && Intrinsics.areEqual(this.encryptedTrack2, cotsContactlessResult.encryptedTrack2) && Intrinsics.areEqual(this.cryptogram, cotsContactlessResult.cryptogram) && Intrinsics.areEqual(this.ttpaPinData, cotsContactlessResult.ttpaPinData);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + this.outcome.hashCode()) * 37) + this.emvBlob.hashCode()) * 37) + this.encryptedTrack2.hashCode()) * 37) + this.cryptogram.hashCode()) * 37;
        TtpaPinData ttpaPinData = this.ttpaPinData;
        int iHashCode2 = iHashCode + (ttpaPinData != null ? ttpaPinData.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("outcome=" + this.outcome);
        arrayList2.add("emvBlob=██");
        arrayList2.add("encryptedTrack2=██");
        arrayList2.add("cryptogram=" + Internal.sanitize(this.cryptogram));
        if (this.ttpaPinData != null) {
            arrayList2.add("ttpaPinData=" + this.ttpaPinData);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsContactlessResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsContactlessResult copy$default(CotsContactlessResult cotsContactlessResult, ContactlessOutcome contactlessOutcome, String str, String str2, String str3, TtpaPinData ttpaPinData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            contactlessOutcome = cotsContactlessResult.outcome;
        }
        if ((i & 2) != 0) {
            str = cotsContactlessResult.emvBlob;
        }
        if ((i & 4) != 0) {
            str2 = cotsContactlessResult.encryptedTrack2;
        }
        if ((i & 8) != 0) {
            str3 = cotsContactlessResult.cryptogram;
        }
        if ((i & 16) != 0) {
            ttpaPinData = cotsContactlessResult.ttpaPinData;
        }
        if ((i & 32) != 0) {
            byteString = cotsContactlessResult.unknownFields();
        }
        TtpaPinData ttpaPinData2 = ttpaPinData;
        ByteString byteString2 = byteString;
        return cotsContactlessResult.copy(contactlessOutcome, str, str2, str3, ttpaPinData2, byteString2);
    }

    public final CotsContactlessResult copy(ContactlessOutcome outcome, String emvBlob, String encryptedTrack2, String cryptogram, TtpaPinData ttpaPinData, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        Intrinsics.checkNotNullParameter(cryptogram, "cryptogram");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsContactlessResult(outcome, emvBlob, encryptedTrack2, cryptogram, ttpaPinData, unknownFields);
    }

    /* JADX INFO: compiled from: CotsContactlessResult.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "()V", "cryptogram", "", "emvBlob", "encryptedTrack2", "outcome", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;", "ttpaPinData", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsContactlessResult, Builder> {
        public TtpaPinData ttpaPinData;
        public ContactlessOutcome outcome = ContactlessOutcome.UNKNOWN;
        public String emvBlob = "";
        public String encryptedTrack2 = "";
        public String cryptogram = "";

        public final Builder outcome(ContactlessOutcome outcome) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            this.outcome = outcome;
            return this;
        }

        public final Builder emvBlob(String emvBlob) {
            Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
            this.emvBlob = emvBlob;
            return this;
        }

        public final Builder encryptedTrack2(String encryptedTrack2) {
            Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
            this.encryptedTrack2 = encryptedTrack2;
            return this;
        }

        public final Builder cryptogram(String cryptogram) {
            Intrinsics.checkNotNullParameter(cryptogram, "cryptogram");
            this.cryptogram = cryptogram;
            return this;
        }

        public final Builder ttpaPinData(TtpaPinData ttpaPinData) {
            this.ttpaPinData = ttpaPinData;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsContactlessResult build() {
            return new CotsContactlessResult(this.outcome, this.emvBlob, this.encryptedTrack2, this.cryptogram, this.ttpaPinData, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsContactlessResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsContactlessResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsContactlessResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsContactlessResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsContactlessResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsContactlessResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.outcome != CotsContactlessResult.ContactlessOutcome.UNKNOWN) {
                    size += CotsContactlessResult.ContactlessOutcome.ADAPTER.encodedSizeWithTag(1, value.outcome);
                }
                if (!Intrinsics.areEqual(value.emvBlob, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.emvBlob);
                }
                if (!Intrinsics.areEqual(value.encryptedTrack2, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.encryptedTrack2);
                }
                if (!Intrinsics.areEqual(value.cryptogram, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.cryptogram);
                }
                return value.ttpaPinData != null ? size + CotsContactlessResult.TtpaPinData.ADAPTER.encodedSizeWithTag(5, value.ttpaPinData) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsContactlessResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.outcome != CotsContactlessResult.ContactlessOutcome.UNKNOWN) {
                    CotsContactlessResult.ContactlessOutcome.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
                if (!Intrinsics.areEqual(value.emvBlob, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.emvBlob);
                }
                if (!Intrinsics.areEqual(value.encryptedTrack2, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.encryptedTrack2);
                }
                if (!Intrinsics.areEqual(value.cryptogram, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cryptogram);
                }
                if (value.ttpaPinData != null) {
                    CotsContactlessResult.TtpaPinData.ADAPTER.encodeWithTag(writer, 5, value.ttpaPinData);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsContactlessResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.ttpaPinData != null) {
                    CotsContactlessResult.TtpaPinData.ADAPTER.encodeWithTag(writer, 5, value.ttpaPinData);
                }
                if (!Intrinsics.areEqual(value.cryptogram, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cryptogram);
                }
                if (!Intrinsics.areEqual(value.encryptedTrack2, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.encryptedTrack2);
                }
                if (!Intrinsics.areEqual(value.emvBlob, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.emvBlob);
                }
                if (value.outcome != CotsContactlessResult.ContactlessOutcome.UNKNOWN) {
                    CotsContactlessResult.ContactlessOutcome.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsContactlessResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CotsContactlessResult.ContactlessOutcome contactlessOutcome = CotsContactlessResult.ContactlessOutcome.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                CotsContactlessResult.TtpaPinData ttpaPinDataDecode = null;
                CotsContactlessResult.ContactlessOutcome contactlessOutcomeDecode = contactlessOutcome;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsContactlessResult(contactlessOutcomeDecode, strDecode3, strDecode, strDecode2, ttpaPinDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            contactlessOutcomeDecode = CotsContactlessResult.ContactlessOutcome.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        ttpaPinDataDecode = CotsContactlessResult.TtpaPinData.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsContactlessResult redact(CotsContactlessResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CotsContactlessResult.TtpaPinData ttpaPinData = value.ttpaPinData;
                return CotsContactlessResult.copy$default(value, null, "", "", null, ttpaPinData != null ? CotsContactlessResult.TtpaPinData.ADAPTER.redact(ttpaPinData) : null, ByteString.EMPTY, 9, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsContactlessResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0019"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "ACCESS_NOT_ALLOWED", "APPROVED", "DECLINED", "PROCEED_ONLINE", "RECOVERABLE_ERROR", "IRRECOVERABLE_ERROR", "NFC_IS_DISABLED", "CANCELED", "NO_MUTUALLY_SUPPORTED_APPLICATIONS", "SEE_PHONE", "INVALID_CURRENCY", "READER_NOT_ACTIVE", "PIN_COLLECTED", "CARD_READ_TIMED_OUT", "INSECURE_ENVIRONMENT", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ContactlessOutcome implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ContactlessOutcome[] $VALUES;
        public static final ContactlessOutcome ACCESS_NOT_ALLOWED;
        public static final ProtoAdapter<ContactlessOutcome> ADAPTER;
        public static final ContactlessOutcome APPROVED;
        public static final ContactlessOutcome CANCELED;
        public static final ContactlessOutcome CARD_READ_TIMED_OUT;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ContactlessOutcome DECLINED;
        public static final ContactlessOutcome INSECURE_ENVIRONMENT;
        public static final ContactlessOutcome INVALID_CURRENCY;
        public static final ContactlessOutcome IRRECOVERABLE_ERROR;
        public static final ContactlessOutcome NFC_IS_DISABLED;
        public static final ContactlessOutcome NO_MUTUALLY_SUPPORTED_APPLICATIONS;
        public static final ContactlessOutcome PIN_COLLECTED;
        public static final ContactlessOutcome PROCEED_ONLINE;
        public static final ContactlessOutcome READER_NOT_ACTIVE;
        public static final ContactlessOutcome RECOVERABLE_ERROR;
        public static final ContactlessOutcome SEE_PHONE;
        public static final ContactlessOutcome UNKNOWN;
        private final int value;

        private static final /* synthetic */ ContactlessOutcome[] $values() {
            return new ContactlessOutcome[]{UNKNOWN, ACCESS_NOT_ALLOWED, APPROVED, DECLINED, PROCEED_ONLINE, RECOVERABLE_ERROR, IRRECOVERABLE_ERROR, NFC_IS_DISABLED, CANCELED, NO_MUTUALLY_SUPPORTED_APPLICATIONS, SEE_PHONE, INVALID_CURRENCY, READER_NOT_ACTIVE, PIN_COLLECTED, CARD_READ_TIMED_OUT, INSECURE_ENVIRONMENT};
        }

        @JvmStatic
        public static final ContactlessOutcome fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ContactlessOutcome> getEntries() {
            return $ENTRIES;
        }

        public static ContactlessOutcome valueOf(String str) {
            return (ContactlessOutcome) Enum.valueOf(ContactlessOutcome.class, str);
        }

        public static ContactlessOutcome[] values() {
            return (ContactlessOutcome[]) $VALUES.clone();
        }

        private ContactlessOutcome(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ContactlessOutcome contactlessOutcome = new ContactlessOutcome("UNKNOWN", 0, 0);
            UNKNOWN = contactlessOutcome;
            ACCESS_NOT_ALLOWED = new ContactlessOutcome("ACCESS_NOT_ALLOWED", 1, 1);
            APPROVED = new ContactlessOutcome("APPROVED", 2, 2);
            DECLINED = new ContactlessOutcome("DECLINED", 3, 3);
            PROCEED_ONLINE = new ContactlessOutcome("PROCEED_ONLINE", 4, 4);
            RECOVERABLE_ERROR = new ContactlessOutcome("RECOVERABLE_ERROR", 5, 5);
            IRRECOVERABLE_ERROR = new ContactlessOutcome("IRRECOVERABLE_ERROR", 6, 6);
            NFC_IS_DISABLED = new ContactlessOutcome("NFC_IS_DISABLED", 7, 7);
            CANCELED = new ContactlessOutcome("CANCELED", 8, 8);
            NO_MUTUALLY_SUPPORTED_APPLICATIONS = new ContactlessOutcome("NO_MUTUALLY_SUPPORTED_APPLICATIONS", 9, 9);
            SEE_PHONE = new ContactlessOutcome("SEE_PHONE", 10, 10);
            INVALID_CURRENCY = new ContactlessOutcome("INVALID_CURRENCY", 11, 11);
            READER_NOT_ACTIVE = new ContactlessOutcome("READER_NOT_ACTIVE", 12, 12);
            PIN_COLLECTED = new ContactlessOutcome("PIN_COLLECTED", 13, 14);
            CARD_READ_TIMED_OUT = new ContactlessOutcome("CARD_READ_TIMED_OUT", 14, 15);
            INSECURE_ENVIRONMENT = new ContactlessOutcome("INSECURE_ENVIRONMENT", 15, 16);
            ContactlessOutcome[] contactlessOutcomeArr$values = $values();
            $VALUES = contactlessOutcomeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(contactlessOutcomeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ContactlessOutcome.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ContactlessOutcome>(orCreateKotlinClass, syntax, contactlessOutcome) { // from class: com.stripe.cots.aidlservice.CotsContactlessResult$ContactlessOutcome$Companion$ADAPTER$1
                {
                    CotsContactlessResult.ContactlessOutcome contactlessOutcome2 = contactlessOutcome;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsContactlessResult.ContactlessOutcome fromValue(int value) {
                    return CotsContactlessResult.ContactlessOutcome.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsContactlessResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ContactlessOutcome fromValue(int value) {
                switch (value) {
                    case 0:
                        return ContactlessOutcome.UNKNOWN;
                    case 1:
                        return ContactlessOutcome.ACCESS_NOT_ALLOWED;
                    case 2:
                        return ContactlessOutcome.APPROVED;
                    case 3:
                        return ContactlessOutcome.DECLINED;
                    case 4:
                        return ContactlessOutcome.PROCEED_ONLINE;
                    case 5:
                        return ContactlessOutcome.RECOVERABLE_ERROR;
                    case 6:
                        return ContactlessOutcome.IRRECOVERABLE_ERROR;
                    case 7:
                        return ContactlessOutcome.NFC_IS_DISABLED;
                    case 8:
                        return ContactlessOutcome.CANCELED;
                    case 9:
                        return ContactlessOutcome.NO_MUTUALLY_SUPPORTED_APPLICATIONS;
                    case 10:
                        return ContactlessOutcome.SEE_PHONE;
                    case 11:
                        return ContactlessOutcome.INVALID_CURRENCY;
                    case 12:
                        return ContactlessOutcome.READER_NOT_ACTIVE;
                    case 13:
                    default:
                        return null;
                    case 14:
                        return ContactlessOutcome.PIN_COLLECTED;
                    case 15:
                        return ContactlessOutcome.CARD_READ_TIMED_OUT;
                    case 16:
                        return ContactlessOutcome.INSECURE_ENVIRONMENT;
                }
            }
        }
    }

    /* JADX INFO: compiled from: CotsContactlessResult.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ.\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;", "clientPublicKey", "", "serverPublicKeyHash", "pinBlock", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TtpaPinData extends Message<TtpaPinData, Builder> {
        public static final ProtoAdapter<TtpaPinData> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String clientPublicKey;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String pinBlock;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String serverPublicKeyHash;

        public TtpaPinData() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ TtpaPinData(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TtpaPinData(String clientPublicKey, String serverPublicKeyHash, String pinBlock, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
            Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
            Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.clientPublicKey = clientPublicKey;
            this.serverPublicKeyHash = serverPublicKeyHash;
            this.pinBlock = pinBlock;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.clientPublicKey = this.clientPublicKey;
            builder.serverPublicKeyHash = this.serverPublicKeyHash;
            builder.pinBlock = this.pinBlock;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TtpaPinData)) {
                return false;
            }
            TtpaPinData ttpaPinData = (TtpaPinData) other;
            return Intrinsics.areEqual(unknownFields(), ttpaPinData.unknownFields()) && Intrinsics.areEqual(this.clientPublicKey, ttpaPinData.clientPublicKey) && Intrinsics.areEqual(this.serverPublicKeyHash, ttpaPinData.serverPublicKeyHash) && Intrinsics.areEqual(this.pinBlock, ttpaPinData.pinBlock);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.clientPublicKey.hashCode()) * 37) + this.serverPublicKeyHash.hashCode()) * 37) + this.pinBlock.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("clientPublicKey=" + Internal.sanitize(this.clientPublicKey));
            arrayList2.add("serverPublicKeyHash=" + Internal.sanitize(this.serverPublicKeyHash));
            arrayList2.add("pinBlock=" + Internal.sanitize(this.pinBlock));
            return CollectionsKt.joinToString$default(arrayList, ", ", "TtpaPinData{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TtpaPinData copy$default(TtpaPinData ttpaPinData, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ttpaPinData.clientPublicKey;
            }
            if ((i & 2) != 0) {
                str2 = ttpaPinData.serverPublicKeyHash;
            }
            if ((i & 4) != 0) {
                str3 = ttpaPinData.pinBlock;
            }
            if ((i & 8) != 0) {
                byteString = ttpaPinData.unknownFields();
            }
            return ttpaPinData.copy(str, str2, str3, byteString);
        }

        public final TtpaPinData copy(String clientPublicKey, String serverPublicKeyHash, String pinBlock, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
            Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
            Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TtpaPinData(clientPublicKey, serverPublicKeyHash, pinBlock, unknownFields);
        }

        /* JADX INFO: compiled from: CotsContactlessResult.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;", "()V", "clientPublicKey", "", "pinBlock", "serverPublicKeyHash", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TtpaPinData, Builder> {
            public String clientPublicKey = "";
            public String serverPublicKeyHash = "";
            public String pinBlock = "";

            public final Builder clientPublicKey(String clientPublicKey) {
                Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
                this.clientPublicKey = clientPublicKey;
                return this;
            }

            public final Builder serverPublicKeyHash(String serverPublicKeyHash) {
                Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
                this.serverPublicKeyHash = serverPublicKeyHash;
                return this;
            }

            public final Builder pinBlock(String pinBlock) {
                Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
                this.pinBlock = pinBlock;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TtpaPinData build() {
                return new TtpaPinData(this.clientPublicKey, this.serverPublicKeyHash, this.pinBlock, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CotsContactlessResult.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TtpaPinData build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TtpaPinData.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TtpaPinData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsContactlessResult$TtpaPinData$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CotsContactlessResult.TtpaPinData value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.clientPublicKey, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.clientPublicKey);
                    }
                    if (!Intrinsics.areEqual(value.serverPublicKeyHash, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.serverPublicKeyHash);
                    }
                    return !Intrinsics.areEqual(value.pinBlock, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.pinBlock) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CotsContactlessResult.TtpaPinData value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.clientPublicKey, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.clientPublicKey);
                    }
                    if (!Intrinsics.areEqual(value.serverPublicKeyHash, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serverPublicKeyHash);
                    }
                    if (!Intrinsics.areEqual(value.pinBlock, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pinBlock);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CotsContactlessResult.TtpaPinData value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.pinBlock, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pinBlock);
                    }
                    if (!Intrinsics.areEqual(value.serverPublicKeyHash, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serverPublicKeyHash);
                    }
                    if (Intrinsics.areEqual(value.clientPublicKey, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.clientPublicKey);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CotsContactlessResult.TtpaPinData redact(CotsContactlessResult.TtpaPinData value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CotsContactlessResult.TtpaPinData.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CotsContactlessResult.TtpaPinData decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    String strDecode3 = strDecode2;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsContactlessResult.TtpaPinData(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
