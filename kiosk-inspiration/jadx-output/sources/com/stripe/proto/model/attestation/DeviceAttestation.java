package com.stripe.proto.model.attestation;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: DeviceAttestation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BA\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\tH\u0016R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/attestation/DeviceAttestation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;", "local_attestation", "Lcom/stripe/proto/model/attestation/LocalAttestation;", "timestamp", "", "dak_certificates", "", "", "play_integrity_attestation", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceAttestation extends Message<DeviceAttestation, Builder> {
    public static final ProtoAdapter<DeviceAttestation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "dakCertificates", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 4)
    public final List<String> dak_certificates;

    @WireField(adapter = "com.stripe.proto.model.attestation.LocalAttestation#ADAPTER", jsonName = "localAttestation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 2)
    public final LocalAttestation local_attestation;

    @WireField(adapter = "com.stripe.proto.model.attestation.PlayIntegrityAttestation#ADAPTER", jsonName = "playIntegrityAttestation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final PlayIntegrityAttestation play_integrity_attestation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final long timestamp;

    public DeviceAttestation() {
        this(null, 0L, null, null, null, 31, null);
    }

    public /* synthetic */ DeviceAttestation(LocalAttestation localAttestation, long j, List list, PlayIntegrityAttestation playIntegrityAttestation, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : localAttestation, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : playIntegrityAttestation, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAttestation(LocalAttestation localAttestation, long j, List<String> dak_certificates, PlayIntegrityAttestation playIntegrityAttestation, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(dak_certificates, "dak_certificates");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.local_attestation = localAttestation;
        this.timestamp = j;
        this.play_integrity_attestation = playIntegrityAttestation;
        this.dak_certificates = Internal.immutableCopyOf("dak_certificates", dak_certificates);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.local_attestation = this.local_attestation;
        builder.timestamp = this.timestamp;
        builder.dak_certificates = this.dak_certificates;
        builder.play_integrity_attestation = this.play_integrity_attestation;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceAttestation)) {
            return false;
        }
        DeviceAttestation deviceAttestation = (DeviceAttestation) other;
        return Intrinsics.areEqual(unknownFields(), deviceAttestation.unknownFields()) && Intrinsics.areEqual(this.local_attestation, deviceAttestation.local_attestation) && this.timestamp == deviceAttestation.timestamp && Intrinsics.areEqual(this.dak_certificates, deviceAttestation.dak_certificates) && Intrinsics.areEqual(this.play_integrity_attestation, deviceAttestation.play_integrity_attestation);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        LocalAttestation localAttestation = this.local_attestation;
        int iHashCode2 = (((((iHashCode + (localAttestation != null ? localAttestation.hashCode() : 0)) * 37) + Long.hashCode(this.timestamp)) * 37) + this.dak_certificates.hashCode()) * 37;
        PlayIntegrityAttestation playIntegrityAttestation = this.play_integrity_attestation;
        int iHashCode3 = iHashCode2 + (playIntegrityAttestation != null ? playIntegrityAttestation.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.local_attestation != null) {
            arrayList.add("local_attestation=" + this.local_attestation);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("timestamp=" + this.timestamp);
        if (!this.dak_certificates.isEmpty()) {
            arrayList2.add("dak_certificates=" + Internal.sanitize(this.dak_certificates));
        }
        if (this.play_integrity_attestation != null) {
            arrayList2.add("play_integrity_attestation=" + this.play_integrity_attestation);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceAttestation{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeviceAttestation copy$default(DeviceAttestation deviceAttestation, LocalAttestation localAttestation, long j, List list, PlayIntegrityAttestation playIntegrityAttestation, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            localAttestation = deviceAttestation.local_attestation;
        }
        if ((i & 2) != 0) {
            j = deviceAttestation.timestamp;
        }
        if ((i & 4) != 0) {
            list = deviceAttestation.dak_certificates;
        }
        if ((i & 8) != 0) {
            playIntegrityAttestation = deviceAttestation.play_integrity_attestation;
        }
        if ((i & 16) != 0) {
            byteString = deviceAttestation.unknownFields();
        }
        ByteString byteString2 = byteString;
        List list2 = list;
        return deviceAttestation.copy(localAttestation, j, list2, playIntegrityAttestation, byteString2);
    }

    public final DeviceAttestation copy(LocalAttestation local_attestation, long timestamp, List<String> dak_certificates, PlayIntegrityAttestation play_integrity_attestation, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(dak_certificates, "dak_certificates");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceAttestation(local_attestation, timestamp, dak_certificates, play_integrity_attestation, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceAttestation.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/DeviceAttestation;", "()V", "dak_certificates", "", "", "local_attestation", "Lcom/stripe/proto/model/attestation/LocalAttestation;", "play_integrity_attestation", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;", "timestamp", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceAttestation, Builder> {
        public List<String> dak_certificates = CollectionsKt.emptyList();
        public LocalAttestation local_attestation;
        public PlayIntegrityAttestation play_integrity_attestation;
        public long timestamp;

        public final Builder local_attestation(LocalAttestation local_attestation) {
            this.local_attestation = local_attestation;
            return this;
        }

        public final Builder timestamp(long timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public final Builder dak_certificates(List<String> dak_certificates) {
            Intrinsics.checkNotNullParameter(dak_certificates, "dak_certificates");
            Internal.checkElementsNotNull(dak_certificates);
            this.dak_certificates = dak_certificates;
            return this;
        }

        public final Builder play_integrity_attestation(PlayIntegrityAttestation play_integrity_attestation) {
            this.play_integrity_attestation = play_integrity_attestation;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceAttestation build() {
            return new DeviceAttestation(this.local_attestation, this.timestamp, this.dak_certificates, this.play_integrity_attestation, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceAttestation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/DeviceAttestation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceAttestation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAttestation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceAttestation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.DeviceAttestation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.local_attestation != null) {
                    size += LocalAttestation.ADAPTER.encodedSizeWithTag(2, value.local_attestation);
                }
                if (value.timestamp != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.timestamp));
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(4, value.dak_certificates);
                return value.play_integrity_attestation != null ? iEncodedSizeWithTag + PlayIntegrityAttestation.ADAPTER.encodedSizeWithTag(5, value.play_integrity_attestation) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.local_attestation != null) {
                    LocalAttestation.ADAPTER.encodeWithTag(writer, 2, value.local_attestation);
                }
                if (value.timestamp != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.timestamp));
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.dak_certificates);
                if (value.play_integrity_attestation != null) {
                    PlayIntegrityAttestation.ADAPTER.encodeWithTag(writer, 5, value.play_integrity_attestation);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.play_integrity_attestation != null) {
                    PlayIntegrityAttestation.ADAPTER.encodeWithTag(writer, 5, value.play_integrity_attestation);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.dak_certificates);
                if (value.timestamp != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.timestamp));
                }
                if (value.local_attestation != null) {
                    LocalAttestation.ADAPTER.encodeWithTag(writer, 2, value.local_attestation);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAttestation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                LocalAttestation localAttestationDecode = null;
                long jLongValue = 0;
                PlayIntegrityAttestation playIntegrityAttestationDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceAttestation(localAttestationDecode, jLongValue, arrayList, playIntegrityAttestationDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 2) {
                        localAttestationDecode = LocalAttestation.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 4) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 5) {
                        playIntegrityAttestationDecode = PlayIntegrityAttestation.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAttestation redact(DeviceAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                LocalAttestation localAttestation = value.local_attestation;
                LocalAttestation localAttestationRedact = localAttestation != null ? LocalAttestation.ADAPTER.redact(localAttestation) : null;
                PlayIntegrityAttestation playIntegrityAttestation = value.play_integrity_attestation;
                return DeviceAttestation.copy$default(value, localAttestationRedact, 0L, null, playIntegrityAttestation != null ? PlayIntegrityAttestation.ADAPTER.redact(playIntegrityAttestation) : null, ByteString.EMPTY, 6, null);
            }
        };
    }
}
