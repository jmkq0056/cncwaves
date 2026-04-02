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

/* JADX INFO: compiled from: DontRedactMe.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB¥\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0006\u0012\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0006\u0012\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J¦\u0001\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00062\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b2\b\b\u0002\u0010\f\u001a\u00020\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00062\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\b2\b\b\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\rH\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMe;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/test/DontRedactMe$Builder;", "com_stripe_proto_model_test_string", "", "repeated_strings", "", "map_strings", "", "string_value", "repeated_string_values", "map_string_values", "com_stripe_proto_model_test_int32", "", "repeated_int32s", "map_int32s", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ILjava/util/List;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DontRedactMe extends Message<DontRedactMe, Builder> {
    public static final ProtoAdapter<DontRedactMe> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", declaredName = "int32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final int com_stripe_proto_model_test_int32;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = TypedValues.Custom.S_STRING, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String com_stripe_proto_model_test_string;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "mapInt32s", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 9)
    public final Map<String, Integer> map_int32s;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "mapStringValues", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, String> map_string_values;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "mapStrings", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, String> map_strings;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "repeatedInt32s", label = WireField.Label.PACKED, schemaIndex = 7, tag = 8)
    public final List<Integer> repeated_int32s;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "repeatedStringValues", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
    public final List<String> repeated_string_values;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "repeatedStrings", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> repeated_strings;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "stringValue", schemaIndex = 3, tag = 4)
    public final String string_value;

    public DontRedactMe() {
        this(null, null, null, null, null, null, 0, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ DontRedactMe(String str, List list, Map map, String str2, List list2, Map map2, int i, List list3, Map map3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list, (i2 & 4) != 0 ? MapsKt.emptyMap() : map, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 32) != 0 ? MapsKt.emptyMap() : map2, (i2 & 64) != 0 ? 0 : i, (i2 & 128) != 0 ? CollectionsKt.emptyList() : list3, (i2 & 256) != 0 ? MapsKt.emptyMap() : map3, (i2 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DontRedactMe(String com_stripe_proto_model_test_string, List<String> repeated_strings, Map<String, String> map_strings, String str, List<String> repeated_string_values, Map<String, String> map_string_values, int i, List<Integer> repeated_int32s, Map<String, Integer> map_int32s, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
        Intrinsics.checkNotNullParameter(repeated_strings, "repeated_strings");
        Intrinsics.checkNotNullParameter(map_strings, "map_strings");
        Intrinsics.checkNotNullParameter(repeated_string_values, "repeated_string_values");
        Intrinsics.checkNotNullParameter(map_string_values, "map_string_values");
        Intrinsics.checkNotNullParameter(repeated_int32s, "repeated_int32s");
        Intrinsics.checkNotNullParameter(map_int32s, "map_int32s");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.com_stripe_proto_model_test_string = com_stripe_proto_model_test_string;
        this.string_value = str;
        this.com_stripe_proto_model_test_int32 = i;
        this.repeated_strings = Internal.immutableCopyOf("repeated_strings", repeated_strings);
        this.map_strings = Internal.immutableCopyOf("map_strings", map_strings);
        this.repeated_string_values = Internal.immutableCopyOf("repeated_string_values", repeated_string_values);
        this.map_string_values = Internal.immutableCopyOf("map_string_values", map_string_values);
        this.repeated_int32s = Internal.immutableCopyOf("repeated_int32s", repeated_int32s);
        this.map_int32s = Internal.immutableCopyOf("map_int32s", map_int32s);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.com_stripe_proto_model_test_string = this.com_stripe_proto_model_test_string;
        builder.repeated_strings = this.repeated_strings;
        builder.map_strings = this.map_strings;
        builder.string_value = this.string_value;
        builder.repeated_string_values = this.repeated_string_values;
        builder.map_string_values = this.map_string_values;
        builder.com_stripe_proto_model_test_int32 = this.com_stripe_proto_model_test_int32;
        builder.repeated_int32s = this.repeated_int32s;
        builder.map_int32s = this.map_int32s;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DontRedactMe)) {
            return false;
        }
        DontRedactMe dontRedactMe = (DontRedactMe) other;
        return Intrinsics.areEqual(unknownFields(), dontRedactMe.unknownFields()) && Intrinsics.areEqual(this.com_stripe_proto_model_test_string, dontRedactMe.com_stripe_proto_model_test_string) && Intrinsics.areEqual(this.repeated_strings, dontRedactMe.repeated_strings) && Intrinsics.areEqual(this.map_strings, dontRedactMe.map_strings) && Intrinsics.areEqual(this.string_value, dontRedactMe.string_value) && Intrinsics.areEqual(this.repeated_string_values, dontRedactMe.repeated_string_values) && Intrinsics.areEqual(this.map_string_values, dontRedactMe.map_string_values) && this.com_stripe_proto_model_test_int32 == dontRedactMe.com_stripe_proto_model_test_int32 && Intrinsics.areEqual(this.repeated_int32s, dontRedactMe.repeated_int32s) && Intrinsics.areEqual(this.map_int32s, dontRedactMe.map_int32s);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.com_stripe_proto_model_test_string.hashCode()) * 37) + this.repeated_strings.hashCode()) * 37) + this.map_strings.hashCode()) * 37;
        String str = this.string_value;
        int iHashCode2 = ((((((((((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + this.repeated_string_values.hashCode()) * 37) + this.map_string_values.hashCode()) * 37) + Integer.hashCode(this.com_stripe_proto_model_test_int32)) * 37) + this.repeated_int32s.hashCode()) * 37) + this.map_int32s.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("com_stripe_proto_model_test_string=" + Internal.sanitize(this.com_stripe_proto_model_test_string));
        if (!this.repeated_strings.isEmpty()) {
            arrayList2.add("repeated_strings=" + Internal.sanitize(this.repeated_strings));
        }
        if (!this.map_strings.isEmpty()) {
            arrayList2.add("map_strings=" + this.map_strings);
        }
        if (this.string_value != null) {
            arrayList2.add("string_value=" + this.string_value);
        }
        if (!this.repeated_string_values.isEmpty()) {
            arrayList2.add("repeated_string_values=" + this.repeated_string_values);
        }
        if (!this.map_string_values.isEmpty()) {
            arrayList2.add("map_string_values=" + this.map_string_values);
        }
        arrayList2.add("com_stripe_proto_model_test_int32=" + this.com_stripe_proto_model_test_int32);
        if (!this.repeated_int32s.isEmpty()) {
            arrayList2.add("repeated_int32s=" + this.repeated_int32s);
        }
        if (!this.map_int32s.isEmpty()) {
            arrayList2.add("map_int32s=" + this.map_int32s);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DontRedactMe{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DontRedactMe copy$default(DontRedactMe dontRedactMe, String str, List list, Map map, String str2, List list2, Map map2, int i, List list3, Map map3, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = dontRedactMe.com_stripe_proto_model_test_string;
        }
        if ((i2 & 2) != 0) {
            list = dontRedactMe.repeated_strings;
        }
        if ((i2 & 4) != 0) {
            map = dontRedactMe.map_strings;
        }
        if ((i2 & 8) != 0) {
            str2 = dontRedactMe.string_value;
        }
        if ((i2 & 16) != 0) {
            list2 = dontRedactMe.repeated_string_values;
        }
        if ((i2 & 32) != 0) {
            map2 = dontRedactMe.map_string_values;
        }
        if ((i2 & 64) != 0) {
            i = dontRedactMe.com_stripe_proto_model_test_int32;
        }
        if ((i2 & 128) != 0) {
            list3 = dontRedactMe.repeated_int32s;
        }
        if ((i2 & 256) != 0) {
            map3 = dontRedactMe.map_int32s;
        }
        if ((i2 & 512) != 0) {
            byteString = dontRedactMe.unknownFields();
        }
        Map map4 = map3;
        ByteString byteString2 = byteString;
        int i3 = i;
        List list4 = list3;
        List list5 = list2;
        Map map5 = map2;
        return dontRedactMe.copy(str, list, map, str2, list5, map5, i3, list4, map4, byteString2);
    }

    public final DontRedactMe copy(String com_stripe_proto_model_test_string, List<String> repeated_strings, Map<String, String> map_strings, String string_value, List<String> repeated_string_values, Map<String, String> map_string_values, int com_stripe_proto_model_test_int32, List<Integer> repeated_int32s, Map<String, Integer> map_int32s, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
        Intrinsics.checkNotNullParameter(repeated_strings, "repeated_strings");
        Intrinsics.checkNotNullParameter(map_strings, "map_strings");
        Intrinsics.checkNotNullParameter(repeated_string_values, "repeated_string_values");
        Intrinsics.checkNotNullParameter(map_string_values, "map_string_values");
        Intrinsics.checkNotNullParameter(repeated_int32s, "repeated_int32s");
        Intrinsics.checkNotNullParameter(map_int32s, "map_int32s");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DontRedactMe(com_stripe_proto_model_test_string, repeated_strings, map_strings, string_value, repeated_string_values, map_string_values, com_stripe_proto_model_test_int32, repeated_int32s, map_int32s, unknownFields);
    }

    /* JADX INFO: compiled from: DontRedactMe.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\tJ\u001c\u0010\n\u001a\u00020\u00002\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tJ\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tJ\u0014\u0010\f\u001a\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\rJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\rJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R \u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMe$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/test/DontRedactMe;", "()V", "com_stripe_proto_model_test_int32", "", "com_stripe_proto_model_test_string", "", "map_int32s", "", "map_string_values", "map_strings", "repeated_int32s", "", "repeated_string_values", "repeated_strings", "string_value", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DontRedactMe, Builder> {
        public int com_stripe_proto_model_test_int32;
        public String string_value;
        public String com_stripe_proto_model_test_string = "";
        public List<String> repeated_strings = CollectionsKt.emptyList();
        public Map<String, String> map_strings = MapsKt.emptyMap();
        public List<String> repeated_string_values = CollectionsKt.emptyList();
        public Map<String, String> map_string_values = MapsKt.emptyMap();
        public List<Integer> repeated_int32s = CollectionsKt.emptyList();
        public Map<String, Integer> map_int32s = MapsKt.emptyMap();

        public final Builder com_stripe_proto_model_test_string(String com_stripe_proto_model_test_string) {
            Intrinsics.checkNotNullParameter(com_stripe_proto_model_test_string, "com_stripe_proto_model_test_string");
            this.com_stripe_proto_model_test_string = com_stripe_proto_model_test_string;
            return this;
        }

        public final Builder repeated_strings(List<String> repeated_strings) {
            Intrinsics.checkNotNullParameter(repeated_strings, "repeated_strings");
            Internal.checkElementsNotNull(repeated_strings);
            this.repeated_strings = repeated_strings;
            return this;
        }

        public final Builder map_strings(Map<String, String> map_strings) {
            Intrinsics.checkNotNullParameter(map_strings, "map_strings");
            this.map_strings = map_strings;
            return this;
        }

        public final Builder string_value(String string_value) {
            this.string_value = string_value;
            return this;
        }

        public final Builder repeated_string_values(List<String> repeated_string_values) {
            Intrinsics.checkNotNullParameter(repeated_string_values, "repeated_string_values");
            Internal.checkElementsNotNull(repeated_string_values);
            this.repeated_string_values = repeated_string_values;
            return this;
        }

        public final Builder map_string_values(Map<String, String> map_string_values) {
            Intrinsics.checkNotNullParameter(map_string_values, "map_string_values");
            this.map_string_values = map_string_values;
            return this;
        }

        public final Builder com_stripe_proto_model_test_int32(int com_stripe_proto_model_test_int32) {
            this.com_stripe_proto_model_test_int32 = com_stripe_proto_model_test_int32;
            return this;
        }

        public final Builder repeated_int32s(List<Integer> repeated_int32s) {
            Intrinsics.checkNotNullParameter(repeated_int32s, "repeated_int32s");
            Internal.checkElementsNotNull(repeated_int32s);
            this.repeated_int32s = repeated_int32s;
            return this;
        }

        public final Builder map_int32s(Map<String, Integer> map_int32s) {
            Intrinsics.checkNotNullParameter(map_int32s, "map_int32s");
            this.map_int32s = map_int32s;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DontRedactMe build() {
            return new DontRedactMe(this.com_stripe_proto_model_test_string, this.repeated_strings, this.map_strings, this.string_value, this.repeated_string_values, this.map_string_values, this.com_stripe_proto_model_test_int32, this.repeated_int32s, this.map_int32s, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DontRedactMe.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/test/DontRedactMe$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/DontRedactMe;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/test/DontRedactMe$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DontRedactMe build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DontRedactMe.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DontRedactMe>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.test.DontRedactMe$Companion$ADAPTER$1

            /* JADX INFO: renamed from: map_stringsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy map_stringsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.test.DontRedactMe$Companion$ADAPTER$1$map_stringsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            /* JADX INFO: renamed from: map_string_valuesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy map_string_valuesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.test.DontRedactMe$Companion$ADAPTER$1$map_string_valuesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING_VALUE);
                }
            });

            /* JADX INFO: renamed from: map_int32sAdapter$delegate, reason: from kotlin metadata */
            private final Lazy map_int32sAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Integer>>>() { // from class: com.stripe.proto.model.test.DontRedactMe$Companion$ADAPTER$1$map_int32sAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Integer>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.INT32);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMap_stringsAdapter() {
                return (ProtoAdapter) this.map_stringsAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, String>> getMap_string_valuesAdapter() {
                return (ProtoAdapter) this.map_string_valuesAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, Integer>> getMap_int32sAdapter() {
                return (ProtoAdapter) this.map_int32sAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DontRedactMe value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.com_stripe_proto_model_test_string);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.repeated_strings) + getMap_stringsAdapter().encodedSizeWithTag(3, value.map_strings);
                if (value.string_value != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.string_value);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.asRepeated().encodedSizeWithTag(5, value.repeated_string_values) + getMap_string_valuesAdapter().encodedSizeWithTag(6, value.map_string_values);
                if (value.com_stripe_proto_model_test_int32 != 0) {
                    iEncodedSizeWithTag2 += ProtoAdapter.INT32.encodedSizeWithTag(7, Integer.valueOf(value.com_stripe_proto_model_test_int32));
                }
                return iEncodedSizeWithTag2 + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(8, value.repeated_int32s) + getMap_int32sAdapter().encodedSizeWithTag(9, value.map_int32s);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DontRedactMe value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.com_stripe_proto_model_test_string);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.repeated_strings);
                getMap_stringsAdapter().encodeWithTag(writer, 3, value.map_strings);
                if (value.string_value != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.string_value);
                }
                ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 5, value.repeated_string_values);
                getMap_string_valuesAdapter().encodeWithTag(writer, 6, value.map_string_values);
                if (value.com_stripe_proto_model_test_int32 != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 7, Integer.valueOf(value.com_stripe_proto_model_test_int32));
                }
                ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 8, value.repeated_int32s);
                getMap_int32sAdapter().encodeWithTag(writer, 9, value.map_int32s);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DontRedactMe value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMap_int32sAdapter().encodeWithTag(writer, 9, value.map_int32s);
                ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 8, value.repeated_int32s);
                if (value.com_stripe_proto_model_test_int32 != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 7, Integer.valueOf(value.com_stripe_proto_model_test_int32));
                }
                getMap_string_valuesAdapter().encodeWithTag(writer, 6, value.map_string_values);
                ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 5, value.repeated_string_values);
                if (value.string_value != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.string_value);
                }
                getMap_stringsAdapter().encodeWithTag(writer, 3, value.map_strings);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.repeated_strings);
                if (Intrinsics.areEqual(value.com_stripe_proto_model_test_string, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.com_stripe_proto_model_test_string);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DontRedactMe decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList2 = new ArrayList();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = null;
                int iIntValue = 0;
                ArrayList arrayList3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 3:
                                linkedHashMap.putAll(getMap_stringsAdapter().decode(reader));
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                arrayList2.add(ProtoAdapter.STRING_VALUE.decode(reader));
                                break;
                            case 6:
                                linkedHashMap2.putAll(getMap_string_valuesAdapter().decode(reader));
                                break;
                            case 7:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 8:
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                                }
                                arrayList3.add(ProtoAdapter.INT32.decode(reader));
                                break;
                            case 9:
                                linkedHashMap3.putAll(getMap_int32sAdapter().decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                        String str = strDecode;
                        String str2 = strDecode2;
                        ArrayList arrayListEmptyList = arrayList3;
                        if (arrayListEmptyList == null) {
                            arrayListEmptyList = CollectionsKt.emptyList();
                        }
                        return new DontRedactMe(str, arrayList, linkedHashMap, str2, arrayList2, linkedHashMap2, iIntValue, arrayListEmptyList, linkedHashMap3, byteStringEndMessageAndGetUnknownFields);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DontRedactMe redact(DontRedactMe value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.string_value;
                return DontRedactMe.copy$default(value, null, null, null, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, Internal.m361redactElements(value.repeated_string_values, ProtoAdapter.STRING_VALUE), Internal.m362redactElements(value.map_string_values, ProtoAdapter.STRING_VALUE), 0, null, null, ByteString.EMPTY, 455, null);
            }
        };
    }
}
