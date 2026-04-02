package com.stripe.proto.model.test;

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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DontRedactMeContainer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBs\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jt\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00062\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\tH\u0016R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMeContainer;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;", "redact_me", "Lcom/stripe/proto/model/test/RedactMe;", "repeated_redact_mes", "", "map_redact_mes", "", "", "dont_redact_me", "Lcom/stripe/proto/model/test/DontRedactMe;", "repeated_dont_redact_mes", "map_dont_redact_mes", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/test/RedactMe;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/test/DontRedactMe;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DontRedactMeContainer extends Message<DontRedactMeContainer, Builder> {
    public static final ProtoAdapter<DontRedactMeContainer> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.test.DontRedactMe#ADAPTER", jsonName = "dontRedactMe", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final DontRedactMe dont_redact_me;

    @WireField(adapter = "com.stripe.proto.model.test.DontRedactMe#ADAPTER", jsonName = "mapDontRedactMes", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, DontRedactMe> map_dont_redact_mes;

    @WireField(adapter = "com.stripe.proto.model.test.RedactMe#ADAPTER", jsonName = "mapRedactMes", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, RedactMe> map_redact_mes;

    @WireField(adapter = "com.stripe.proto.model.test.RedactMe#ADAPTER", jsonName = "redactMe", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final RedactMe redact_me;

    @WireField(adapter = "com.stripe.proto.model.test.DontRedactMe#ADAPTER", jsonName = "repeatedDontRedactMes", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
    public final List<DontRedactMe> repeated_dont_redact_mes;

    @WireField(adapter = "com.stripe.proto.model.test.RedactMe#ADAPTER", jsonName = "repeatedRedactMes", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<RedactMe> repeated_redact_mes;

    public DontRedactMeContainer() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ DontRedactMeContainer(RedactMe redactMe, List list, Map map, DontRedactMe dontRedactMe, List list2, Map map2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : redactMe, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? null : dontRedactMe, (i & 16) != 0 ? CollectionsKt.emptyList() : list2, (i & 32) != 0 ? MapsKt.emptyMap() : map2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DontRedactMeContainer(RedactMe redactMe, List<RedactMe> repeated_redact_mes, Map<String, RedactMe> map_redact_mes, DontRedactMe dontRedactMe, List<DontRedactMe> repeated_dont_redact_mes, Map<String, DontRedactMe> map_dont_redact_mes, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(repeated_redact_mes, "repeated_redact_mes");
        Intrinsics.checkNotNullParameter(map_redact_mes, "map_redact_mes");
        Intrinsics.checkNotNullParameter(repeated_dont_redact_mes, "repeated_dont_redact_mes");
        Intrinsics.checkNotNullParameter(map_dont_redact_mes, "map_dont_redact_mes");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.redact_me = redactMe;
        this.dont_redact_me = dontRedactMe;
        this.repeated_redact_mes = Internal.immutableCopyOf("repeated_redact_mes", repeated_redact_mes);
        this.map_redact_mes = Internal.immutableCopyOf("map_redact_mes", map_redact_mes);
        this.repeated_dont_redact_mes = Internal.immutableCopyOf("repeated_dont_redact_mes", repeated_dont_redact_mes);
        this.map_dont_redact_mes = Internal.immutableCopyOf("map_dont_redact_mes", map_dont_redact_mes);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.redact_me = this.redact_me;
        builder.repeated_redact_mes = this.repeated_redact_mes;
        builder.map_redact_mes = this.map_redact_mes;
        builder.dont_redact_me = this.dont_redact_me;
        builder.repeated_dont_redact_mes = this.repeated_dont_redact_mes;
        builder.map_dont_redact_mes = this.map_dont_redact_mes;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DontRedactMeContainer)) {
            return false;
        }
        DontRedactMeContainer dontRedactMeContainer = (DontRedactMeContainer) other;
        return Intrinsics.areEqual(unknownFields(), dontRedactMeContainer.unknownFields()) && Intrinsics.areEqual(this.redact_me, dontRedactMeContainer.redact_me) && Intrinsics.areEqual(this.repeated_redact_mes, dontRedactMeContainer.repeated_redact_mes) && Intrinsics.areEqual(this.map_redact_mes, dontRedactMeContainer.map_redact_mes) && Intrinsics.areEqual(this.dont_redact_me, dontRedactMeContainer.dont_redact_me) && Intrinsics.areEqual(this.repeated_dont_redact_mes, dontRedactMeContainer.repeated_dont_redact_mes) && Intrinsics.areEqual(this.map_dont_redact_mes, dontRedactMeContainer.map_dont_redact_mes);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        RedactMe redactMe = this.redact_me;
        int iHashCode2 = (((((iHashCode + (redactMe != null ? redactMe.hashCode() : 0)) * 37) + this.repeated_redact_mes.hashCode()) * 37) + this.map_redact_mes.hashCode()) * 37;
        DontRedactMe dontRedactMe = this.dont_redact_me;
        int iHashCode3 = ((((iHashCode2 + (dontRedactMe != null ? dontRedactMe.hashCode() : 0)) * 37) + this.repeated_dont_redact_mes.hashCode()) * 37) + this.map_dont_redact_mes.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.redact_me != null) {
            arrayList.add("redact_me=" + this.redact_me);
        }
        if (!this.repeated_redact_mes.isEmpty()) {
            arrayList.add("repeated_redact_mes=" + this.repeated_redact_mes);
        }
        if (!this.map_redact_mes.isEmpty()) {
            arrayList.add("map_redact_mes=" + this.map_redact_mes);
        }
        if (this.dont_redact_me != null) {
            arrayList.add("dont_redact_me=" + this.dont_redact_me);
        }
        if (!this.repeated_dont_redact_mes.isEmpty()) {
            arrayList.add("repeated_dont_redact_mes=" + this.repeated_dont_redact_mes);
        }
        if (!this.map_dont_redact_mes.isEmpty()) {
            arrayList.add("map_dont_redact_mes=" + this.map_dont_redact_mes);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DontRedactMeContainer{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DontRedactMeContainer copy$default(DontRedactMeContainer dontRedactMeContainer, RedactMe redactMe, List list, Map map, DontRedactMe dontRedactMe, List list2, Map map2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            redactMe = dontRedactMeContainer.redact_me;
        }
        if ((i & 2) != 0) {
            list = dontRedactMeContainer.repeated_redact_mes;
        }
        if ((i & 4) != 0) {
            map = dontRedactMeContainer.map_redact_mes;
        }
        if ((i & 8) != 0) {
            dontRedactMe = dontRedactMeContainer.dont_redact_me;
        }
        if ((i & 16) != 0) {
            list2 = dontRedactMeContainer.repeated_dont_redact_mes;
        }
        if ((i & 32) != 0) {
            map2 = dontRedactMeContainer.map_dont_redact_mes;
        }
        if ((i & 64) != 0) {
            byteString = dontRedactMeContainer.unknownFields();
        }
        Map map3 = map2;
        ByteString byteString2 = byteString;
        List list3 = list2;
        Map map4 = map;
        return dontRedactMeContainer.copy(redactMe, list, map4, dontRedactMe, list3, map3, byteString2);
    }

    public final DontRedactMeContainer copy(RedactMe redact_me, List<RedactMe> repeated_redact_mes, Map<String, RedactMe> map_redact_mes, DontRedactMe dont_redact_me, List<DontRedactMe> repeated_dont_redact_mes, Map<String, DontRedactMe> map_dont_redact_mes, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(repeated_redact_mes, "repeated_redact_mes");
        Intrinsics.checkNotNullParameter(map_redact_mes, "map_redact_mes");
        Intrinsics.checkNotNullParameter(repeated_dont_redact_mes, "repeated_dont_redact_mes");
        Intrinsics.checkNotNullParameter(map_dont_redact_mes, "map_dont_redact_mes");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DontRedactMeContainer(redact_me, repeated_redact_mes, map_redact_mes, dont_redact_me, repeated_dont_redact_mes, map_dont_redact_mes, unknownFields);
    }

    /* JADX INFO: compiled from: DontRedactMeContainer.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u0007J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\n0\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0014\u0010\f\u001a\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\rJ\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\n0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/test/DontRedactMeContainer;", "()V", "dont_redact_me", "Lcom/stripe/proto/model/test/DontRedactMe;", "map_dont_redact_mes", "", "", "map_redact_mes", "Lcom/stripe/proto/model/test/RedactMe;", "redact_me", "repeated_dont_redact_mes", "", "repeated_redact_mes", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DontRedactMeContainer, Builder> {
        public DontRedactMe dont_redact_me;
        public RedactMe redact_me;
        public List<RedactMe> repeated_redact_mes = CollectionsKt.emptyList();
        public Map<String, RedactMe> map_redact_mes = MapsKt.emptyMap();
        public List<DontRedactMe> repeated_dont_redact_mes = CollectionsKt.emptyList();
        public Map<String, DontRedactMe> map_dont_redact_mes = MapsKt.emptyMap();

        public final Builder redact_me(RedactMe redact_me) {
            this.redact_me = redact_me;
            return this;
        }

        public final Builder repeated_redact_mes(List<RedactMe> repeated_redact_mes) {
            Intrinsics.checkNotNullParameter(repeated_redact_mes, "repeated_redact_mes");
            Internal.checkElementsNotNull(repeated_redact_mes);
            this.repeated_redact_mes = repeated_redact_mes;
            return this;
        }

        public final Builder map_redact_mes(Map<String, RedactMe> map_redact_mes) {
            Intrinsics.checkNotNullParameter(map_redact_mes, "map_redact_mes");
            this.map_redact_mes = map_redact_mes;
            return this;
        }

        public final Builder dont_redact_me(DontRedactMe dont_redact_me) {
            this.dont_redact_me = dont_redact_me;
            return this;
        }

        public final Builder repeated_dont_redact_mes(List<DontRedactMe> repeated_dont_redact_mes) {
            Intrinsics.checkNotNullParameter(repeated_dont_redact_mes, "repeated_dont_redact_mes");
            Internal.checkElementsNotNull(repeated_dont_redact_mes);
            this.repeated_dont_redact_mes = repeated_dont_redact_mes;
            return this;
        }

        public final Builder map_dont_redact_mes(Map<String, DontRedactMe> map_dont_redact_mes) {
            Intrinsics.checkNotNullParameter(map_dont_redact_mes, "map_dont_redact_mes");
            this.map_dont_redact_mes = map_dont_redact_mes;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DontRedactMeContainer build() {
            return new DontRedactMeContainer(this.redact_me, this.repeated_redact_mes, this.map_redact_mes, this.dont_redact_me, this.repeated_dont_redact_mes, this.map_dont_redact_mes, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DontRedactMeContainer.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMeContainer$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/DontRedactMeContainer;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DontRedactMeContainer build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DontRedactMeContainer.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DontRedactMeContainer>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.test.DontRedactMeContainer$Companion$ADAPTER$1

            /* JADX INFO: renamed from: map_redact_mesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy map_redact_mesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends RedactMe>>>() { // from class: com.stripe.proto.model.test.DontRedactMeContainer$Companion$ADAPTER$1$map_redact_mesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends RedactMe>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, RedactMe.ADAPTER);
                }
            });

            /* JADX INFO: renamed from: map_dont_redact_mesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy map_dont_redact_mesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends DontRedactMe>>>() { // from class: com.stripe.proto.model.test.DontRedactMeContainer$Companion$ADAPTER$1$map_dont_redact_mesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends DontRedactMe>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, DontRedactMe.ADAPTER);
                }
            });

            private final ProtoAdapter<Map<String, RedactMe>> getMap_redact_mesAdapter() {
                return (ProtoAdapter) this.map_redact_mesAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, DontRedactMe>> getMap_dont_redact_mesAdapter() {
                return (ProtoAdapter) this.map_dont_redact_mesAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DontRedactMeContainer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.redact_me != null) {
                    size += RedactMe.ADAPTER.encodedSizeWithTag(1, value.redact_me);
                }
                int iEncodedSizeWithTag = size + RedactMe.ADAPTER.asRepeated().encodedSizeWithTag(2, value.repeated_redact_mes) + getMap_redact_mesAdapter().encodedSizeWithTag(3, value.map_redact_mes);
                if (value.dont_redact_me != null) {
                    iEncodedSizeWithTag += DontRedactMe.ADAPTER.encodedSizeWithTag(4, value.dont_redact_me);
                }
                return iEncodedSizeWithTag + DontRedactMe.ADAPTER.asRepeated().encodedSizeWithTag(5, value.repeated_dont_redact_mes) + getMap_dont_redact_mesAdapter().encodedSizeWithTag(6, value.map_dont_redact_mes);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DontRedactMeContainer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.redact_me != null) {
                    RedactMe.ADAPTER.encodeWithTag(writer, 1, value.redact_me);
                }
                RedactMe.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.repeated_redact_mes);
                getMap_redact_mesAdapter().encodeWithTag(writer, 3, value.map_redact_mes);
                if (value.dont_redact_me != null) {
                    DontRedactMe.ADAPTER.encodeWithTag(writer, 4, value.dont_redact_me);
                }
                DontRedactMe.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.repeated_dont_redact_mes);
                getMap_dont_redact_mesAdapter().encodeWithTag(writer, 6, value.map_dont_redact_mes);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DontRedactMeContainer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMap_dont_redact_mesAdapter().encodeWithTag(writer, 6, value.map_dont_redact_mes);
                DontRedactMe.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.repeated_dont_redact_mes);
                if (value.dont_redact_me != null) {
                    DontRedactMe.ADAPTER.encodeWithTag(writer, 4, value.dont_redact_me);
                }
                getMap_redact_mesAdapter().encodeWithTag(writer, 3, value.map_redact_mes);
                RedactMe.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.repeated_redact_mes);
                if (value.redact_me != null) {
                    RedactMe.ADAPTER.encodeWithTag(writer, 1, value.redact_me);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DontRedactMeContainer decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList2 = new ArrayList();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                RedactMe redactMeDecode = null;
                DontRedactMe dontRedactMeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                redactMeDecode = RedactMe.ADAPTER.decode(reader);
                                break;
                            case 2:
                                arrayList.add(RedactMe.ADAPTER.decode(reader));
                                break;
                            case 3:
                                linkedHashMap.putAll(getMap_redact_mesAdapter().decode(reader));
                                break;
                            case 4:
                                dontRedactMeDecode = DontRedactMe.ADAPTER.decode(reader);
                                break;
                            case 5:
                                arrayList2.add(DontRedactMe.ADAPTER.decode(reader));
                                break;
                            case 6:
                                linkedHashMap2.putAll(getMap_dont_redact_mesAdapter().decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new DontRedactMeContainer(redactMeDecode, arrayList, linkedHashMap, dontRedactMeDecode, arrayList2, linkedHashMap2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DontRedactMeContainer redact(DontRedactMeContainer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RedactMe redactMe = value.redact_me;
                RedactMe redactMeRedact = redactMe != null ? RedactMe.ADAPTER.redact(redactMe) : null;
                List<RedactMe> listM361redactElements = Internal.m361redactElements(value.repeated_redact_mes, RedactMe.ADAPTER);
                Map<String, RedactMe> mapM362redactElements = Internal.m362redactElements(value.map_redact_mes, RedactMe.ADAPTER);
                DontRedactMe dontRedactMe = value.dont_redact_me;
                return value.copy(redactMeRedact, listM361redactElements, mapM362redactElements, dontRedactMe != null ? DontRedactMe.ADAPTER.redact(dontRedactMe) : null, Internal.m361redactElements(value.repeated_dont_redact_mes, DontRedactMe.ADAPTER), Internal.m362redactElements(value.map_dont_redact_mes, DontRedactMe.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
