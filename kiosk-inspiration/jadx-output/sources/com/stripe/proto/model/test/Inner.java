package com.stripe.proto.model.test;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.sun.jna.platform.win32.WinUser;
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
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: Inner.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dB\u009f\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0006\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J \u0001\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00062\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\nH\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0004H\u0016R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/model/test/Inner;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/test/Inner$Builder;", "com_stripe_proto_model_test_string", "", "strings", "", "string_map", "", "int", "", "ints", "int_map", "com_stripe_proto_model_test_float", "", "floats", "float_map", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ILjava/util/List;Ljava/util/Map;FLjava/util/List;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Inner extends Message<Inner, Builder> {
    public static final ProtoAdapter<Inner> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", declaredName = TypedValues.Custom.S_FLOAT, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final float com_stripe_proto_model_test_float;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = TypedValues.Custom.S_STRING, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String com_stripe_proto_model_test_string;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", jsonName = "floatMap", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 9)
    public final Map<String, Float> float_map;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", label = WireField.Label.PACKED, schemaIndex = 7, tag = 8)
    public final List<Float> floats;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int int;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "intMap", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, Integer> int_map;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.PACKED, schemaIndex = 4, tag = 5)
    public final List<Integer> ints;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stringMap", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, String> string_map;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> strings;

    public Inner() {
        this(null, null, null, 0, null, null, 0.0f, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ Inner(String str, List list, Map map, int i, List list2, Map map2, float f, List list3, Map map3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list, (i2 & 4) != 0 ? MapsKt.emptyMap() : map, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 32) != 0 ? MapsKt.emptyMap() : map2, (i2 & 64) != 0 ? 0.0f : f, (i2 & 128) != 0 ? CollectionsKt.emptyList() : list3, (i2 & 256) != 0 ? MapsKt.emptyMap() : map3, (i2 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Inner(String com_stripe_proto_model_test_string, List<String> strings, Map<String, String> string_map, int i, List<Integer> ints, Map<String, Integer> int_map, float f, List<Float> floats, Map<String, Float> float_map, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Intrinsics.checkNotNullParameter(string_map, "string_map");
        Intrinsics.checkNotNullParameter(ints, "ints");
        Intrinsics.checkNotNullParameter(int_map, "int_map");
        Intrinsics.checkNotNullParameter(floats, "floats");
        Intrinsics.checkNotNullParameter(float_map, "float_map");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.com_stripe_proto_model_test_string = com_stripe_proto_model_test_string;
        this.int = i;
        this.com_stripe_proto_model_test_float = f;
        this.strings = Internal.immutableCopyOf("strings", strings);
        this.string_map = Internal.immutableCopyOf("string_map", string_map);
        this.ints = Internal.immutableCopyOf("ints", ints);
        this.int_map = Internal.immutableCopyOf("int_map", int_map);
        this.floats = Internal.immutableCopyOf("floats", floats);
        this.float_map = Internal.immutableCopyOf("float_map", float_map);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.com_stripe_proto_model_test_string = this.com_stripe_proto_model_test_string;
        builder.strings = this.strings;
        builder.string_map = this.string_map;
        builder.int = this.int;
        builder.ints = this.ints;
        builder.int_map = this.int_map;
        builder.com_stripe_proto_model_test_float = this.com_stripe_proto_model_test_float;
        builder.floats = this.floats;
        builder.float_map = this.float_map;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Inner)) {
            return false;
        }
        Inner inner = (Inner) other;
        return Intrinsics.areEqual(unknownFields(), inner.unknownFields()) && Intrinsics.areEqual(this.com_stripe_proto_model_test_string, inner.com_stripe_proto_model_test_string) && Intrinsics.areEqual(this.strings, inner.strings) && Intrinsics.areEqual(this.string_map, inner.string_map) && this.int == inner.int && Intrinsics.areEqual(this.ints, inner.ints) && Intrinsics.areEqual(this.int_map, inner.int_map) && this.com_stripe_proto_model_test_float == inner.com_stripe_proto_model_test_float && Intrinsics.areEqual(this.floats, inner.floats) && Intrinsics.areEqual(this.float_map, inner.float_map);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((unknownFields().hashCode() * 37) + this.com_stripe_proto_model_test_string.hashCode()) * 37) + this.strings.hashCode()) * 37) + this.string_map.hashCode()) * 37) + Integer.hashCode(this.int)) * 37) + this.ints.hashCode()) * 37) + this.int_map.hashCode()) * 37) + Float.hashCode(this.com_stripe_proto_model_test_float)) * 37) + this.floats.hashCode()) * 37) + this.float_map.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("com_stripe_proto_model_test_string=" + Internal.sanitize(this.com_stripe_proto_model_test_string));
        if (!this.strings.isEmpty()) {
            arrayList2.add("strings=" + Internal.sanitize(this.strings));
        }
        if (!this.string_map.isEmpty()) {
            arrayList2.add("string_map=" + this.string_map);
        }
        arrayList2.add("int=" + this.int);
        if (!this.ints.isEmpty()) {
            arrayList2.add("ints=" + this.ints);
        }
        if (!this.int_map.isEmpty()) {
            arrayList2.add("int_map=" + this.int_map);
        }
        arrayList2.add("com_stripe_proto_model_test_float=" + this.com_stripe_proto_model_test_float);
        if (!this.floats.isEmpty()) {
            arrayList2.add("floats=" + this.floats);
        }
        if (!this.float_map.isEmpty()) {
            arrayList2.add("float_map=" + this.float_map);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Inner{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Inner copy$default(Inner inner, String str, List list, Map map, int i, List list2, Map map2, float f, List list3, Map map3, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = inner.com_stripe_proto_model_test_string;
        }
        if ((i2 & 2) != 0) {
            list = inner.strings;
        }
        if ((i2 & 4) != 0) {
            map = inner.string_map;
        }
        if ((i2 & 8) != 0) {
            i = inner.int;
        }
        if ((i2 & 16) != 0) {
            list2 = inner.ints;
        }
        if ((i2 & 32) != 0) {
            map2 = inner.int_map;
        }
        if ((i2 & 64) != 0) {
            f = inner.com_stripe_proto_model_test_float;
        }
        if ((i2 & 128) != 0) {
            list3 = inner.floats;
        }
        if ((i2 & 256) != 0) {
            map3 = inner.float_map;
        }
        if ((i2 & 512) != 0) {
            byteString = inner.unknownFields();
        }
        Map map4 = map3;
        ByteString byteString2 = byteString;
        float f2 = f;
        List list4 = list3;
        List list5 = list2;
        Map map5 = map2;
        return inner.copy(str, list, map, i, list5, map5, f2, list4, map4, byteString2);
    }

    public final Inner copy(String com_stripe_proto_model_test_string, List<String> strings, Map<String, String> string_map, int i, List<Integer> ints, Map<String, Integer> int_map, float com_stripe_proto_model_test_float, List<Float> floats, Map<String, Float> float_map, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Intrinsics.checkNotNullParameter(string_map, "string_map");
        Intrinsics.checkNotNullParameter(ints, "ints");
        Intrinsics.checkNotNullParameter(int_map, "int_map");
        Intrinsics.checkNotNullParameter(floats, "floats");
        Intrinsics.checkNotNullParameter(float_map, "float_map");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Inner(com_stripe_proto_model_test_string, strings, string_map, i, ints, int_map, com_stripe_proto_model_test_float, floats, float_map, unknownFields);
    }

    /* JADX INFO: compiled from: Inner.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\tJ\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u001a\u0010\u000e\u001a\u00020\u00002\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\tJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u000bJ\u001a\u0010\u0010\u001a\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tJ\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/test/Inner$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/test/Inner;", "()V", "com_stripe_proto_model_test_float", "", "com_stripe_proto_model_test_string", "", "float_map", "", "floats", "", "int", "", "int_map", "ints", "string_map", "strings", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Inner, Builder> {
        public float com_stripe_proto_model_test_float;
        public int int;
        public String com_stripe_proto_model_test_string = "";
        public List<String> strings = CollectionsKt.emptyList();
        public Map<String, String> string_map = MapsKt.emptyMap();
        public List<Integer> ints = CollectionsKt.emptyList();
        public Map<String, Integer> int_map = MapsKt.emptyMap();
        public List<Float> floats = CollectionsKt.emptyList();
        public Map<String, Float> float_map = MapsKt.emptyMap();

        public final Builder com_stripe_proto_model_test_string(String com_stripe_proto_model_test_string) {
            Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
            this.com_stripe_proto_model_test_string = com_stripe_proto_model_test_string;
            return this;
        }

        public final Builder strings(List<String> strings) {
            Intrinsics.checkNotNullParameter(strings, "strings");
            Internal.checkElementsNotNull(strings);
            this.strings = strings;
            return this;
        }

        public final Builder string_map(Map<String, String> string_map) {
            Intrinsics.checkNotNullParameter(string_map, "string_map");
            this.string_map = string_map;
            return this;
        }

        /* JADX INFO: renamed from: int, reason: not valid java name */
        public final Builder m496int(int i) {
            this.int = i;
            return this;
        }

        public final Builder ints(List<Integer> ints) {
            Intrinsics.checkNotNullParameter(ints, "ints");
            Internal.checkElementsNotNull(ints);
            this.ints = ints;
            return this;
        }

        public final Builder int_map(Map<String, Integer> int_map) {
            Intrinsics.checkNotNullParameter(int_map, "int_map");
            this.int_map = int_map;
            return this;
        }

        public final Builder com_stripe_proto_model_test_float(float com_stripe_proto_model_test_float) {
            this.com_stripe_proto_model_test_float = com_stripe_proto_model_test_float;
            return this;
        }

        public final Builder floats(List<Float> floats) {
            Intrinsics.checkNotNullParameter(floats, "floats");
            Internal.checkElementsNotNull(floats);
            this.floats = floats;
            return this;
        }

        public final Builder float_map(Map<String, Float> float_map) {
            Intrinsics.checkNotNullParameter(float_map, "float_map");
            this.float_map = float_map;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Inner build() {
            return new Inner(this.com_stripe_proto_model_test_string, this.strings, this.string_map, this.int, this.ints, this.int_map, this.com_stripe_proto_model_test_float, this.floats, this.float_map, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Inner.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/test/Inner$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/Inner;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/test/Inner$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Inner build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Inner.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Inner>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.test.Inner$Companion$ADAPTER$1

            /* JADX INFO: renamed from: string_mapAdapter$delegate, reason: from kotlin metadata */
            private final Lazy string_mapAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.test.Inner$Companion$ADAPTER$1$string_mapAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            /* JADX INFO: renamed from: int_mapAdapter$delegate, reason: from kotlin metadata */
            private final Lazy int_mapAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Integer>>>() { // from class: com.stripe.proto.model.test.Inner$Companion$ADAPTER$1$int_mapAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Integer>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.INT32);
                }
            });

            /* JADX INFO: renamed from: float_mapAdapter$delegate, reason: from kotlin metadata */
            private final Lazy float_mapAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Float>>>() { // from class: com.stripe.proto.model.test.Inner$Companion$ADAPTER$1$float_mapAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Float>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.FLOAT);
                }
            });

            private final ProtoAdapter<Map<String, String>> getString_mapAdapter() {
                return (ProtoAdapter) this.string_mapAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, Integer>> getInt_mapAdapter() {
                return (ProtoAdapter) this.int_mapAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, Float>> getFloat_mapAdapter() {
                return (ProtoAdapter) this.float_mapAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Inner value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.com_stripe_proto_model_test_string);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.strings) + getString_mapAdapter().encodedSizeWithTag(3, value.string_map);
                if (value.int != 0) {
                    iEncodedSizeWithTag += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.int));
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(5, value.ints) + getInt_mapAdapter().encodedSizeWithTag(6, value.int_map);
                if (!Float.valueOf(value.com_stripe_proto_model_test_float).equals(Float.valueOf(0.0f))) {
                    iEncodedSizeWithTag2 += ProtoAdapter.FLOAT.encodedSizeWithTag(7, Float.valueOf(value.com_stripe_proto_model_test_float));
                }
                return iEncodedSizeWithTag2 + ProtoAdapter.FLOAT.asPacked().encodedSizeWithTag(8, value.floats) + getFloat_mapAdapter().encodedSizeWithTag(9, value.float_map);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Inner value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.com_stripe_proto_model_test_string);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.strings);
                getString_mapAdapter().encodeWithTag(writer, 3, value.string_map);
                if (value.int != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.int));
                }
                ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 5, value.ints);
                getInt_mapAdapter().encodeWithTag(writer, 6, value.int_map);
                if (!Float.valueOf(value.com_stripe_proto_model_test_float).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 7, Float.valueOf(value.com_stripe_proto_model_test_float));
                }
                ProtoAdapter.FLOAT.asPacked().encodeWithTag(writer, 8, value.floats);
                getFloat_mapAdapter().encodeWithTag(writer, 9, value.float_map);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Inner value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getFloat_mapAdapter().encodeWithTag(writer, 9, value.float_map);
                ProtoAdapter.FLOAT.asPacked().encodeWithTag(writer, 8, value.floats);
                if (!Float.valueOf(value.com_stripe_proto_model_test_float).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 7, Float.valueOf(value.com_stripe_proto_model_test_float));
                }
                getInt_mapAdapter().encodeWithTag(writer, 6, value.int_map);
                ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 5, value.ints);
                if (value.int != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.int));
                }
                getString_mapAdapter().encodeWithTag(writer, 3, value.string_map);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.strings);
                if (Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.com_stripe_proto_model_test_string);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Inner decode(ProtoReader reader) throws IOException {
                int i;
                ArrayList arrayList;
                int i2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList2 = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                int iIntValue = 0;
                ArrayList arrayList3 = null;
                float fFloatValue = 0.0f;
                ArrayList arrayList4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                i = iIntValue;
                                arrayList = arrayList3;
                                arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                            case 3:
                                i = iIntValue;
                                arrayList = arrayList3;
                                linkedHashMap.putAll(getString_mapAdapter().decode(reader));
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                            case 4:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 5:
                                i2 = iIntValue;
                                ArrayList arrayList5 = arrayList3;
                                arrayList3 = arrayList5 == null ? new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L)) : arrayList5;
                                arrayList3.add(ProtoAdapter.INT32.decode(reader));
                                iIntValue = i2;
                                break;
                            case 6:
                                i = iIntValue;
                                arrayList = arrayList3;
                                linkedHashMap2.putAll(getInt_mapAdapter().decode(reader));
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                            case 7:
                                i2 = iIntValue;
                                fFloatValue = ProtoAdapter.FLOAT.decode(reader).floatValue();
                                iIntValue = i2;
                                break;
                            case 8:
                                if (arrayList4 == null) {
                                    i = iIntValue;
                                    arrayList = arrayList3;
                                    arrayList4 = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 4), 2147483647L));
                                } else {
                                    i = iIntValue;
                                    arrayList = arrayList3;
                                }
                                arrayList4.add(ProtoAdapter.FLOAT.decode(reader));
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                            case 9:
                                linkedHashMap3.putAll(getFloat_mapAdapter().decode(reader));
                                i = iIntValue;
                                arrayList = arrayList3;
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                            default:
                                i = iIntValue;
                                arrayList = arrayList3;
                                reader.readUnknownField(iNextTag);
                                iIntValue = i;
                                arrayList3 = arrayList;
                                break;
                        }
                    } else {
                        int i3 = iIntValue;
                        ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                        String str = strDecode;
                        ArrayList arrayListEmptyList = arrayList3;
                        if (arrayListEmptyList == null) {
                            arrayListEmptyList = CollectionsKt.emptyList();
                        }
                        ArrayList arrayListEmptyList2 = arrayList4;
                        if (arrayListEmptyList2 == null) {
                            arrayListEmptyList2 = CollectionsKt.emptyList();
                        }
                        return new Inner(str, arrayList2, linkedHashMap, i3, arrayListEmptyList, linkedHashMap2, fFloatValue, arrayListEmptyList2, linkedHashMap3, byteStringEndMessageAndGetUnknownFields);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Inner redact(Inner value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Inner.copy$default(value, null, null, null, 0, null, null, 0.0f, null, null, ByteString.EMPTY, 511, null);
            }
        };
    }
}
