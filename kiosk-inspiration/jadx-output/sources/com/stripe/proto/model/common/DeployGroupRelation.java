package com.stripe.proto.model.common;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DeployGroupRelation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/common/DeployGroupRelation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;", "deploy_group_id", "", "deploy_group_snapshot_id", "deploy_group_type", "Lcom/stripe/proto/model/common/DeployGroupType;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeployGroupType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeployGroupRelation extends Message<DeployGroupRelation, Builder> {
    public static final ProtoAdapter<DeployGroupRelation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deployGroupId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String deploy_group_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deployGroupSnapshotId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String deploy_group_snapshot_id;

    @WireField(adapter = "com.stripe.proto.model.common.DeployGroupType#ADAPTER", jsonName = "deployGroupType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DeployGroupType deploy_group_type;

    public DeployGroupRelation() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ DeployGroupRelation(String str, String str2, DeployGroupType deployGroupType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? DeployGroupType.DEPLOY_GROUP_TYPE_INVALID : deployGroupType, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeployGroupRelation(String deploy_group_id, String deploy_group_snapshot_id, DeployGroupType deploy_group_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
        Intrinsics.checkNotNullParameter(deploy_group_snapshot_id, "deploy_group_snapshot_id");
        Intrinsics.checkNotNullParameter(deploy_group_type, "deploy_group_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.deploy_group_id = deploy_group_id;
        this.deploy_group_snapshot_id = deploy_group_snapshot_id;
        this.deploy_group_type = deploy_group_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.deploy_group_id = this.deploy_group_id;
        builder.deploy_group_snapshot_id = this.deploy_group_snapshot_id;
        builder.deploy_group_type = this.deploy_group_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeployGroupRelation)) {
            return false;
        }
        DeployGroupRelation deployGroupRelation = (DeployGroupRelation) other;
        return Intrinsics.areEqual(unknownFields(), deployGroupRelation.unknownFields()) && Intrinsics.areEqual(this.deploy_group_id, deployGroupRelation.deploy_group_id) && Intrinsics.areEqual(this.deploy_group_snapshot_id, deployGroupRelation.deploy_group_snapshot_id) && this.deploy_group_type == deployGroupRelation.deploy_group_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.deploy_group_id.hashCode()) * 37) + this.deploy_group_snapshot_id.hashCode()) * 37) + this.deploy_group_type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("deploy_group_id=" + Internal.sanitize(this.deploy_group_id));
        arrayList2.add("deploy_group_snapshot_id=" + Internal.sanitize(this.deploy_group_snapshot_id));
        arrayList2.add("deploy_group_type=" + this.deploy_group_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeployGroupRelation{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeployGroupRelation copy$default(DeployGroupRelation deployGroupRelation, String str, String str2, DeployGroupType deployGroupType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deployGroupRelation.deploy_group_id;
        }
        if ((i & 2) != 0) {
            str2 = deployGroupRelation.deploy_group_snapshot_id;
        }
        if ((i & 4) != 0) {
            deployGroupType = deployGroupRelation.deploy_group_type;
        }
        if ((i & 8) != 0) {
            byteString = deployGroupRelation.unknownFields();
        }
        return deployGroupRelation.copy(str, str2, deployGroupType, byteString);
    }

    public final DeployGroupRelation copy(String deploy_group_id, String deploy_group_snapshot_id, DeployGroupType deploy_group_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
        Intrinsics.checkNotNullParameter(deploy_group_snapshot_id, "deploy_group_snapshot_id");
        Intrinsics.checkNotNullParameter(deploy_group_type, "deploy_group_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeployGroupRelation(deploy_group_id, deploy_group_snapshot_id, deploy_group_type, unknownFields);
    }

    /* JADX INFO: compiled from: DeployGroupRelation.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeployGroupRelation;", "()V", "deploy_group_id", "", "deploy_group_snapshot_id", "deploy_group_type", "Lcom/stripe/proto/model/common/DeployGroupType;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeployGroupRelation, Builder> {
        public String deploy_group_id = "";
        public String deploy_group_snapshot_id = "";
        public DeployGroupType deploy_group_type = DeployGroupType.DEPLOY_GROUP_TYPE_INVALID;

        public final Builder deploy_group_id(String deploy_group_id) {
            Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
            this.deploy_group_id = deploy_group_id;
            return this;
        }

        public final Builder deploy_group_snapshot_id(String deploy_group_snapshot_id) {
            Intrinsics.checkNotNullParameter(deploy_group_snapshot_id, "deploy_group_snapshot_id");
            this.deploy_group_snapshot_id = deploy_group_snapshot_id;
            return this;
        }

        public final Builder deploy_group_type(DeployGroupType deploy_group_type) {
            Intrinsics.checkNotNullParameter(deploy_group_type, "deploy_group_type");
            this.deploy_group_type = deploy_group_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeployGroupRelation build() {
            return new DeployGroupRelation(this.deploy_group_id, this.deploy_group_snapshot_id, this.deploy_group_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeployGroupRelation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeployGroupRelation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeployGroupRelation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeployGroupRelation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeployGroupRelation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeployGroupRelation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeployGroupRelation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeployGroupRelation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.deploy_group_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.deploy_group_id);
                }
                if (!Intrinsics.areEqual(value.deploy_group_snapshot_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.deploy_group_snapshot_id);
                }
                return value.deploy_group_type != DeployGroupType.DEPLOY_GROUP_TYPE_INVALID ? size + DeployGroupType.ADAPTER.encodedSizeWithTag(3, value.deploy_group_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeployGroupRelation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.deploy_group_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.deploy_group_id);
                }
                if (!Intrinsics.areEqual(value.deploy_group_snapshot_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.deploy_group_snapshot_id);
                }
                if (value.deploy_group_type != DeployGroupType.DEPLOY_GROUP_TYPE_INVALID) {
                    DeployGroupType.ADAPTER.encodeWithTag(writer, 3, value.deploy_group_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeployGroupRelation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.deploy_group_type != DeployGroupType.DEPLOY_GROUP_TYPE_INVALID) {
                    DeployGroupType.ADAPTER.encodeWithTag(writer, 3, value.deploy_group_type);
                }
                if (!Intrinsics.areEqual(value.deploy_group_snapshot_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.deploy_group_snapshot_id);
                }
                if (Intrinsics.areEqual(value.deploy_group_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.deploy_group_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeployGroupRelation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeployGroupType deployGroupTypeDecode = DeployGroupType.DEPLOY_GROUP_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeployGroupRelation(strDecode, strDecode2, deployGroupTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            deployGroupTypeDecode = DeployGroupType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeployGroupRelation redact(DeployGroupRelation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DeployGroupRelation.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
