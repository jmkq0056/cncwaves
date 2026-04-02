package com.stripe.proto.model.test;

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
import com.stripe.proto.model.test.WireSerializeTest;
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

/* JADX INFO: compiled from: WireSerializeTest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001f !B\u007f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0085\u0001\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/model/test/WireSerializeTest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/test/WireSerializeTest$Builder;", "test_string", "", "test_string_value", "test_int", "", "test_int_value", "test_long", "", "test_long_value", "test_enum", "Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;", "test_one_of_string", "test_one_of_int", "test_one_of_enum", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JLjava/lang/Long;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Ljava/lang/String;Ljava/lang/Integer;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Lokio/ByteString;)V", "Ljava/lang/Integer;", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JLjava/lang/Long;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Ljava/lang/String;Ljava/lang/Integer;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Lokio/ByteString;)Lcom/stripe/proto/model/test/WireSerializeTest;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "EnumTest", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WireSerializeTest extends Message<WireSerializeTest, Builder> {
    public static final ProtoAdapter<WireSerializeTest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.test.WireSerializeTest$EnumTest#ADAPTER", jsonName = "testEnum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final EnumTest test_enum;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "testInt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int test_int;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "testIntValue", schemaIndex = 3, tag = 4)
    public final Integer test_int_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "testLong", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long test_long;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "testLongValue", schemaIndex = 5, tag = 6)
    public final Long test_long_value;

    @WireField(adapter = "com.stripe.proto.model.test.WireSerializeTest$EnumTest#ADAPTER", jsonName = "testOneOfEnum", oneofName = "one_of_test", schemaIndex = 9, tag = 10)
    public final EnumTest test_one_of_enum;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "testOneOfInt", oneofName = "one_of_test", schemaIndex = 8, tag = 9)
    public final Integer test_one_of_int;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "testOneOfString", oneofName = "one_of_test", schemaIndex = 7, tag = 8)
    public final String test_one_of_string;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "testString", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String test_string;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "testStringValue", schemaIndex = 1, tag = 2)
    public final String test_string_value;

    public WireSerializeTest() {
        this(null, null, 0, null, 0L, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ WireSerializeTest(String str, String str2, int i, Integer num, long j, Long l, EnumTest enumTest, String str3, Integer num2, EnumTest enumTest2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? 0L : j, (i2 & 32) != 0 ? null : l, (i2 & 64) != 0 ? EnumTest.DEFAULT : enumTest, (i2 & 128) != 0 ? null : str3, (i2 & 256) != 0 ? null : num2, (i2 & 512) != 0 ? null : enumTest2, (i2 & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WireSerializeTest(String test_string, String str, int i, Integer num, long j, Long l, EnumTest test_enum, String str2, Integer num2, EnumTest enumTest, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(test_string, "test_string");
        Intrinsics.checkNotNullParameter(test_enum, "test_enum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.test_string = test_string;
        this.test_string_value = str;
        this.test_int = i;
        this.test_int_value = num;
        this.test_long = j;
        this.test_long_value = l;
        this.test_enum = test_enum;
        this.test_one_of_string = str2;
        this.test_one_of_int = num2;
        this.test_one_of_enum = enumTest;
        if (Internal.countNonNull(str2, num2, enumTest) > 1) {
            throw new IllegalArgumentException("At most one of test_one_of_string, test_one_of_int, test_one_of_enum may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.test_string = this.test_string;
        builder.test_string_value = this.test_string_value;
        builder.test_int = this.test_int;
        builder.test_int_value = this.test_int_value;
        builder.test_long = this.test_long;
        builder.test_long_value = this.test_long_value;
        builder.test_enum = this.test_enum;
        builder.test_one_of_string = this.test_one_of_string;
        builder.test_one_of_int = this.test_one_of_int;
        builder.test_one_of_enum = this.test_one_of_enum;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WireSerializeTest)) {
            return false;
        }
        WireSerializeTest wireSerializeTest = (WireSerializeTest) other;
        return Intrinsics.areEqual(unknownFields(), wireSerializeTest.unknownFields()) && Intrinsics.areEqual(this.test_string, wireSerializeTest.test_string) && Intrinsics.areEqual(this.test_string_value, wireSerializeTest.test_string_value) && this.test_int == wireSerializeTest.test_int && Intrinsics.areEqual(this.test_int_value, wireSerializeTest.test_int_value) && this.test_long == wireSerializeTest.test_long && Intrinsics.areEqual(this.test_long_value, wireSerializeTest.test_long_value) && this.test_enum == wireSerializeTest.test_enum && Intrinsics.areEqual(this.test_one_of_string, wireSerializeTest.test_one_of_string) && Intrinsics.areEqual(this.test_one_of_int, wireSerializeTest.test_one_of_int) && this.test_one_of_enum == wireSerializeTest.test_one_of_enum;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.test_string.hashCode()) * 37;
        String str = this.test_string_value;
        int iHashCode2 = (((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + Integer.hashCode(this.test_int)) * 37;
        Integer num = this.test_int_value;
        int iHashCode3 = (((iHashCode2 + (num != null ? num.hashCode() : 0)) * 37) + Long.hashCode(this.test_long)) * 37;
        Long l = this.test_long_value;
        int iHashCode4 = (((iHashCode3 + (l != null ? l.hashCode() : 0)) * 37) + this.test_enum.hashCode()) * 37;
        String str2 = this.test_one_of_string;
        int iHashCode5 = (iHashCode4 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num2 = this.test_one_of_int;
        int iHashCode6 = (iHashCode5 + (num2 != null ? num2.hashCode() : 0)) * 37;
        EnumTest enumTest = this.test_one_of_enum;
        int iHashCode7 = iHashCode6 + (enumTest != null ? enumTest.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("test_string=" + Internal.sanitize(this.test_string));
        if (this.test_string_value != null) {
            arrayList2.add("test_string_value=" + this.test_string_value);
        }
        arrayList2.add("test_int=" + this.test_int);
        if (this.test_int_value != null) {
            arrayList2.add("test_int_value=" + this.test_int_value);
        }
        arrayList2.add("test_long=" + this.test_long);
        if (this.test_long_value != null) {
            arrayList2.add("test_long_value=" + this.test_long_value);
        }
        arrayList2.add("test_enum=" + this.test_enum);
        if (this.test_one_of_string != null) {
            arrayList2.add("test_one_of_string=" + Internal.sanitize(this.test_one_of_string));
        }
        if (this.test_one_of_int != null) {
            arrayList2.add("test_one_of_int=" + this.test_one_of_int);
        }
        if (this.test_one_of_enum != null) {
            arrayList2.add("test_one_of_enum=" + this.test_one_of_enum);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "WireSerializeTest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WireSerializeTest copy$default(WireSerializeTest wireSerializeTest, String str, String str2, int i, Integer num, long j, Long l, EnumTest enumTest, String str3, Integer num2, EnumTest enumTest2, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = wireSerializeTest.test_string;
        }
        if ((i2 & 2) != 0) {
            str2 = wireSerializeTest.test_string_value;
        }
        if ((i2 & 4) != 0) {
            i = wireSerializeTest.test_int;
        }
        if ((i2 & 8) != 0) {
            num = wireSerializeTest.test_int_value;
        }
        if ((i2 & 16) != 0) {
            j = wireSerializeTest.test_long;
        }
        if ((i2 & 32) != 0) {
            l = wireSerializeTest.test_long_value;
        }
        if ((i2 & 64) != 0) {
            enumTest = wireSerializeTest.test_enum;
        }
        if ((i2 & 128) != 0) {
            str3 = wireSerializeTest.test_one_of_string;
        }
        if ((i2 & 256) != 0) {
            num2 = wireSerializeTest.test_one_of_int;
        }
        if ((i2 & 512) != 0) {
            enumTest2 = wireSerializeTest.test_one_of_enum;
        }
        if ((i2 & 1024) != 0) {
            byteString = wireSerializeTest.unknownFields();
        }
        EnumTest enumTest3 = enumTest2;
        ByteString byteString2 = byteString;
        long j2 = j;
        int i3 = i;
        Integer num3 = num;
        return wireSerializeTest.copy(str, str2, i3, num3, j2, l, enumTest, str3, num2, enumTest3, byteString2);
    }

    public final WireSerializeTest copy(String test_string, String test_string_value, int test_int, Integer test_int_value, long test_long, Long test_long_value, EnumTest test_enum, String test_one_of_string, Integer test_one_of_int, EnumTest test_one_of_enum, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(test_string, "test_string");
        Intrinsics.checkNotNullParameter(test_enum, "test_enum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WireSerializeTest(test_string, test_string_value, test_int, test_int_value, test_long, test_long_value, test_enum, test_one_of_string, test_one_of_int, test_one_of_enum, unknownFields);
    }

    /* JADX INFO: compiled from: WireSerializeTest.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0015J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/test/WireSerializeTest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/test/WireSerializeTest;", "()V", "test_enum", "Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;", "test_int", "", "test_int_value", "Ljava/lang/Integer;", "test_long", "", "test_long_value", "Ljava/lang/Long;", "test_one_of_enum", "test_one_of_int", "test_one_of_string", "", "test_string", "test_string_value", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;", "(Ljava/lang/Long;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WireSerializeTest, Builder> {
        public int test_int;
        public Integer test_int_value;
        public long test_long;
        public Long test_long_value;
        public EnumTest test_one_of_enum;
        public Integer test_one_of_int;
        public String test_one_of_string;
        public String test_string_value;
        public String test_string = "";
        public EnumTest test_enum = EnumTest.DEFAULT;

        public final Builder test_string(String test_string) {
            Intrinsics.checkNotNullParameter(test_string, "test_string");
            this.test_string = test_string;
            return this;
        }

        public final Builder test_string_value(String test_string_value) {
            this.test_string_value = test_string_value;
            return this;
        }

        public final Builder test_int(int test_int) {
            this.test_int = test_int;
            return this;
        }

        public final Builder test_int_value(Integer test_int_value) {
            this.test_int_value = test_int_value;
            return this;
        }

        public final Builder test_long(long test_long) {
            this.test_long = test_long;
            return this;
        }

        public final Builder test_long_value(Long test_long_value) {
            this.test_long_value = test_long_value;
            return this;
        }

        public final Builder test_enum(EnumTest test_enum) {
            Intrinsics.checkNotNullParameter(test_enum, "test_enum");
            this.test_enum = test_enum;
            return this;
        }

        public final Builder test_one_of_string(String test_one_of_string) {
            this.test_one_of_string = test_one_of_string;
            this.test_one_of_int = null;
            this.test_one_of_enum = null;
            return this;
        }

        public final Builder test_one_of_int(Integer test_one_of_int) {
            this.test_one_of_int = test_one_of_int;
            this.test_one_of_string = null;
            this.test_one_of_enum = null;
            return this;
        }

        public final Builder test_one_of_enum(EnumTest test_one_of_enum) {
            this.test_one_of_enum = test_one_of_enum;
            this.test_one_of_string = null;
            this.test_one_of_int = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WireSerializeTest build() {
            return new WireSerializeTest(this.test_string, this.test_string_value, this.test_int, this.test_int_value, this.test_long, this.test_long_value, this.test_enum, this.test_one_of_string, this.test_one_of_int, this.test_one_of_enum, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WireSerializeTest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/test/WireSerializeTest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/WireSerializeTest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/test/WireSerializeTest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WireSerializeTest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WireSerializeTest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WireSerializeTest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.test.WireSerializeTest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WireSerializeTest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.test_string, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.test_string);
                }
                if (value.test_string_value != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.test_string_value);
                }
                if (value.test_int != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.test_int));
                }
                if (value.test_int_value != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(4, value.test_int_value);
                }
                if (value.test_long != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.test_long));
                }
                if (value.test_long_value != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.test_long_value);
                }
                if (value.test_enum != WireSerializeTest.EnumTest.DEFAULT) {
                    size += WireSerializeTest.EnumTest.ADAPTER.encodedSizeWithTag(7, value.test_enum);
                }
                return size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.test_one_of_string) + ProtoAdapter.INT32.encodedSizeWithTag(9, value.test_one_of_int) + WireSerializeTest.EnumTest.ADAPTER.encodedSizeWithTag(10, value.test_one_of_enum);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WireSerializeTest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.test_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_string);
                }
                if (value.test_string_value != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.test_string_value);
                }
                if (value.test_int != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.test_int));
                }
                if (value.test_int_value != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 4, value.test_int_value);
                }
                if (value.test_long != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.test_long));
                }
                if (value.test_long_value != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.test_long_value);
                }
                if (value.test_enum != WireSerializeTest.EnumTest.DEFAULT) {
                    WireSerializeTest.EnumTest.ADAPTER.encodeWithTag(writer, 7, value.test_enum);
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.test_one_of_string);
                ProtoAdapter.INT32.encodeWithTag(writer, 9, value.test_one_of_int);
                WireSerializeTest.EnumTest.ADAPTER.encodeWithTag(writer, 10, value.test_one_of_enum);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WireSerializeTest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                WireSerializeTest.EnumTest.ADAPTER.encodeWithTag(writer, 10, value.test_one_of_enum);
                ProtoAdapter.INT32.encodeWithTag(writer, 9, value.test_one_of_int);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.test_one_of_string);
                if (value.test_enum != WireSerializeTest.EnumTest.DEFAULT) {
                    WireSerializeTest.EnumTest.ADAPTER.encodeWithTag(writer, 7, value.test_enum);
                }
                if (value.test_long_value != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.test_long_value);
                }
                if (value.test_long != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.test_long));
                }
                if (value.test_int_value != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 4, value.test_int_value);
                }
                if (value.test_int != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.test_int));
                }
                if (value.test_string_value != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.test_string_value);
                }
                if (Intrinsics.areEqual(value.test_string, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_string);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WireSerializeTest decode(ProtoReader reader) throws IOException {
                WireSerializeTest.EnumTest enumTest;
                String str;
                String str2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                WireSerializeTest.EnumTest enumTest2 = WireSerializeTest.EnumTest.DEFAULT;
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Integer numDecode = null;
                WireSerializeTest.EnumTest enumTestDecode = null;
                int iIntValue = 0;
                long jLongValue = 0;
                String strDecode2 = "";
                String strDecode3 = null;
                Integer numDecode2 = null;
                Long lDecode = null;
                WireSerializeTest.EnumTest enumTestDecode2 = enumTest2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 4:
                                numDecode2 = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 5:
                                enumTest = enumTestDecode2;
                                str = strDecode2;
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                enumTestDecode2 = enumTest;
                                strDecode2 = str;
                                break;
                            case 6:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 7:
                                enumTest = enumTestDecode2;
                                str = strDecode2;
                                try {
                                    enumTestDecode2 = WireSerializeTest.EnumTest.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str2 = strDecode3;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode3 = str2;
                                    enumTestDecode2 = enumTest;
                                }
                                strDecode2 = str;
                                break;
                            case 8:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                numDecode = ProtoAdapter.INT32.decode(reader);
                                break;
                            case 10:
                                try {
                                    enumTestDecode = WireSerializeTest.EnumTest.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    enumTest = enumTestDecode2;
                                    str = strDecode2;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    str2 = strDecode3;
                                    strDecode3 = str2;
                                    enumTestDecode2 = enumTest;
                                    strDecode2 = str;
                                }
                                break;
                            default:
                                enumTest = enumTestDecode2;
                                str = strDecode2;
                                str2 = strDecode3;
                                reader.readUnknownField(iNextTag);
                                strDecode3 = str2;
                                enumTestDecode2 = enumTest;
                                strDecode2 = str;
                                break;
                        }
                    } else {
                        return new WireSerializeTest(strDecode2, strDecode3, iIntValue, numDecode2, jLongValue, lDecode, enumTestDecode2, strDecode, numDecode, enumTestDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WireSerializeTest redact(WireSerializeTest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.test_string_value;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Integer num = value.test_int_value;
                Integer numRedact = num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null;
                Long l = value.test_long_value;
                return WireSerializeTest.copy$default(value, null, strRedact, 0, numRedact, 0L, l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, null, null, null, null, ByteString.EMPTY, 981, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: WireSerializeTest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEFAULT", "NOT_DEFAULT", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EnumTest implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ EnumTest[] $VALUES;
        public static final ProtoAdapter<EnumTest> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final EnumTest DEFAULT;
        public static final EnumTest NOT_DEFAULT;
        private final int value;

        private static final /* synthetic */ EnumTest[] $values() {
            return new EnumTest[]{DEFAULT, NOT_DEFAULT};
        }

        @JvmStatic
        public static final EnumTest fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<EnumTest> getEntries() {
            return $ENTRIES;
        }

        public static EnumTest valueOf(String str) {
            return (EnumTest) Enum.valueOf(EnumTest.class, str);
        }

        public static EnumTest[] values() {
            return (EnumTest[]) $VALUES.clone();
        }

        private EnumTest(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final EnumTest enumTest = new EnumTest("DEFAULT", 0, 0);
            DEFAULT = enumTest;
            NOT_DEFAULT = new EnumTest("NOT_DEFAULT", 1, 1);
            EnumTest[] enumTestArr$values = $values();
            $VALUES = enumTestArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(enumTestArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnumTest.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<EnumTest>(orCreateKotlinClass, syntax, enumTest) { // from class: com.stripe.proto.model.test.WireSerializeTest$EnumTest$Companion$ADAPTER$1
                {
                    WireSerializeTest.EnumTest enumTest2 = enumTest;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public WireSerializeTest.EnumTest fromValue(int value) {
                    return WireSerializeTest.EnumTest.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: WireSerializeTest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final EnumTest fromValue(int value) {
                if (value == 0) {
                    return EnumTest.DEFAULT;
                }
                if (value != 1) {
                    return null;
                }
                return EnumTest.NOT_DEFAULT;
            }
        }
    }
}
