package com.stripe.ext;

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

/* JADX INFO: compiled from: MongoModelConfiguration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB\u0093\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u0099\u0001\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/ext/MongoModelConfiguration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoModelConfiguration$Builder;", "ruby_type", "", "collection_name", "table_name", "owning_project", "presto_enabled", "", "redshift_enabled", "schema_name", "enable_snapshot_validation", "enable_model_version", "data_owner", "dataset_usage", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/ext/MongoModelConfiguration;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MongoModelConfiguration extends Message<MongoModelConfiguration, Builder> {
    public static final ProtoAdapter<MongoModelConfiguration> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
    public final String collection_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 9, tag = 10)
    public final String data_owner;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 10, tag = 11)
    public final String dataset_usage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 8, tag = 9)
    public final Boolean enable_model_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 7, tag = 8)
    public final Boolean enable_snapshot_validation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final String owning_project;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 4, tag = 5)
    public final Boolean presto_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 5, tag = 6)
    public final Boolean redshift_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final String ruby_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 6, tag = 7)
    public final String schema_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final String table_name;

    public MongoModelConfiguration() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ MongoModelConfiguration(String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, String str5, Boolean bool3, Boolean bool4, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? null : bool2, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : bool3, (i & 256) != 0 ? null : bool4, (i & 512) != 0 ? null : str6, (i & 1024) != 0 ? null : str7, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MongoModelConfiguration(String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, String str5, Boolean bool3, Boolean bool4, String str6, String str7, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ruby_type = str;
        this.collection_name = str2;
        this.table_name = str3;
        this.owning_project = str4;
        this.presto_enabled = bool;
        this.redshift_enabled = bool2;
        this.schema_name = str5;
        this.enable_snapshot_validation = bool3;
        this.enable_model_version = bool4;
        this.data_owner = str6;
        this.dataset_usage = str7;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ruby_type = this.ruby_type;
        builder.collection_name = this.collection_name;
        builder.table_name = this.table_name;
        builder.owning_project = this.owning_project;
        builder.presto_enabled = this.presto_enabled;
        builder.redshift_enabled = this.redshift_enabled;
        builder.schema_name = this.schema_name;
        builder.enable_snapshot_validation = this.enable_snapshot_validation;
        builder.enable_model_version = this.enable_model_version;
        builder.data_owner = this.data_owner;
        builder.dataset_usage = this.dataset_usage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MongoModelConfiguration)) {
            return false;
        }
        MongoModelConfiguration mongoModelConfiguration = (MongoModelConfiguration) other;
        return Intrinsics.areEqual(unknownFields(), mongoModelConfiguration.unknownFields()) && Intrinsics.areEqual(this.ruby_type, mongoModelConfiguration.ruby_type) && Intrinsics.areEqual(this.collection_name, mongoModelConfiguration.collection_name) && Intrinsics.areEqual(this.table_name, mongoModelConfiguration.table_name) && Intrinsics.areEqual(this.owning_project, mongoModelConfiguration.owning_project) && Intrinsics.areEqual(this.presto_enabled, mongoModelConfiguration.presto_enabled) && Intrinsics.areEqual(this.redshift_enabled, mongoModelConfiguration.redshift_enabled) && Intrinsics.areEqual(this.schema_name, mongoModelConfiguration.schema_name) && Intrinsics.areEqual(this.enable_snapshot_validation, mongoModelConfiguration.enable_snapshot_validation) && Intrinsics.areEqual(this.enable_model_version, mongoModelConfiguration.enable_model_version) && Intrinsics.areEqual(this.data_owner, mongoModelConfiguration.data_owner) && Intrinsics.areEqual(this.dataset_usage, mongoModelConfiguration.dataset_usage);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.ruby_type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.collection_name;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.table_name;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.owning_project;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Boolean bool = this.presto_enabled;
        int iHashCode6 = (iHashCode5 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.redshift_enabled;
        int iHashCode7 = (iHashCode6 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        String str5 = this.schema_name;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        Boolean bool3 = this.enable_snapshot_validation;
        int iHashCode9 = (iHashCode8 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.enable_model_version;
        int iHashCode10 = (iHashCode9 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        String str6 = this.data_owner;
        int iHashCode11 = (iHashCode10 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.dataset_usage;
        int iHashCode12 = iHashCode11 + (str7 != null ? str7.hashCode() : 0);
        this.hashCode = iHashCode12;
        return iHashCode12;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.ruby_type != null) {
            arrayList.add("ruby_type=" + Internal.sanitize(this.ruby_type));
        }
        if (this.collection_name != null) {
            arrayList.add("collection_name=" + Internal.sanitize(this.collection_name));
        }
        if (this.table_name != null) {
            arrayList.add("table_name=" + Internal.sanitize(this.table_name));
        }
        if (this.owning_project != null) {
            arrayList.add("owning_project=" + Internal.sanitize(this.owning_project));
        }
        if (this.presto_enabled != null) {
            arrayList.add("presto_enabled=" + this.presto_enabled);
        }
        if (this.redshift_enabled != null) {
            arrayList.add("redshift_enabled=" + this.redshift_enabled);
        }
        if (this.schema_name != null) {
            arrayList.add("schema_name=" + Internal.sanitize(this.schema_name));
        }
        if (this.enable_snapshot_validation != null) {
            arrayList.add("enable_snapshot_validation=" + this.enable_snapshot_validation);
        }
        if (this.enable_model_version != null) {
            arrayList.add("enable_model_version=" + this.enable_model_version);
        }
        if (this.data_owner != null) {
            arrayList.add("data_owner=" + Internal.sanitize(this.data_owner));
        }
        if (this.dataset_usage != null) {
            arrayList.add("dataset_usage=" + Internal.sanitize(this.dataset_usage));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "MongoModelConfiguration{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ MongoModelConfiguration copy$default(MongoModelConfiguration mongoModelConfiguration, String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, String str5, Boolean bool3, Boolean bool4, String str6, String str7, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mongoModelConfiguration.ruby_type;
        }
        if ((i & 2) != 0) {
            str2 = mongoModelConfiguration.collection_name;
        }
        if ((i & 4) != 0) {
            str3 = mongoModelConfiguration.table_name;
        }
        if ((i & 8) != 0) {
            str4 = mongoModelConfiguration.owning_project;
        }
        if ((i & 16) != 0) {
            bool = mongoModelConfiguration.presto_enabled;
        }
        if ((i & 32) != 0) {
            bool2 = mongoModelConfiguration.redshift_enabled;
        }
        if ((i & 64) != 0) {
            str5 = mongoModelConfiguration.schema_name;
        }
        if ((i & 128) != 0) {
            bool3 = mongoModelConfiguration.enable_snapshot_validation;
        }
        if ((i & 256) != 0) {
            bool4 = mongoModelConfiguration.enable_model_version;
        }
        if ((i & 512) != 0) {
            str6 = mongoModelConfiguration.data_owner;
        }
        if ((i & 1024) != 0) {
            str7 = mongoModelConfiguration.dataset_usage;
        }
        if ((i & 2048) != 0) {
            byteString = mongoModelConfiguration.unknownFields();
        }
        String str8 = str7;
        ByteString byteString2 = byteString;
        Boolean bool5 = bool4;
        String str9 = str6;
        String str10 = str5;
        Boolean bool6 = bool3;
        Boolean bool7 = bool;
        Boolean bool8 = bool2;
        return mongoModelConfiguration.copy(str, str2, str3, str4, bool7, bool8, str10, bool6, bool5, str9, str8, byteString2);
    }

    public final MongoModelConfiguration copy(String ruby_type, String collection_name, String table_name, String owning_project, Boolean presto_enabled, Boolean redshift_enabled, String schema_name, Boolean enable_snapshot_validation, Boolean enable_model_version, String data_owner, String dataset_usage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new MongoModelConfiguration(ruby_type, collection_name, table_name, owning_project, presto_enabled, redshift_enabled, schema_name, enable_snapshot_validation, enable_model_version, data_owner, dataset_usage, unknownFields);
    }

    /* JADX INFO: compiled from: MongoModelConfiguration.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0013J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0013J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0013J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/ext/MongoModelConfiguration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoModelConfiguration;", "()V", "collection_name", "", "data_owner", "dataset_usage", "enable_model_version", "", "Ljava/lang/Boolean;", "enable_snapshot_validation", "owning_project", "presto_enabled", "redshift_enabled", "ruby_type", "schema_name", "table_name", "build", "(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<MongoModelConfiguration, Builder> {
        public String collection_name;
        public String data_owner;
        public String dataset_usage;
        public Boolean enable_model_version;
        public Boolean enable_snapshot_validation;
        public String owning_project;
        public Boolean presto_enabled;
        public Boolean redshift_enabled;
        public String ruby_type;
        public String schema_name;
        public String table_name;

        public final Builder ruby_type(String ruby_type) {
            this.ruby_type = ruby_type;
            return this;
        }

        public final Builder collection_name(String collection_name) {
            this.collection_name = collection_name;
            return this;
        }

        public final Builder table_name(String table_name) {
            this.table_name = table_name;
            return this;
        }

        public final Builder owning_project(String owning_project) {
            this.owning_project = owning_project;
            return this;
        }

        public final Builder presto_enabled(Boolean presto_enabled) {
            this.presto_enabled = presto_enabled;
            return this;
        }

        public final Builder redshift_enabled(Boolean redshift_enabled) {
            this.redshift_enabled = redshift_enabled;
            return this;
        }

        public final Builder schema_name(String schema_name) {
            this.schema_name = schema_name;
            return this;
        }

        public final Builder enable_snapshot_validation(Boolean enable_snapshot_validation) {
            this.enable_snapshot_validation = enable_snapshot_validation;
            return this;
        }

        public final Builder enable_model_version(Boolean enable_model_version) {
            this.enable_model_version = enable_model_version;
            return this;
        }

        public final Builder data_owner(String data_owner) {
            this.data_owner = data_owner;
            return this;
        }

        public final Builder dataset_usage(String dataset_usage) {
            this.dataset_usage = dataset_usage;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public MongoModelConfiguration build() {
            return new MongoModelConfiguration(this.ruby_type, this.collection_name, this.table_name, this.owning_project, this.presto_enabled, this.redshift_enabled, this.schema_name, this.enable_snapshot_validation, this.enable_model_version, this.data_owner, this.dataset_usage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: MongoModelConfiguration.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoModelConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoModelConfiguration;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoModelConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ MongoModelConfiguration build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MongoModelConfiguration.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new ProtoAdapter<MongoModelConfiguration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoModelConfiguration$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(MongoModelConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.ruby_type) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.collection_name) + ProtoAdapter.STRING.encodedSizeWithTag(3, value.table_name) + ProtoAdapter.STRING.encodedSizeWithTag(4, value.owning_project) + ProtoAdapter.BOOL.encodedSizeWithTag(5, value.presto_enabled) + ProtoAdapter.BOOL.encodedSizeWithTag(6, value.redshift_enabled) + ProtoAdapter.STRING.encodedSizeWithTag(7, value.schema_name) + ProtoAdapter.BOOL.encodedSizeWithTag(8, value.enable_snapshot_validation) + ProtoAdapter.BOOL.encodedSizeWithTag(9, value.enable_model_version) + ProtoAdapter.STRING.encodedSizeWithTag(10, value.data_owner) + ProtoAdapter.STRING.encodedSizeWithTag(11, value.dataset_usage);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, MongoModelConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ruby_type);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.collection_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.table_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.owning_project);
                ProtoAdapter.BOOL.encodeWithTag(writer, 5, value.presto_enabled);
                ProtoAdapter.BOOL.encodeWithTag(writer, 6, value.redshift_enabled);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.schema_name);
                ProtoAdapter.BOOL.encodeWithTag(writer, 8, value.enable_snapshot_validation);
                ProtoAdapter.BOOL.encodeWithTag(writer, 9, value.enable_model_version);
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.data_owner);
                ProtoAdapter.STRING.encodeWithTag(writer, 11, value.dataset_usage);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, MongoModelConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 11, value.dataset_usage);
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.data_owner);
                ProtoAdapter.BOOL.encodeWithTag(writer, 9, value.enable_model_version);
                ProtoAdapter.BOOL.encodeWithTag(writer, 8, value.enable_snapshot_validation);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.schema_name);
                ProtoAdapter.BOOL.encodeWithTag(writer, 6, value.redshift_enabled);
                ProtoAdapter.BOOL.encodeWithTag(writer, 5, value.presto_enabled);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.owning_project);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.table_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.collection_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ruby_type);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public MongoModelConfiguration redact(MongoModelConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return MongoModelConfiguration.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 2047, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public MongoModelConfiguration decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                String strDecode5 = null;
                Boolean boolDecode3 = null;
                Boolean boolDecode4 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                boolDecode = ProtoAdapter.BOOL.decode(reader);
                                break;
                            case 6:
                                boolDecode2 = ProtoAdapter.BOOL.decode(reader);
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                boolDecode3 = ProtoAdapter.BOOL.decode(reader);
                                break;
                            case 9:
                                boolDecode4 = ProtoAdapter.BOOL.decode(reader);
                                break;
                            case 10:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new MongoModelConfiguration(strDecode, strDecode2, strDecode3, strDecode4, boolDecode, boolDecode2, strDecode5, boolDecode3, boolDecode4, strDecode6, strDecode7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
