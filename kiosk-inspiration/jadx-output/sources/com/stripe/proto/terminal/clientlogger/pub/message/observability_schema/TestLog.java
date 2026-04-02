package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TestLog;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: TestLog.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001f !Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015Ju\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\bH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$Builder;", "test_string", "", "test_boolean", "", "test_int_32", "", "test_int_64", "", "test_float", "", "test_double", "", "string_one_of", "int_one_of", "test_structured_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;ZIJFDLjava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;ZIJFDLjava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "TestStructuredType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TestLog extends Message<TestLog, Builder> {
    public static final ProtoAdapter<TestLog> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "intOneOf", oneofName = "test_one_of", schemaIndex = 7, tag = 8)
    public final Long int_one_of;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stringOneOf", oneofName = "test_one_of", schemaIndex = 6, tag = 7)
    public final String string_one_of;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "testBoolean", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean test_boolean;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", jsonName = "testDouble", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final double test_double;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", jsonName = "testFloat", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final float test_float;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "testInt32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int test_int_32;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "testInt64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long test_int_64;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "testString", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String test_string;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TestLog$TestStructuredType#ADAPTER", jsonName = "testStructuredType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 10)
    public final TestStructuredType test_structured_type;

    public TestLog() {
        this(null, false, 0, 0L, 0.0f, 0.0d, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ TestLog(String str, boolean z, int i, long j, float f, double d, String str2, Long l, TestStructuredType testStructuredType, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? 0L : j, (i2 & 16) != 0 ? 0.0f : f, (i2 & 32) != 0 ? 0.0d : d, (i2 & 64) != 0 ? null : str2, (i2 & 128) != 0 ? null : l, (i2 & 256) != 0 ? null : testStructuredType, (i2 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestLog(String test_string, boolean z, int i, long j, float f, double d, String str, Long l, TestStructuredType testStructuredType, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(test_string, "test_string");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.test_string = test_string;
        this.test_boolean = z;
        this.test_int_32 = i;
        this.test_int_64 = j;
        this.test_float = f;
        this.test_double = d;
        this.string_one_of = str;
        this.int_one_of = l;
        this.test_structured_type = testStructuredType;
        if (Internal.countNonNull(str, l) > 1) {
            throw new IllegalArgumentException("At most one of string_one_of, int_one_of may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.test_string = this.test_string;
        builder.test_boolean = this.test_boolean;
        builder.test_int_32 = this.test_int_32;
        builder.test_int_64 = this.test_int_64;
        builder.test_float = this.test_float;
        builder.test_double = this.test_double;
        builder.string_one_of = this.string_one_of;
        builder.int_one_of = this.int_one_of;
        builder.test_structured_type = this.test_structured_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TestLog)) {
            return false;
        }
        TestLog testLog = (TestLog) other;
        return Intrinsics.areEqual(unknownFields(), testLog.unknownFields()) && Intrinsics.areEqual(this.test_string, testLog.test_string) && this.test_boolean == testLog.test_boolean && this.test_int_32 == testLog.test_int_32 && this.test_int_64 == testLog.test_int_64 && this.test_float == testLog.test_float && this.test_double == testLog.test_double && Intrinsics.areEqual(this.string_one_of, testLog.string_one_of) && Intrinsics.areEqual(this.int_one_of, testLog.int_one_of) && Intrinsics.areEqual(this.test_structured_type, testLog.test_structured_type);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((unknownFields().hashCode() * 37) + this.test_string.hashCode()) * 37) + Boolean.hashCode(this.test_boolean)) * 37) + Integer.hashCode(this.test_int_32)) * 37) + Long.hashCode(this.test_int_64)) * 37) + Float.hashCode(this.test_float)) * 37) + Double.hashCode(this.test_double)) * 37;
        String str = this.string_one_of;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Long l = this.int_one_of;
        int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 37;
        TestStructuredType testStructuredType = this.test_structured_type;
        int iHashCode4 = iHashCode3 + (testStructuredType != null ? testStructuredType.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("test_string=" + Internal.sanitize(this.test_string));
        arrayList2.add("test_boolean=" + this.test_boolean);
        arrayList2.add("test_int_32=" + this.test_int_32);
        arrayList2.add("test_int_64=" + this.test_int_64);
        arrayList2.add("test_float=" + this.test_float);
        arrayList2.add("test_double=" + this.test_double);
        if (this.string_one_of != null) {
            arrayList2.add("string_one_of=" + Internal.sanitize(this.string_one_of));
        }
        if (this.int_one_of != null) {
            arrayList2.add("int_one_of=" + this.int_one_of);
        }
        if (this.test_structured_type != null) {
            arrayList2.add("test_structured_type=" + this.test_structured_type);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "TestLog{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TestLog copy$default(TestLog testLog, String str, boolean z, int i, long j, float f, double d, String str2, Long l, TestStructuredType testStructuredType, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = testLog.test_string;
        }
        if ((i2 & 2) != 0) {
            z = testLog.test_boolean;
        }
        if ((i2 & 4) != 0) {
            i = testLog.test_int_32;
        }
        if ((i2 & 8) != 0) {
            j = testLog.test_int_64;
        }
        if ((i2 & 16) != 0) {
            f = testLog.test_float;
        }
        if ((i2 & 32) != 0) {
            d = testLog.test_double;
        }
        if ((i2 & 64) != 0) {
            str2 = testLog.string_one_of;
        }
        if ((i2 & 128) != 0) {
            l = testLog.int_one_of;
        }
        if ((i2 & 256) != 0) {
            testStructuredType = testLog.test_structured_type;
        }
        if ((i2 & 512) != 0) {
            byteString = testLog.unknownFields();
        }
        float f2 = f;
        long j2 = j;
        int i3 = i;
        return testLog.copy(str, z, i3, j2, f2, d, str2, l, testStructuredType, byteString);
    }

    public final TestLog copy(String test_string, boolean test_boolean, int test_int_32, long test_int_64, float test_float, double test_double, String string_one_of, Long int_one_of, TestStructuredType test_structured_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(test_string, "test_string");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TestLog(test_string, test_boolean, test_int_32, test_int_64, test_float, test_double, string_one_of, int_one_of, test_structured_type, unknownFields);
    }

    /* JADX INFO: compiled from: TestLog.kt */
    @kotlin.Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\bJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "()V", "int_one_of", "", "Ljava/lang/Long;", "string_one_of", "", "test_boolean", "", "test_double", "", "test_float", "", "test_int_32", "", "test_int_64", "test_string", "test_structured_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TestLog, Builder> {
        public Long int_one_of;
        public String string_one_of;
        public boolean test_boolean;
        public double test_double;
        public float test_float;
        public int test_int_32;
        public long test_int_64;
        public String test_string = "";
        public TestStructuredType test_structured_type;

        public final Builder test_string(String test_string) {
            Intrinsics.checkNotNullParameter(test_string, "test_string");
            this.test_string = test_string;
            return this;
        }

        public final Builder test_boolean(boolean test_boolean) {
            this.test_boolean = test_boolean;
            return this;
        }

        public final Builder test_int_32(int test_int_32) {
            this.test_int_32 = test_int_32;
            return this;
        }

        public final Builder test_int_64(long test_int_64) {
            this.test_int_64 = test_int_64;
            return this;
        }

        public final Builder test_float(float test_float) {
            this.test_float = test_float;
            return this;
        }

        public final Builder test_double(double test_double) {
            this.test_double = test_double;
            return this;
        }

        public final Builder test_structured_type(TestStructuredType test_structured_type) {
            this.test_structured_type = test_structured_type;
            return this;
        }

        public final Builder string_one_of(String string_one_of) {
            this.string_one_of = string_one_of;
            this.int_one_of = null;
            return this;
        }

        public final Builder int_one_of(Long int_one_of) {
            this.int_one_of = int_one_of;
            this.string_one_of = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TestLog build() {
            return new TestLog(this.test_string, this.test_boolean, this.test_int_32, this.test_int_64, this.test_float, this.test_double, this.string_one_of, this.int_one_of, this.test_structured_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TestLog.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TestLog build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TestLog.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TestLog>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TestLog$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TestLog value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.test_string, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.test_string);
                }
                if (value.test_boolean) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.test_boolean));
                }
                if (value.test_int_32 != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.test_int_32));
                }
                if (value.test_int_64 != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.test_int_64));
                }
                if (!Float.valueOf(value.test_float).equals(Float.valueOf(0.0f))) {
                    size += ProtoAdapter.FLOAT.encodedSizeWithTag(5, Float.valueOf(value.test_float));
                }
                if (!Double.valueOf(value.test_double).equals(Double.valueOf(0.0d))) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(6, Double.valueOf(value.test_double));
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.encodedSizeWithTag(7, value.string_one_of) + ProtoAdapter.INT64.encodedSizeWithTag(8, value.int_one_of);
                return value.test_structured_type != null ? iEncodedSizeWithTag + TestLog.TestStructuredType.ADAPTER.encodedSizeWithTag(10, value.test_structured_type) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TestLog value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.test_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_string);
                }
                if (value.test_boolean) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.test_boolean));
                }
                if (value.test_int_32 != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.test_int_32));
                }
                if (value.test_int_64 != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.test_int_64));
                }
                if (!Float.valueOf(value.test_float).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 5, Float.valueOf(value.test_float));
                }
                if (!Double.valueOf(value.test_double).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 6, Double.valueOf(value.test_double));
                }
                if (value.test_structured_type != null) {
                    TestLog.TestStructuredType.ADAPTER.encodeWithTag(writer, 10, value.test_structured_type);
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.string_one_of);
                ProtoAdapter.INT64.encodeWithTag(writer, 8, value.int_one_of);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TestLog value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.INT64.encodeWithTag(writer, 8, value.int_one_of);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.string_one_of);
                if (value.test_structured_type != null) {
                    TestLog.TestStructuredType.ADAPTER.encodeWithTag(writer, 10, value.test_structured_type);
                }
                if (!Double.valueOf(value.test_double).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 6, Double.valueOf(value.test_double));
                }
                if (!Float.valueOf(value.test_float).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 5, Float.valueOf(value.test_float));
                }
                if (value.test_int_64 != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.test_int_64));
                }
                if (value.test_int_32 != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.test_int_32));
                }
                if (value.test_boolean) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.test_boolean));
                }
                if (Intrinsics.areEqual(value.test_string, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_string);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TestLog redact(TestLog value) {
                Intrinsics.checkNotNullParameter(value, "value");
                TestLog.TestStructuredType testStructuredType = value.test_structured_type;
                return TestLog.copy$default(value, null, false, 0, 0L, 0.0f, 0.0d, null, null, testStructuredType != null ? TestLog.TestStructuredType.ADAPTER.redact(testStructuredType) : null, ByteString.EMPTY, 255, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TestLog decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                double dDoubleValue = 0.0d;
                TestLog.TestStructuredType testStructuredTypeDecode = null;
                long jLongValue = 0;
                float fFloatValue = 0.0f;
                Long lDecode = null;
                boolean zBooleanValue = false;
                int iIntValue = 0;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 3:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 4:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 5:
                                fFloatValue = ProtoAdapter.FLOAT.decode(reader).floatValue();
                                break;
                            case 6:
                                dDoubleValue = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                                break;
                            case 7:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                lDecode = ProtoAdapter.INT64.decode(reader);
                                break;
                            case 9:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 10:
                                testStructuredTypeDecode = TestLog.TestStructuredType.ADAPTER.decode(reader);
                                break;
                        }
                    } else {
                        return new TestLog(strDecode, zBooleanValue, iIntValue, jLongValue, fFloatValue, dDoubleValue, strDecode2, lDecode, testStructuredTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: TestLog.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType$Builder;", "test_structured_string", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TestStructuredType extends Message<TestStructuredType, Builder> {
        public static final ProtoAdapter<TestStructuredType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "testStructuredString", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String test_structured_string;

        /* JADX WARN: Multi-variable type inference failed */
        public TestStructuredType() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ TestStructuredType(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TestStructuredType(String test_structured_string, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(test_structured_string, "test_structured_string");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.test_structured_string = test_structured_string;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.test_structured_string = this.test_structured_string;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TestStructuredType)) {
                return false;
            }
            TestStructuredType testStructuredType = (TestStructuredType) other;
            return Intrinsics.areEqual(unknownFields(), testStructuredType.unknownFields()) && Intrinsics.areEqual(this.test_structured_string, testStructuredType.test_structured_string);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.test_structured_string.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("test_structured_string=" + Internal.sanitize(this.test_structured_string));
            return CollectionsKt.joinToString$default(arrayList, ", ", "TestStructuredType{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TestStructuredType copy$default(TestStructuredType testStructuredType, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = testStructuredType.test_structured_string;
            }
            if ((i & 2) != 0) {
                byteString = testStructuredType.unknownFields();
            }
            return testStructuredType.copy(str, byteString);
        }

        public final TestStructuredType copy(String test_structured_string, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(test_structured_string, "test_structured_string");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TestStructuredType(test_structured_string, unknownFields);
        }

        /* JADX INFO: compiled from: TestLog.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;", "()V", "test_structured_string", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TestStructuredType, Builder> {
            public String test_structured_string = "";

            public final Builder test_structured_string(String test_structured_string) {
                Intrinsics.checkNotNullParameter(test_structured_string, "test_structured_string");
                this.test_structured_string = test_structured_string;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TestStructuredType build() {
                return new TestStructuredType(this.test_structured_string, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: TestLog.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog$TestStructuredType$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TestStructuredType build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TestStructuredType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TestStructuredType>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TestLog$TestStructuredType$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(TestLog.TestStructuredType value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.test_structured_string, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.test_structured_string) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, TestLog.TestStructuredType value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.test_structured_string, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_structured_string);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, TestLog.TestStructuredType value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.test_structured_string, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.test_structured_string);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public TestLog.TestStructuredType redact(TestLog.TestStructuredType value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return TestLog.TestStructuredType.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public TestLog.TestStructuredType decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TestLog.TestStructuredType(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
