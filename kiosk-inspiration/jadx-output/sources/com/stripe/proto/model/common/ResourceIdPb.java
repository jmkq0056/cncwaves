package com.stripe.proto.model.common;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.ResourceIdPb;
import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.Ddeml;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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
import org.apache.http.HttpStatus;

/* JADX INFO: compiled from: ResourceIdPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u001d\u001e\u001f !\"B_\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J`\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\bH\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0013¨\u0006#"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;", "region", "Lcom/stripe/proto/model/common/ResourceIdPb$Region;", "service_bundle", "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;", "bundle_name", "", "encoding", "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;", FirebaseAnalytics.Param.CONTENT_TYPE, "resource_name", "resource_path", "prefix", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "getService_bundle$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "ContentEncoding", "Region", "ServiceBundle", Ddeml.SZDDESYS_ITEM_STATUS, "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResourceIdPb extends Message<ResourceIdPb, Builder> {
    public static final ProtoAdapter<ResourceIdPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bundleName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 8)
    public final String bundle_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contentType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 4)
    public final String content_type;

    @WireField(adapter = "com.stripe.proto.model.common.ResourceIdPb$ContentEncoding#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final ContentEncoding encoding;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 7)
    public final String prefix;

    @WireField(adapter = "com.stripe.proto.model.common.ResourceIdPb$Region#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Region region;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "resourceName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final String resource_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "resourcePath", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 6)
    public final String resource_path;

    @WireField(adapter = "com.stripe.proto.model.common.ResourceIdPb$ServiceBundle#ADAPTER", jsonName = "serviceBundle", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ServiceBundle service_bundle;

    public ResourceIdPb() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    @Deprecated(message = "service_bundle is deprecated")
    public static /* synthetic */ void getService_bundle$annotations() {
    }

    public /* synthetic */ ResourceIdPb(Region region, ServiceBundle serviceBundle, String str, ContentEncoding contentEncoding, String str2, String str3, String str4, String str5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Region.REGION_INVALID : region, (i & 2) != 0 ? ServiceBundle.SERVICE_BUNDLE_INVALID : serviceBundle, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? ContentEncoding.CONTENT_ENCODING_INVALID : contentEncoding, (i & 16) != 0 ? "" : str2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? "" : str4, (i & 128) != 0 ? "" : str5, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceIdPb(Region region, ServiceBundle service_bundle, String bundle_name, ContentEncoding encoding, String content_type, String resource_name, String resource_path, String prefix, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(service_bundle, "service_bundle");
        Intrinsics.checkNotNullParameter(bundle_name, "bundle_name");
        Intrinsics.checkNotNullParameter(encoding, "encoding");
        Intrinsics.checkNotNullParameter(content_type, "content_type");
        Intrinsics.checkNotNullParameter(resource_name, "resource_name");
        Intrinsics.checkNotNullParameter(resource_path, "resource_path");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.region = region;
        this.service_bundle = service_bundle;
        this.bundle_name = bundle_name;
        this.encoding = encoding;
        this.content_type = content_type;
        this.resource_name = resource_name;
        this.resource_path = resource_path;
        this.prefix = prefix;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.region = this.region;
        builder.service_bundle = this.service_bundle;
        builder.bundle_name = this.bundle_name;
        builder.encoding = this.encoding;
        builder.content_type = this.content_type;
        builder.resource_name = this.resource_name;
        builder.resource_path = this.resource_path;
        builder.prefix = this.prefix;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ResourceIdPb)) {
            return false;
        }
        ResourceIdPb resourceIdPb = (ResourceIdPb) other;
        return Intrinsics.areEqual(unknownFields(), resourceIdPb.unknownFields()) && this.region == resourceIdPb.region && this.service_bundle == resourceIdPb.service_bundle && Intrinsics.areEqual(this.bundle_name, resourceIdPb.bundle_name) && this.encoding == resourceIdPb.encoding && Intrinsics.areEqual(this.content_type, resourceIdPb.content_type) && Intrinsics.areEqual(this.resource_name, resourceIdPb.resource_name) && Intrinsics.areEqual(this.resource_path, resourceIdPb.resource_path) && Intrinsics.areEqual(this.prefix, resourceIdPb.prefix);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((unknownFields().hashCode() * 37) + this.region.hashCode()) * 37) + this.service_bundle.hashCode()) * 37) + this.bundle_name.hashCode()) * 37) + this.encoding.hashCode()) * 37) + this.content_type.hashCode()) * 37) + this.resource_name.hashCode()) * 37) + this.resource_path.hashCode()) * 37) + this.prefix.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("region=" + this.region);
        arrayList2.add("service_bundle=" + this.service_bundle);
        arrayList2.add("bundle_name=" + Internal.sanitize(this.bundle_name));
        arrayList2.add("encoding=" + this.encoding);
        arrayList2.add("content_type=" + Internal.sanitize(this.content_type));
        arrayList2.add("resource_name=" + Internal.sanitize(this.resource_name));
        arrayList2.add("resource_path=" + Internal.sanitize(this.resource_path));
        arrayList2.add("prefix=" + Internal.sanitize(this.prefix));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ResourceIdPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ResourceIdPb copy$default(ResourceIdPb resourceIdPb, Region region, ServiceBundle serviceBundle, String str, ContentEncoding contentEncoding, String str2, String str3, String str4, String str5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            region = resourceIdPb.region;
        }
        if ((i & 2) != 0) {
            serviceBundle = resourceIdPb.service_bundle;
        }
        if ((i & 4) != 0) {
            str = resourceIdPb.bundle_name;
        }
        if ((i & 8) != 0) {
            contentEncoding = resourceIdPb.encoding;
        }
        if ((i & 16) != 0) {
            str2 = resourceIdPb.content_type;
        }
        if ((i & 32) != 0) {
            str3 = resourceIdPb.resource_name;
        }
        if ((i & 64) != 0) {
            str4 = resourceIdPb.resource_path;
        }
        if ((i & 128) != 0) {
            str5 = resourceIdPb.prefix;
        }
        if ((i & 256) != 0) {
            byteString = resourceIdPb.unknownFields();
        }
        String str6 = str5;
        ByteString byteString2 = byteString;
        String str7 = str3;
        String str8 = str4;
        String str9 = str2;
        String str10 = str;
        return resourceIdPb.copy(region, serviceBundle, str10, contentEncoding, str9, str7, str8, str6, byteString2);
    }

    public final ResourceIdPb copy(Region region, ServiceBundle service_bundle, String bundle_name, ContentEncoding encoding, String content_type, String resource_name, String resource_path, String prefix, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(service_bundle, "service_bundle");
        Intrinsics.checkNotNullParameter(bundle_name, "bundle_name");
        Intrinsics.checkNotNullParameter(encoding, "encoding");
        Intrinsics.checkNotNullParameter(content_type, "content_type");
        Intrinsics.checkNotNullParameter(resource_name, "resource_name");
        Intrinsics.checkNotNullParameter(resource_path, "resource_path");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ResourceIdPb(region, service_bundle, bundle_name, encoding, content_type, resource_name, resource_path, prefix, unknownFields);
    }

    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ResourceIdPb;", "()V", "bundle_name", "", FirebaseAnalytics.Param.CONTENT_TYPE, "encoding", "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;", "prefix", "region", "Lcom/stripe/proto/model/common/ResourceIdPb$Region;", "resource_name", "resource_path", "service_bundle", "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ResourceIdPb, Builder> {
        public Region region = Region.REGION_INVALID;
        public ServiceBundle service_bundle = ServiceBundle.SERVICE_BUNDLE_INVALID;
        public String bundle_name = "";
        public ContentEncoding encoding = ContentEncoding.CONTENT_ENCODING_INVALID;
        public String content_type = "";
        public String resource_name = "";
        public String resource_path = "";
        public String prefix = "";

        public final Builder region(Region region) {
            Intrinsics.checkNotNullParameter(region, "region");
            this.region = region;
            return this;
        }

        @Deprecated(message = "service_bundle is deprecated")
        public final Builder service_bundle(ServiceBundle service_bundle) {
            Intrinsics.checkNotNullParameter(service_bundle, "service_bundle");
            this.service_bundle = service_bundle;
            return this;
        }

        public final Builder bundle_name(String bundle_name) {
            Intrinsics.checkNotNullParameter(bundle_name, "bundle_name");
            this.bundle_name = bundle_name;
            return this;
        }

        public final Builder encoding(ContentEncoding encoding) {
            Intrinsics.checkNotNullParameter(encoding, "encoding");
            this.encoding = encoding;
            return this;
        }

        public final Builder content_type(String content_type) {
            Intrinsics.checkNotNullParameter(content_type, "content_type");
            this.content_type = content_type;
            return this;
        }

        public final Builder resource_name(String resource_name) {
            Intrinsics.checkNotNullParameter(resource_name, "resource_name");
            this.resource_name = resource_name;
            return this;
        }

        public final Builder resource_path(String resource_path) {
            Intrinsics.checkNotNullParameter(resource_path, "resource_path");
            this.resource_path = resource_path;
            return this;
        }

        public final Builder prefix(String prefix) {
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            this.prefix = prefix;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ResourceIdPb build() {
            return new ResourceIdPb(this.region, this.service_bundle, this.bundle_name, this.encoding, this.content_type, this.resource_name, this.resource_path, this.prefix, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ResourceIdPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ResourceIdPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ResourceIdPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ResourceIdPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ResourceIdPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ResourceIdPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.region != ResourceIdPb.Region.REGION_INVALID) {
                    size += ResourceIdPb.Region.ADAPTER.encodedSizeWithTag(1, value.region);
                }
                if (value.service_bundle != ResourceIdPb.ServiceBundle.SERVICE_BUNDLE_INVALID) {
                    size += ResourceIdPb.ServiceBundle.ADAPTER.encodedSizeWithTag(2, value.service_bundle);
                }
                if (!Intrinsics.areEqual(value.bundle_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.bundle_name);
                }
                if (value.encoding != ResourceIdPb.ContentEncoding.CONTENT_ENCODING_INVALID) {
                    size += ResourceIdPb.ContentEncoding.ADAPTER.encodedSizeWithTag(3, value.encoding);
                }
                if (!Intrinsics.areEqual(value.content_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.content_type);
                }
                if (!Intrinsics.areEqual(value.resource_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.resource_name);
                }
                if (!Intrinsics.areEqual(value.resource_path, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.resource_path);
                }
                return !Intrinsics.areEqual(value.prefix, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(7, value.prefix) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ResourceIdPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.region != ResourceIdPb.Region.REGION_INVALID) {
                    ResourceIdPb.Region.ADAPTER.encodeWithTag(writer, 1, value.region);
                }
                if (value.service_bundle != ResourceIdPb.ServiceBundle.SERVICE_BUNDLE_INVALID) {
                    ResourceIdPb.ServiceBundle.ADAPTER.encodeWithTag(writer, 2, value.service_bundle);
                }
                if (!Intrinsics.areEqual(value.bundle_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.bundle_name);
                }
                if (value.encoding != ResourceIdPb.ContentEncoding.CONTENT_ENCODING_INVALID) {
                    ResourceIdPb.ContentEncoding.ADAPTER.encodeWithTag(writer, 3, value.encoding);
                }
                if (!Intrinsics.areEqual(value.content_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.content_type);
                }
                if (!Intrinsics.areEqual(value.resource_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.resource_name);
                }
                if (!Intrinsics.areEqual(value.resource_path, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.resource_path);
                }
                if (!Intrinsics.areEqual(value.prefix, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.prefix);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ResourceIdPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.prefix, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.prefix);
                }
                if (!Intrinsics.areEqual(value.resource_path, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.resource_path);
                }
                if (!Intrinsics.areEqual(value.resource_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.resource_name);
                }
                if (!Intrinsics.areEqual(value.content_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.content_type);
                }
                if (value.encoding != ResourceIdPb.ContentEncoding.CONTENT_ENCODING_INVALID) {
                    ResourceIdPb.ContentEncoding.ADAPTER.encodeWithTag(writer, 3, value.encoding);
                }
                if (!Intrinsics.areEqual(value.bundle_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.bundle_name);
                }
                if (value.service_bundle != ResourceIdPb.ServiceBundle.SERVICE_BUNDLE_INVALID) {
                    ResourceIdPb.ServiceBundle.ADAPTER.encodeWithTag(writer, 2, value.service_bundle);
                }
                if (value.region != ResourceIdPb.Region.REGION_INVALID) {
                    ResourceIdPb.Region.ADAPTER.encodeWithTag(writer, 1, value.region);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.model.common.ResourceIdPb decode(com.squareup.wire.ProtoReader r23) throws java.io.IOException {
                /*
                    Method dump skipped, instruction units count: 206
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.common.ResourceIdPb$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.common.ResourceIdPb");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ResourceIdPb redact(ResourceIdPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ResourceIdPb.copy$default(value, null, null, null, null, null, null, null, null, ByteString.EMPTY, 255, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001c\b\u0086\u0081\u0002\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001e¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Region;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REGION_INVALID", "UNDEFINED_REGION", "AP_EAST_1", "AP_NORTHEAST_1", "AP_NORTHEAST_2", "AP_SOUTHEAST_1", "AP_SOUTHEAST_2", "AP_SOUTH_1", "CA_CENTRAL_1", "CN_NORTHWEST_1", "CN_NORTH_1", "EU_CENTRAL_1", "EU_NORTH_1", "EU_WEST_1", "EU_WEST_2", "EU_WEST_3", "SA_EAST_1", "US_EAST_1", "US_EAST_2", "US_GOV_EAST_1", "US_GOV_WEST_1", "US_WEST_1", "US_WEST_2", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Region implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Region[] $VALUES;
        public static final ProtoAdapter<Region> ADAPTER;
        public static final Region AP_EAST_1;
        public static final Region AP_NORTHEAST_1;
        public static final Region AP_NORTHEAST_2;
        public static final Region AP_SOUTHEAST_1;
        public static final Region AP_SOUTHEAST_2;
        public static final Region AP_SOUTH_1;
        public static final Region CA_CENTRAL_1;
        public static final Region CN_NORTHWEST_1;
        public static final Region CN_NORTH_1;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Region EU_CENTRAL_1;
        public static final Region EU_NORTH_1;
        public static final Region EU_WEST_1;
        public static final Region EU_WEST_2;
        public static final Region EU_WEST_3;
        public static final Region REGION_INVALID;
        public static final Region SA_EAST_1;
        public static final Region UNDEFINED_REGION;
        public static final Region US_EAST_1;
        public static final Region US_EAST_2;
        public static final Region US_GOV_EAST_1;
        public static final Region US_GOV_WEST_1;
        public static final Region US_WEST_1;
        public static final Region US_WEST_2;
        private final int value;

        private static final /* synthetic */ Region[] $values() {
            return new Region[]{REGION_INVALID, UNDEFINED_REGION, AP_EAST_1, AP_NORTHEAST_1, AP_NORTHEAST_2, AP_SOUTHEAST_1, AP_SOUTHEAST_2, AP_SOUTH_1, CA_CENTRAL_1, CN_NORTHWEST_1, CN_NORTH_1, EU_CENTRAL_1, EU_NORTH_1, EU_WEST_1, EU_WEST_2, EU_WEST_3, SA_EAST_1, US_EAST_1, US_EAST_2, US_GOV_EAST_1, US_GOV_WEST_1, US_WEST_1, US_WEST_2};
        }

        @JvmStatic
        public static final Region fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Region> getEntries() {
            return $ENTRIES;
        }

        public static Region valueOf(String str) {
            return (Region) Enum.valueOf(Region.class, str);
        }

        public static Region[] values() {
            return (Region[]) $VALUES.clone();
        }

        private Region(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Region region = new Region("REGION_INVALID", 0, 0);
            REGION_INVALID = region;
            UNDEFINED_REGION = new Region("UNDEFINED_REGION", 1, 22);
            AP_EAST_1 = new Region("AP_EAST_1", 2, 1);
            AP_NORTHEAST_1 = new Region("AP_NORTHEAST_1", 3, 2);
            AP_NORTHEAST_2 = new Region("AP_NORTHEAST_2", 4, 3);
            AP_SOUTHEAST_1 = new Region("AP_SOUTHEAST_1", 5, 4);
            AP_SOUTHEAST_2 = new Region("AP_SOUTHEAST_2", 6, 5);
            AP_SOUTH_1 = new Region("AP_SOUTH_1", 7, 6);
            CA_CENTRAL_1 = new Region("CA_CENTRAL_1", 8, 7);
            CN_NORTHWEST_1 = new Region("CN_NORTHWEST_1", 9, 8);
            CN_NORTH_1 = new Region("CN_NORTH_1", 10, 9);
            EU_CENTRAL_1 = new Region("EU_CENTRAL_1", 11, 10);
            EU_NORTH_1 = new Region("EU_NORTH_1", 12, 11);
            EU_WEST_1 = new Region("EU_WEST_1", 13, 12);
            EU_WEST_2 = new Region("EU_WEST_2", 14, 13);
            EU_WEST_3 = new Region("EU_WEST_3", 15, 14);
            SA_EAST_1 = new Region("SA_EAST_1", 16, 15);
            US_EAST_1 = new Region("US_EAST_1", 17, 16);
            US_EAST_2 = new Region("US_EAST_2", 18, 17);
            US_GOV_EAST_1 = new Region("US_GOV_EAST_1", 19, 18);
            US_GOV_WEST_1 = new Region("US_GOV_WEST_1", 20, 19);
            US_WEST_1 = new Region("US_WEST_1", 21, 20);
            US_WEST_2 = new Region("US_WEST_2", 22, 21);
            Region[] regionArr$values = $values();
            $VALUES = regionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(regionArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Region.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Region>(orCreateKotlinClass, syntax, region) { // from class: com.stripe.proto.model.common.ResourceIdPb$Region$Companion$ADAPTER$1
                {
                    ResourceIdPb.Region region2 = region;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ResourceIdPb.Region fromValue(int value) {
                    return ResourceIdPb.Region.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ResourceIdPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Region$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ResourceIdPb$Region;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Region fromValue(int value) {
                switch (value) {
                    case 0:
                        return Region.REGION_INVALID;
                    case 1:
                        return Region.AP_EAST_1;
                    case 2:
                        return Region.AP_NORTHEAST_1;
                    case 3:
                        return Region.AP_NORTHEAST_2;
                    case 4:
                        return Region.AP_SOUTHEAST_1;
                    case 5:
                        return Region.AP_SOUTHEAST_2;
                    case 6:
                        return Region.AP_SOUTH_1;
                    case 7:
                        return Region.CA_CENTRAL_1;
                    case 8:
                        return Region.CN_NORTHWEST_1;
                    case 9:
                        return Region.CN_NORTH_1;
                    case 10:
                        return Region.EU_CENTRAL_1;
                    case 11:
                        return Region.EU_NORTH_1;
                    case 12:
                        return Region.EU_WEST_1;
                    case 13:
                        return Region.EU_WEST_2;
                    case 14:
                        return Region.EU_WEST_3;
                    case 15:
                        return Region.SA_EAST_1;
                    case 16:
                        return Region.US_EAST_1;
                    case 17:
                        return Region.US_EAST_2;
                    case 18:
                        return Region.US_GOV_EAST_1;
                    case 19:
                        return Region.US_GOV_WEST_1;
                    case 20:
                        return Region.US_WEST_1;
                    case 21:
                        return Region.US_WEST_2;
                    case 22:
                        return Region.UNDEFINED_REGION;
                    default:
                        return null;
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0003\b³\u0002\b\u0086\u0081\u0002\u0018\u0000 ¶\u00022\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0002¶\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001j\u0003\bÂ\u0001j\u0003\bÃ\u0001j\u0003\bÄ\u0001j\u0003\bÅ\u0001j\u0003\bÆ\u0001j\u0003\bÇ\u0001j\u0003\bÈ\u0001j\u0003\bÉ\u0001j\u0003\bÊ\u0001j\u0003\bË\u0001j\u0003\bÌ\u0001j\u0003\bÍ\u0001j\u0003\bÎ\u0001j\u0003\bÏ\u0001j\u0003\bÐ\u0001j\u0003\bÑ\u0001j\u0003\bÒ\u0001j\u0003\bÓ\u0001j\u0003\bÔ\u0001j\u0003\bÕ\u0001j\u0003\bÖ\u0001j\u0003\b×\u0001j\u0003\bØ\u0001j\u0003\bÙ\u0001j\u0003\bÚ\u0001j\u0003\bÛ\u0001j\u0003\bÜ\u0001j\u0003\bÝ\u0001j\u0003\bÞ\u0001j\u0003\bß\u0001j\u0003\bà\u0001j\u0003\bá\u0001j\u0003\bâ\u0001j\u0003\bã\u0001j\u0003\bä\u0001j\u0003\bå\u0001j\u0003\bæ\u0001j\u0003\bç\u0001j\u0003\bè\u0001j\u0003\bé\u0001j\u0003\bê\u0001j\u0003\bë\u0001j\u0003\bì\u0001j\u0003\bí\u0001j\u0003\bî\u0001j\u0003\bï\u0001j\u0003\bð\u0001j\u0003\bñ\u0001j\u0003\bò\u0001j\u0003\bó\u0001j\u0003\bô\u0001j\u0003\bõ\u0001j\u0003\bö\u0001j\u0003\b÷\u0001j\u0003\bø\u0001j\u0003\bù\u0001j\u0003\bú\u0001j\u0003\bû\u0001j\u0003\bü\u0001j\u0003\bý\u0001j\u0003\bþ\u0001j\u0003\bÿ\u0001j\u0003\b\u0080\u0002j\u0003\b\u0081\u0002j\u0003\b\u0082\u0002j\u0003\b\u0083\u0002j\u0003\b\u0084\u0002j\u0003\b\u0085\u0002j\u0003\b\u0086\u0002j\u0003\b\u0087\u0002j\u0003\b\u0088\u0002j\u0003\b\u0089\u0002j\u0003\b\u008a\u0002j\u0003\b\u008b\u0002j\u0003\b\u008c\u0002j\u0003\b\u008d\u0002j\u0003\b\u008e\u0002j\u0003\b\u008f\u0002j\u0003\b\u0090\u0002j\u0003\b\u0091\u0002j\u0003\b\u0092\u0002j\u0003\b\u0093\u0002j\u0003\b\u0094\u0002j\u0003\b\u0095\u0002j\u0003\b\u0096\u0002j\u0003\b\u0097\u0002j\u0003\b\u0098\u0002j\u0003\b\u0099\u0002j\u0003\b\u009a\u0002j\u0003\b\u009b\u0002j\u0003\b\u009c\u0002j\u0003\b\u009d\u0002j\u0003\b\u009e\u0002j\u0003\b\u009f\u0002j\u0003\b \u0002j\u0003\b¡\u0002j\u0003\b¢\u0002j\u0003\b£\u0002j\u0003\b¤\u0002j\u0003\b¥\u0002j\u0003\b¦\u0002j\u0003\b§\u0002j\u0003\b¨\u0002j\u0003\b©\u0002j\u0003\bª\u0002j\u0003\b«\u0002j\u0003\b¬\u0002j\u0003\b\u00ad\u0002j\u0003\b®\u0002j\u0003\b¯\u0002j\u0003\b°\u0002j\u0003\b±\u0002j\u0003\b²\u0002j\u0003\b³\u0002j\u0003\b´\u0002j\u0003\bµ\u0002¨\u0006·\u0002"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SERVICE_BUNDLE_INVALID", "EXTERNAL_SERVICE_BUNDLE", "EXAMPLE", "EXAMPLE_NO_LB", "HORIZON_EXAMPLE", "HORIZON_REMOTE_EXECUTION", "HORIZON_BENCHMARK", "KUBERNETES", "HORIZON_DEPLOY", "HORIZON_SLACK", "HORIZON_RPC_BENCHMARKING", "HORIZON_AVALON", "VENEUR_HORIZON_PROBER", "BATCH_ACKNOWLEDGE", "BATCH_ASSEMBLER", "BATCH_INTERPRETATION", "BATCH_SUBMISSION", "CLEARING", "TERMINAL", "CLIENT_LOGGER", "EVENT_CHANNEL", "TELEMETRY", "TERMINALAPPSIGNER", "TERMINALASSETINSPECT", "IOT_RELAY", "TERMINALAUTH", "IOT_MANAGE", "TAX", "ANTI_ABUSE", "CARD_METADATA", "PAYOUTS", "PMPLATFORM_DISTRIBUTION", "PMPLATFORM_RECON", "PMPLATFORM_TXN", "RESOURCE_BUFFER", "DUMMY_AUTH_PUSH_FPI", "AFTERPAY_CLEARPAY_FPI", "BANK_TRANSFERS_FPI", "WECHATPAY_FPI", "BLIK_FPI", "BOLETO_FPI", "ECONTEXT_FPI", "PAYPAL_FPI", "TINK_FPI", "BTG_PIX_FPI", "IDEAL_FPI", "KLARNA_FPI", "RECHNUNG_FPI", "SHOPEEPAY_FPI", "MOBILEPAY_VIPPS_FPI", "CASHAPP_FPI", "GOLDMANSACHS_FPI", "INDONESIA_CREDIT_TRANSFERS", "MIRADOR", "CLEANSIGS", "THREE_D_SECURE", "MONETIZATION_COST_INVOICES", "BALANCES", "REVENUE_ENGINE", "DEPLOY_TEST", "ROLLOUT_CONFIG_TEST_ONE", "ROLLOUT_CONFIG_TEST_TWO", "ROLLOUT_CONFIG_TEST_THREE", "BILLDESK_FPI", "PRICING_SPEC_MANAGER", "PAYOUTS_INCOMING_TRANSACTION", "PAYOUTS_VBAN", "PAYOUTS_CASH_REPORTING", "CITADEL", "SALTO_JOBLIB", "BOOKKEEPER_EXAMPLE", "NETWORK_COSTS", "CARDS_AUTH", "CARDS_SHIELD", "CANARY_ELECTED", "FP_REPORTING", "SALTO_POLICY", "HUBBLE", "BOOKS", "WELLS_ACH_FPI", "ORIGINATED_TRANSFERS", "ACCOUNTS", "LIQUIDITY_ENGINE", "MONEYOUT", "HORIZON_LITMUS_ELECTED", "HORIZON_LITMUS_STATELESS", "EVENT_ENRICHMENT_QS", "CONSUMER", "CONSUMER_AUTH", "FX_RATES", "EXCHANGES", "RECEIVED_MONEY_IN", "ANALYTICS_EVENT_LOGGER", "MONEY_IN", "AUTO_DEBIT", "RISK_RESERVES", "PAYFLOWS_PLATFORM", "SHIELD", "CLIENT_METADATA_SERVICE", "FRAUD_SAFETY_MONITOR", "MOVE_CRON", "ATTRIBUTION", "HORIZON_HENSON", "HORIZON_HENSON_ELECTED", "API_GATEWAY", "SALTO_EXPLANATION", "DISPUTE_INTERCHANGE_BOOKKEEPING", "GATEWAY_SELECTION", "PAYMENT_METHODS", "PAYMENT_METHODS_VERSION_TWO", "IDENTITY_LOOKUP", "SUBMISSION_SCHEDULER", "SURVEYOR", "BANK_ROUTING", "CITI_BPI", "TAILOR", "ISSUING_SPENDING_CONTROLS", "BILLING_WFWORKER", "API_AUTH", "MASTERCARD_SEND_BPI", "MERGEQ", "CSTT_SERVICE_BAR", "RISK_RULES", "FEATURE_FETCHER", "APICORE_SAMPLE", "IAM_GROUPS", "UDIP_FILE_IMPORT", "UDIP_TRANSFORMATION", "HUBBLE_EDGE", "ISSUING_AUTHORIZATION_VALIDATOR", "IAM_API", "BILLING_USAGE_EVENT", "BILLING_USAGE_EVENT_INGESTION", "JAVAEXAMPLE", "GOODS_AND_SERVICES_PLATFORM", "GSP_AGREEMENTS", "PAYMENT_RECORDS", "VINEYARD", "TRAFFIC_TEST_SERVER_HORIZON", "TRAFFIC_PERF_TEST_HORIZON", "DCP_LOADTEST", "HADOOP_DECOM", "AFFIRM_FPI", "SOLBOOK", "RUBY_SERVICES", "CARTOGRAPHER", "CUSTOMERS", "KAFKA_CONTROL_PLANE", "CUSTOMER_FRAUD", "HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED", "ENFORCEMENT_PLATFORM", "CRYPTO_EXCHANGE", "CAPABILITY_POLICY", "COSTPLUS", "BNZ_BPI", "BOOKS_ORCHESTRATOR", "HORIZON_WORKFLOW_EXAMPLE", "BILLING_TIME", "BILLING_SUBSCRIPTIONS", "MRI", "CARDS_NETWORK_TOKENS", "ARANEA", "AFFOGATO", "PAYNOW_FPI", "SCA_OPTIMIZATIONS", "SANDBOX_API", "CASHFLOWS", "LIQUIDITYENGINE_V2", "LIQUIDITYENGINE_NEXT", "SECURITY_DEMO_HORIZON", "CASH_PREDICTIONS", "OT_FPI", "NOTIFICATIONS", "FILES", "BR_ANTICIPATIONS", "RISK_UNDERWRITING", "PROMPTPAY_FPI", "REVENUE_RECOVERY_RETRY", "OLIVEIRA_TRUST_FUNDING", "RPP_TESTING", "INVOICES", "TRAFFIC_CONTINUOUS_TEST_HORIZON", "CITI_SDD_BPI", "SALTO_EXAMPLE_SRV", "CONSTRAINT_SOLVER", "DEPLOYABLE_RESOURCE", "CAPITAL_UNDERWRITING", "BORING_TEST_SERVICE", "HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP", "LEDGER_TRACE", "HORIZON_SANDBOX", "MERCHANT_CASH", "CARD_IMAGE_VERIFICATION", "SIGNALS", "HORIZON_SANDBOX_ELECTED", "HORIZON_MYSQL", "INTERVENTION", "JURISDICTION_SERVICE", "GRABPAY_FPI", "ALIPAYPLUS_FPI", "UPSTREAM_CONV", "LOADRUNNER", "TAILOR_APP_SRV", "EXPERIENCE_ENGINE", "QUERY_GATEWAY", "PLAYGROUND", "MONGO_SANDBOX", "CRYPTO_BPI", "BULKIMPORT", "INVOICEBILL", "HDFC_FPI", "FORWARDING", "DIORAMA", "EFI", "ACCOUNTS_UFA", "COMPARTMENTS", "LOGGING_EXAMPLE", "ONBOARDING", "PMONBOARDING", "PRODUCT_CATALOG", "MONSTER_EXPRESS_EXAMPLE", "MRI_BRIDGE", "MERGEQ_WORKER", "TEST_RANDOM_SERVICE", "CONTACTS", "STRIPETAX_REPORTING", "PROGRAMMABLE_BALANCE", "STRIPETAX_CONTENT", "MRI_PLAYGROUND", "BTG_BPI", "DIORAMA_ASYNC", "DIORAMA_ROUTER", "EVENTBUS", "GRAPHQL_GATEWAY", "RECEIVED_FLOWS", "TRANSACTIONS", "NOTIFICATIONS_SRV", "OUTBOUND_PAYMENTS", "OUTBOUND_TRANSFERS", "EVENTBUS_EXAMPLE", "SCENARIOS_EXAMPLE", "PINOT_CONTROL_PLANE_SRV", "BTOB_PAYABLE", "BILLPAY", "INVOICING", "MEMCAR", "MEMADMIN", "MEMLOAD", "MEMSLO", "MEMENTOSRV", "PROFILES", "SRR_AUTOMATION", "SRR_AUTOMATION_SERVICE", "VPS_MGMT", "VPS", "DATASTORE", "CSTT_SERVICE_FOO", "SEARCH_INGEST", "SEARCH_CONTROL_PLANE", "WIDGET_FACTORY", "OLIVERIATRUSTFUNDING", "GIROCARD", "REVENUE_MANAGEMENT_PAYMENTS", "WELLS_ACH_BPI", "BPI_COORDINATOR", "WELLS_BPI", "KEYHANDLE", "MC_CROSSBORDER_BPI", "LEGAL_ENTITIES", "FINANCIAL_ACCOUNTS", "FEATURES", "IAM_CONTROL_PLANE", "JAVA_TESTBED", "IAM_DATA_PLANE", "SFTP", "TRANSMISSION", "COSTOPT", "USER_LOGIN", "IAM_USER_LOGIN", "DASHPLAT", "OAUTH_CONNECTORS", "IAM_CONTROL_PLANE_SRV", "GPTN_OLAP_SERVICE", "ACCOUNTS_DATAPLANE", "SECURITY_AWS_ISOLATION_GUINEA_PIG", "ACCOUNTS_INTEROP", "FINANCIAL_ADDRESSES", "EVENTBUS_CONTROL_PLANE", "PANDORA_TESTING", "SCB_HTTP_BPI", "STRIPETAX_FILING", "BAREBONES", "WEBAUTHN", "HORIGATO", "SCENARIO_COLLECTIONS", "DATA_ANONYMIZATION", "BAAS_AUTH", "GPTN_ACCOUNTS", "MECHANIC_CONTROL_SERVICE", "ORIGINATED_MONEY_OUT", "MMS_ORCHESTRATOR", "ONLINEDBONBOARDING", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ServiceBundle implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ServiceBundle[] $VALUES;
        public static final ServiceBundle ACCOUNTS;
        public static final ServiceBundle ACCOUNTS_DATAPLANE;
        public static final ServiceBundle ACCOUNTS_INTEROP;
        public static final ServiceBundle ACCOUNTS_UFA;
        public static final ProtoAdapter<ServiceBundle> ADAPTER;
        public static final ServiceBundle AFFIRM_FPI;
        public static final ServiceBundle AFFOGATO;
        public static final ServiceBundle AFTERPAY_CLEARPAY_FPI;
        public static final ServiceBundle ALIPAYPLUS_FPI;
        public static final ServiceBundle ANALYTICS_EVENT_LOGGER;
        public static final ServiceBundle ANTI_ABUSE;
        public static final ServiceBundle APICORE_SAMPLE;
        public static final ServiceBundle API_AUTH;
        public static final ServiceBundle API_GATEWAY;
        public static final ServiceBundle ARANEA;
        public static final ServiceBundle ATTRIBUTION;

        @Deprecated(message = "AUTO_DEBIT is deprecated")
        public static final ServiceBundle AUTO_DEBIT;
        public static final ServiceBundle BAAS_AUTH;

        @Deprecated(message = "BALANCES is deprecated")
        public static final ServiceBundle BALANCES;
        public static final ServiceBundle BANK_ROUTING;
        public static final ServiceBundle BANK_TRANSFERS_FPI;
        public static final ServiceBundle BAREBONES;
        public static final ServiceBundle BATCH_ACKNOWLEDGE;
        public static final ServiceBundle BATCH_ASSEMBLER;
        public static final ServiceBundle BATCH_INTERPRETATION;
        public static final ServiceBundle BATCH_SUBMISSION;
        public static final ServiceBundle BILLDESK_FPI;
        public static final ServiceBundle BILLING_SUBSCRIPTIONS;
        public static final ServiceBundle BILLING_TIME;
        public static final ServiceBundle BILLING_USAGE_EVENT;
        public static final ServiceBundle BILLING_USAGE_EVENT_INGESTION;
        public static final ServiceBundle BILLING_WFWORKER;

        @Deprecated(message = "BILLPAY is deprecated")
        public static final ServiceBundle BILLPAY;
        public static final ServiceBundle BLIK_FPI;
        public static final ServiceBundle BNZ_BPI;
        public static final ServiceBundle BOLETO_FPI;
        public static final ServiceBundle BOOKKEEPER_EXAMPLE;
        public static final ServiceBundle BOOKS;
        public static final ServiceBundle BOOKS_ORCHESTRATOR;
        public static final ServiceBundle BORING_TEST_SERVICE;
        public static final ServiceBundle BPI_COORDINATOR;
        public static final ServiceBundle BR_ANTICIPATIONS;
        public static final ServiceBundle BTG_BPI;
        public static final ServiceBundle BTG_PIX_FPI;

        @Deprecated(message = "BTOB_PAYABLE is deprecated")
        public static final ServiceBundle BTOB_PAYABLE;
        public static final ServiceBundle BULKIMPORT;
        public static final ServiceBundle CANARY_ELECTED;
        public static final ServiceBundle CAPABILITY_POLICY;
        public static final ServiceBundle CAPITAL_UNDERWRITING;
        public static final ServiceBundle CARDS_AUTH;
        public static final ServiceBundle CARDS_NETWORK_TOKENS;
        public static final ServiceBundle CARDS_SHIELD;
        public static final ServiceBundle CARD_IMAGE_VERIFICATION;
        public static final ServiceBundle CARD_METADATA;
        public static final ServiceBundle CARTOGRAPHER;
        public static final ServiceBundle CASHAPP_FPI;
        public static final ServiceBundle CASHFLOWS;
        public static final ServiceBundle CASH_PREDICTIONS;

        @Deprecated(message = "CITADEL is deprecated")
        public static final ServiceBundle CITADEL;
        public static final ServiceBundle CITI_BPI;
        public static final ServiceBundle CITI_SDD_BPI;
        public static final ServiceBundle CLEANSIGS;
        public static final ServiceBundle CLEARING;
        public static final ServiceBundle CLIENT_LOGGER;
        public static final ServiceBundle CLIENT_METADATA_SERVICE;
        public static final ServiceBundle COMPARTMENTS;
        public static final ServiceBundle CONSTRAINT_SOLVER;
        public static final ServiceBundle CONSUMER;
        public static final ServiceBundle CONSUMER_AUTH;
        public static final ServiceBundle CONTACTS;
        public static final ServiceBundle COSTOPT;
        public static final ServiceBundle COSTPLUS;
        public static final ServiceBundle CRYPTO_BPI;
        public static final ServiceBundle CRYPTO_EXCHANGE;
        public static final ServiceBundle CSTT_SERVICE_BAR;
        public static final ServiceBundle CSTT_SERVICE_FOO;
        public static final ServiceBundle CUSTOMERS;
        public static final ServiceBundle CUSTOMER_FRAUD;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ServiceBundle DASHPLAT;
        public static final ServiceBundle DATASTORE;
        public static final ServiceBundle DATA_ANONYMIZATION;
        public static final ServiceBundle DCP_LOADTEST;
        public static final ServiceBundle DEPLOYABLE_RESOURCE;

        @Deprecated(message = "DEPLOY_TEST is deprecated")
        public static final ServiceBundle DEPLOY_TEST;
        public static final ServiceBundle DIORAMA;
        public static final ServiceBundle DIORAMA_ASYNC;
        public static final ServiceBundle DIORAMA_ROUTER;
        public static final ServiceBundle DISPUTE_INTERCHANGE_BOOKKEEPING;
        public static final ServiceBundle DUMMY_AUTH_PUSH_FPI;
        public static final ServiceBundle ECONTEXT_FPI;
        public static final ServiceBundle EFI;

        @Deprecated(message = "ENFORCEMENT_PLATFORM is deprecated")
        public static final ServiceBundle ENFORCEMENT_PLATFORM;
        public static final ServiceBundle EVENTBUS;
        public static final ServiceBundle EVENTBUS_CONTROL_PLANE;
        public static final ServiceBundle EVENTBUS_EXAMPLE;
        public static final ServiceBundle EVENT_CHANNEL;
        public static final ServiceBundle EVENT_ENRICHMENT_QS;

        @Deprecated(message = "EXAMPLE is deprecated")
        public static final ServiceBundle EXAMPLE;

        @Deprecated(message = "EXAMPLE_NO_LB is deprecated")
        public static final ServiceBundle EXAMPLE_NO_LB;
        public static final ServiceBundle EXCHANGES;
        public static final ServiceBundle EXPERIENCE_ENGINE;
        public static final ServiceBundle EXTERNAL_SERVICE_BUNDLE;
        public static final ServiceBundle FEATURES;
        public static final ServiceBundle FEATURE_FETCHER;
        public static final ServiceBundle FILES;
        public static final ServiceBundle FINANCIAL_ACCOUNTS;
        public static final ServiceBundle FINANCIAL_ADDRESSES;
        public static final ServiceBundle FORWARDING;
        public static final ServiceBundle FP_REPORTING;
        public static final ServiceBundle FRAUD_SAFETY_MONITOR;
        public static final ServiceBundle FX_RATES;
        public static final ServiceBundle GATEWAY_SELECTION;
        public static final ServiceBundle GIROCARD;
        public static final ServiceBundle GOLDMANSACHS_FPI;
        public static final ServiceBundle GOODS_AND_SERVICES_PLATFORM;
        public static final ServiceBundle GPTN_ACCOUNTS;
        public static final ServiceBundle GPTN_OLAP_SERVICE;
        public static final ServiceBundle GRABPAY_FPI;
        public static final ServiceBundle GRAPHQL_GATEWAY;

        @Deprecated(message = "GSP_AGREEMENTS is deprecated")
        public static final ServiceBundle GSP_AGREEMENTS;
        public static final ServiceBundle HADOOP_DECOM;
        public static final ServiceBundle HDFC_FPI;
        public static final ServiceBundle HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED;
        public static final ServiceBundle HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP;
        public static final ServiceBundle HORIGATO;

        @Deprecated(message = "HORIZON_AVALON is deprecated")
        public static final ServiceBundle HORIZON_AVALON;
        public static final ServiceBundle HORIZON_BENCHMARK;

        @Deprecated(message = "HORIZON_DEPLOY is deprecated")
        public static final ServiceBundle HORIZON_DEPLOY;
        public static final ServiceBundle HORIZON_EXAMPLE;
        public static final ServiceBundle HORIZON_HENSON;
        public static final ServiceBundle HORIZON_HENSON_ELECTED;
        public static final ServiceBundle HORIZON_LITMUS_ELECTED;
        public static final ServiceBundle HORIZON_LITMUS_STATELESS;
        public static final ServiceBundle HORIZON_MYSQL;

        @Deprecated(message = "HORIZON_REMOTE_EXECUTION is deprecated")
        public static final ServiceBundle HORIZON_REMOTE_EXECUTION;
        public static final ServiceBundle HORIZON_RPC_BENCHMARKING;
        public static final ServiceBundle HORIZON_SANDBOX;
        public static final ServiceBundle HORIZON_SANDBOX_ELECTED;
        public static final ServiceBundle HORIZON_SLACK;
        public static final ServiceBundle HORIZON_WORKFLOW_EXAMPLE;
        public static final ServiceBundle HUBBLE;
        public static final ServiceBundle HUBBLE_EDGE;
        public static final ServiceBundle IAM_API;
        public static final ServiceBundle IAM_CONTROL_PLANE;
        public static final ServiceBundle IAM_CONTROL_PLANE_SRV;
        public static final ServiceBundle IAM_DATA_PLANE;
        public static final ServiceBundle IAM_GROUPS;
        public static final ServiceBundle IAM_USER_LOGIN;
        public static final ServiceBundle IDEAL_FPI;
        public static final ServiceBundle IDENTITY_LOOKUP;
        public static final ServiceBundle INDONESIA_CREDIT_TRANSFERS;
        public static final ServiceBundle INTERVENTION;

        @Deprecated(message = "INVOICEBILL is deprecated")
        public static final ServiceBundle INVOICEBILL;
        public static final ServiceBundle INVOICES;
        public static final ServiceBundle INVOICING;
        public static final ServiceBundle IOT_MANAGE;
        public static final ServiceBundle IOT_RELAY;
        public static final ServiceBundle ISSUING_AUTHORIZATION_VALIDATOR;
        public static final ServiceBundle ISSUING_SPENDING_CONTROLS;
        public static final ServiceBundle JAVAEXAMPLE;
        public static final ServiceBundle JAVA_TESTBED;
        public static final ServiceBundle JURISDICTION_SERVICE;
        public static final ServiceBundle KAFKA_CONTROL_PLANE;
        public static final ServiceBundle KEYHANDLE;
        public static final ServiceBundle KLARNA_FPI;

        @Deprecated(message = "KUBERNETES is deprecated")
        public static final ServiceBundle KUBERNETES;
        public static final ServiceBundle LEDGER_TRACE;
        public static final ServiceBundle LEGAL_ENTITIES;
        public static final ServiceBundle LIQUIDITYENGINE_NEXT;
        public static final ServiceBundle LIQUIDITYENGINE_V2;
        public static final ServiceBundle LIQUIDITY_ENGINE;
        public static final ServiceBundle LOADRUNNER;
        public static final ServiceBundle LOGGING_EXAMPLE;
        public static final ServiceBundle MASTERCARD_SEND_BPI;
        public static final ServiceBundle MC_CROSSBORDER_BPI;
        public static final ServiceBundle MECHANIC_CONTROL_SERVICE;
        public static final ServiceBundle MEMADMIN;
        public static final ServiceBundle MEMCAR;
        public static final ServiceBundle MEMENTOSRV;

        @Deprecated(message = "MEMLOAD is deprecated")
        public static final ServiceBundle MEMLOAD;

        @Deprecated(message = "MEMSLO is deprecated")
        public static final ServiceBundle MEMSLO;
        public static final ServiceBundle MERCHANT_CASH;
        public static final ServiceBundle MERGEQ;
        public static final ServiceBundle MERGEQ_WORKER;
        public static final ServiceBundle MIRADOR;
        public static final ServiceBundle MMS_ORCHESTRATOR;
        public static final ServiceBundle MOBILEPAY_VIPPS_FPI;
        public static final ServiceBundle MONETIZATION_COST_INVOICES;
        public static final ServiceBundle MONEYOUT;

        @Deprecated(message = "MONEY_IN is deprecated")
        public static final ServiceBundle MONEY_IN;
        public static final ServiceBundle MONGO_SANDBOX;
        public static final ServiceBundle MONSTER_EXPRESS_EXAMPLE;
        public static final ServiceBundle MOVE_CRON;

        @Deprecated(message = "MRI is deprecated")
        public static final ServiceBundle MRI;
        public static final ServiceBundle MRI_BRIDGE;
        public static final ServiceBundle MRI_PLAYGROUND;
        public static final ServiceBundle NETWORK_COSTS;
        public static final ServiceBundle NOTIFICATIONS;
        public static final ServiceBundle NOTIFICATIONS_SRV;
        public static final ServiceBundle OAUTH_CONNECTORS;
        public static final ServiceBundle OLIVEIRA_TRUST_FUNDING;
        public static final ServiceBundle OLIVERIATRUSTFUNDING;
        public static final ServiceBundle ONBOARDING;
        public static final ServiceBundle ONLINEDBONBOARDING;
        public static final ServiceBundle ORIGINATED_MONEY_OUT;
        public static final ServiceBundle ORIGINATED_TRANSFERS;
        public static final ServiceBundle OT_FPI;
        public static final ServiceBundle OUTBOUND_PAYMENTS;
        public static final ServiceBundle OUTBOUND_TRANSFERS;
        public static final ServiceBundle PANDORA_TESTING;
        public static final ServiceBundle PAYFLOWS_PLATFORM;
        public static final ServiceBundle PAYMENT_METHODS;
        public static final ServiceBundle PAYMENT_METHODS_VERSION_TWO;
        public static final ServiceBundle PAYMENT_RECORDS;
        public static final ServiceBundle PAYNOW_FPI;

        @Deprecated(message = "PAYOUTS is deprecated")
        public static final ServiceBundle PAYOUTS;
        public static final ServiceBundle PAYOUTS_CASH_REPORTING;
        public static final ServiceBundle PAYOUTS_INCOMING_TRANSACTION;
        public static final ServiceBundle PAYOUTS_VBAN;
        public static final ServiceBundle PAYPAL_FPI;
        public static final ServiceBundle PINOT_CONTROL_PLANE_SRV;

        @Deprecated(message = "PLAYGROUND is deprecated")
        public static final ServiceBundle PLAYGROUND;
        public static final ServiceBundle PMONBOARDING;

        @Deprecated(message = "PMPLATFORM_DISTRIBUTION is deprecated")
        public static final ServiceBundle PMPLATFORM_DISTRIBUTION;
        public static final ServiceBundle PMPLATFORM_RECON;
        public static final ServiceBundle PMPLATFORM_TXN;
        public static final ServiceBundle PRICING_SPEC_MANAGER;
        public static final ServiceBundle PRODUCT_CATALOG;
        public static final ServiceBundle PROFILES;
        public static final ServiceBundle PROGRAMMABLE_BALANCE;
        public static final ServiceBundle PROMPTPAY_FPI;
        public static final ServiceBundle QUERY_GATEWAY;
        public static final ServiceBundle RECEIVED_FLOWS;
        public static final ServiceBundle RECEIVED_MONEY_IN;

        @Deprecated(message = "RECHNUNG_FPI is deprecated")
        public static final ServiceBundle RECHNUNG_FPI;
        public static final ServiceBundle RESOURCE_BUFFER;
        public static final ServiceBundle REVENUE_ENGINE;
        public static final ServiceBundle REVENUE_MANAGEMENT_PAYMENTS;
        public static final ServiceBundle REVENUE_RECOVERY_RETRY;
        public static final ServiceBundle RISK_RESERVES;
        public static final ServiceBundle RISK_RULES;
        public static final ServiceBundle RISK_UNDERWRITING;

        @Deprecated(message = "ROLLOUT_CONFIG_TEST_ONE is deprecated")
        public static final ServiceBundle ROLLOUT_CONFIG_TEST_ONE;

        @Deprecated(message = "ROLLOUT_CONFIG_TEST_THREE is deprecated")
        public static final ServiceBundle ROLLOUT_CONFIG_TEST_THREE;

        @Deprecated(message = "ROLLOUT_CONFIG_TEST_TWO is deprecated")
        public static final ServiceBundle ROLLOUT_CONFIG_TEST_TWO;
        public static final ServiceBundle RPP_TESTING;
        public static final ServiceBundle RUBY_SERVICES;
        public static final ServiceBundle SALTO_EXAMPLE_SRV;
        public static final ServiceBundle SALTO_EXPLANATION;
        public static final ServiceBundle SALTO_JOBLIB;
        public static final ServiceBundle SALTO_POLICY;
        public static final ServiceBundle SANDBOX_API;
        public static final ServiceBundle SCA_OPTIMIZATIONS;
        public static final ServiceBundle SCB_HTTP_BPI;
        public static final ServiceBundle SCENARIOS_EXAMPLE;
        public static final ServiceBundle SCENARIO_COLLECTIONS;
        public static final ServiceBundle SEARCH_CONTROL_PLANE;
        public static final ServiceBundle SEARCH_INGEST;
        public static final ServiceBundle SECURITY_AWS_ISOLATION_GUINEA_PIG;
        public static final ServiceBundle SECURITY_DEMO_HORIZON;
        public static final ServiceBundle SERVICE_BUNDLE_INVALID;
        public static final ServiceBundle SFTP;
        public static final ServiceBundle SHIELD;

        @Deprecated(message = "SHOPEEPAY_FPI is deprecated")
        public static final ServiceBundle SHOPEEPAY_FPI;
        public static final ServiceBundle SIGNALS;
        public static final ServiceBundle SOLBOOK;

        @Deprecated(message = "SRR_AUTOMATION is deprecated")
        public static final ServiceBundle SRR_AUTOMATION;

        @Deprecated(message = "SRR_AUTOMATION_SERVICE is deprecated")
        public static final ServiceBundle SRR_AUTOMATION_SERVICE;
        public static final ServiceBundle STRIPETAX_CONTENT;
        public static final ServiceBundle STRIPETAX_FILING;
        public static final ServiceBundle STRIPETAX_REPORTING;
        public static final ServiceBundle SUBMISSION_SCHEDULER;
        public static final ServiceBundle SURVEYOR;
        public static final ServiceBundle TAILOR;
        public static final ServiceBundle TAILOR_APP_SRV;
        public static final ServiceBundle TAX;
        public static final ServiceBundle TELEMETRY;
        public static final ServiceBundle TERMINAL;
        public static final ServiceBundle TERMINALAPPSIGNER;
        public static final ServiceBundle TERMINALASSETINSPECT;
        public static final ServiceBundle TERMINALAUTH;
        public static final ServiceBundle TEST_RANDOM_SERVICE;
        public static final ServiceBundle THREE_D_SECURE;
        public static final ServiceBundle TINK_FPI;
        public static final ServiceBundle TRAFFIC_CONTINUOUS_TEST_HORIZON;
        public static final ServiceBundle TRAFFIC_PERF_TEST_HORIZON;
        public static final ServiceBundle TRAFFIC_TEST_SERVER_HORIZON;
        public static final ServiceBundle TRANSACTIONS;
        public static final ServiceBundle TRANSMISSION;
        public static final ServiceBundle UDIP_FILE_IMPORT;
        public static final ServiceBundle UDIP_TRANSFORMATION;
        public static final ServiceBundle UPSTREAM_CONV;
        public static final ServiceBundle USER_LOGIN;
        public static final ServiceBundle VENEUR_HORIZON_PROBER;
        public static final ServiceBundle VINEYARD;
        public static final ServiceBundle VPS;
        public static final ServiceBundle VPS_MGMT;
        public static final ServiceBundle WEBAUTHN;
        public static final ServiceBundle WECHATPAY_FPI;
        public static final ServiceBundle WELLS_ACH_BPI;

        @Deprecated(message = "WELLS_ACH_FPI is deprecated")
        public static final ServiceBundle WELLS_ACH_FPI;
        public static final ServiceBundle WELLS_BPI;
        public static final ServiceBundle WIDGET_FACTORY;
        private final int value;

        private static final /* synthetic */ ServiceBundle[] $values() {
            return new ServiceBundle[]{SERVICE_BUNDLE_INVALID, EXTERNAL_SERVICE_BUNDLE, EXAMPLE, EXAMPLE_NO_LB, HORIZON_EXAMPLE, HORIZON_REMOTE_EXECUTION, HORIZON_BENCHMARK, KUBERNETES, HORIZON_DEPLOY, HORIZON_SLACK, HORIZON_RPC_BENCHMARKING, HORIZON_AVALON, VENEUR_HORIZON_PROBER, BATCH_ACKNOWLEDGE, BATCH_ASSEMBLER, BATCH_INTERPRETATION, BATCH_SUBMISSION, CLEARING, TERMINAL, CLIENT_LOGGER, EVENT_CHANNEL, TELEMETRY, TERMINALAPPSIGNER, TERMINALASSETINSPECT, IOT_RELAY, TERMINALAUTH, IOT_MANAGE, TAX, ANTI_ABUSE, CARD_METADATA, PAYOUTS, PMPLATFORM_DISTRIBUTION, PMPLATFORM_RECON, PMPLATFORM_TXN, RESOURCE_BUFFER, DUMMY_AUTH_PUSH_FPI, AFTERPAY_CLEARPAY_FPI, BANK_TRANSFERS_FPI, WECHATPAY_FPI, BLIK_FPI, BOLETO_FPI, ECONTEXT_FPI, PAYPAL_FPI, TINK_FPI, BTG_PIX_FPI, IDEAL_FPI, KLARNA_FPI, RECHNUNG_FPI, SHOPEEPAY_FPI, MOBILEPAY_VIPPS_FPI, CASHAPP_FPI, GOLDMANSACHS_FPI, INDONESIA_CREDIT_TRANSFERS, MIRADOR, CLEANSIGS, THREE_D_SECURE, MONETIZATION_COST_INVOICES, BALANCES, REVENUE_ENGINE, DEPLOY_TEST, ROLLOUT_CONFIG_TEST_ONE, ROLLOUT_CONFIG_TEST_TWO, ROLLOUT_CONFIG_TEST_THREE, BILLDESK_FPI, PRICING_SPEC_MANAGER, PAYOUTS_INCOMING_TRANSACTION, PAYOUTS_VBAN, PAYOUTS_CASH_REPORTING, CITADEL, SALTO_JOBLIB, BOOKKEEPER_EXAMPLE, NETWORK_COSTS, CARDS_AUTH, CARDS_SHIELD, CANARY_ELECTED, FP_REPORTING, SALTO_POLICY, HUBBLE, BOOKS, WELLS_ACH_FPI, ORIGINATED_TRANSFERS, ACCOUNTS, LIQUIDITY_ENGINE, MONEYOUT, HORIZON_LITMUS_ELECTED, HORIZON_LITMUS_STATELESS, EVENT_ENRICHMENT_QS, CONSUMER, CONSUMER_AUTH, FX_RATES, EXCHANGES, RECEIVED_MONEY_IN, ANALYTICS_EVENT_LOGGER, MONEY_IN, AUTO_DEBIT, RISK_RESERVES, PAYFLOWS_PLATFORM, SHIELD, CLIENT_METADATA_SERVICE, FRAUD_SAFETY_MONITOR, MOVE_CRON, ATTRIBUTION, HORIZON_HENSON, HORIZON_HENSON_ELECTED, API_GATEWAY, SALTO_EXPLANATION, DISPUTE_INTERCHANGE_BOOKKEEPING, GATEWAY_SELECTION, PAYMENT_METHODS, PAYMENT_METHODS_VERSION_TWO, IDENTITY_LOOKUP, SUBMISSION_SCHEDULER, SURVEYOR, BANK_ROUTING, CITI_BPI, TAILOR, ISSUING_SPENDING_CONTROLS, BILLING_WFWORKER, API_AUTH, MASTERCARD_SEND_BPI, MERGEQ, CSTT_SERVICE_BAR, RISK_RULES, FEATURE_FETCHER, APICORE_SAMPLE, IAM_GROUPS, UDIP_FILE_IMPORT, UDIP_TRANSFORMATION, HUBBLE_EDGE, ISSUING_AUTHORIZATION_VALIDATOR, IAM_API, BILLING_USAGE_EVENT, BILLING_USAGE_EVENT_INGESTION, JAVAEXAMPLE, GOODS_AND_SERVICES_PLATFORM, GSP_AGREEMENTS, PAYMENT_RECORDS, VINEYARD, TRAFFIC_TEST_SERVER_HORIZON, TRAFFIC_PERF_TEST_HORIZON, DCP_LOADTEST, HADOOP_DECOM, AFFIRM_FPI, SOLBOOK, RUBY_SERVICES, CARTOGRAPHER, CUSTOMERS, KAFKA_CONTROL_PLANE, CUSTOMER_FRAUD, HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED, ENFORCEMENT_PLATFORM, CRYPTO_EXCHANGE, CAPABILITY_POLICY, COSTPLUS, BNZ_BPI, BOOKS_ORCHESTRATOR, HORIZON_WORKFLOW_EXAMPLE, BILLING_TIME, BILLING_SUBSCRIPTIONS, MRI, CARDS_NETWORK_TOKENS, ARANEA, AFFOGATO, PAYNOW_FPI, SCA_OPTIMIZATIONS, SANDBOX_API, CASHFLOWS, LIQUIDITYENGINE_V2, LIQUIDITYENGINE_NEXT, SECURITY_DEMO_HORIZON, CASH_PREDICTIONS, OT_FPI, NOTIFICATIONS, FILES, BR_ANTICIPATIONS, RISK_UNDERWRITING, PROMPTPAY_FPI, REVENUE_RECOVERY_RETRY, OLIVEIRA_TRUST_FUNDING, RPP_TESTING, INVOICES, TRAFFIC_CONTINUOUS_TEST_HORIZON, CITI_SDD_BPI, SALTO_EXAMPLE_SRV, CONSTRAINT_SOLVER, DEPLOYABLE_RESOURCE, CAPITAL_UNDERWRITING, BORING_TEST_SERVICE, HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP, LEDGER_TRACE, HORIZON_SANDBOX, MERCHANT_CASH, CARD_IMAGE_VERIFICATION, SIGNALS, HORIZON_SANDBOX_ELECTED, HORIZON_MYSQL, INTERVENTION, JURISDICTION_SERVICE, GRABPAY_FPI, ALIPAYPLUS_FPI, UPSTREAM_CONV, LOADRUNNER, TAILOR_APP_SRV, EXPERIENCE_ENGINE, QUERY_GATEWAY, PLAYGROUND, MONGO_SANDBOX, CRYPTO_BPI, BULKIMPORT, INVOICEBILL, HDFC_FPI, FORWARDING, DIORAMA, EFI, ACCOUNTS_UFA, COMPARTMENTS, LOGGING_EXAMPLE, ONBOARDING, PMONBOARDING, PRODUCT_CATALOG, MONSTER_EXPRESS_EXAMPLE, MRI_BRIDGE, MERGEQ_WORKER, TEST_RANDOM_SERVICE, CONTACTS, STRIPETAX_REPORTING, PROGRAMMABLE_BALANCE, STRIPETAX_CONTENT, MRI_PLAYGROUND, BTG_BPI, DIORAMA_ASYNC, DIORAMA_ROUTER, EVENTBUS, GRAPHQL_GATEWAY, RECEIVED_FLOWS, TRANSACTIONS, NOTIFICATIONS_SRV, OUTBOUND_PAYMENTS, OUTBOUND_TRANSFERS, EVENTBUS_EXAMPLE, SCENARIOS_EXAMPLE, PINOT_CONTROL_PLANE_SRV, BTOB_PAYABLE, BILLPAY, INVOICING, MEMCAR, MEMADMIN, MEMLOAD, MEMSLO, MEMENTOSRV, PROFILES, SRR_AUTOMATION, SRR_AUTOMATION_SERVICE, VPS_MGMT, VPS, DATASTORE, CSTT_SERVICE_FOO, SEARCH_INGEST, SEARCH_CONTROL_PLANE, WIDGET_FACTORY, OLIVERIATRUSTFUNDING, GIROCARD, REVENUE_MANAGEMENT_PAYMENTS, WELLS_ACH_BPI, BPI_COORDINATOR, WELLS_BPI, KEYHANDLE, MC_CROSSBORDER_BPI, LEGAL_ENTITIES, FINANCIAL_ACCOUNTS, FEATURES, IAM_CONTROL_PLANE, JAVA_TESTBED, IAM_DATA_PLANE, SFTP, TRANSMISSION, COSTOPT, USER_LOGIN, IAM_USER_LOGIN, DASHPLAT, OAUTH_CONNECTORS, IAM_CONTROL_PLANE_SRV, GPTN_OLAP_SERVICE, ACCOUNTS_DATAPLANE, SECURITY_AWS_ISOLATION_GUINEA_PIG, ACCOUNTS_INTEROP, FINANCIAL_ADDRESSES, EVENTBUS_CONTROL_PLANE, PANDORA_TESTING, SCB_HTTP_BPI, STRIPETAX_FILING, BAREBONES, WEBAUTHN, HORIGATO, SCENARIO_COLLECTIONS, DATA_ANONYMIZATION, BAAS_AUTH, GPTN_ACCOUNTS, MECHANIC_CONTROL_SERVICE, ORIGINATED_MONEY_OUT, MMS_ORCHESTRATOR, ONLINEDBONBOARDING};
        }

        @JvmStatic
        public static final ServiceBundle fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ServiceBundle> getEntries() {
            return $ENTRIES;
        }

        public static ServiceBundle valueOf(String str) {
            return (ServiceBundle) Enum.valueOf(ServiceBundle.class, str);
        }

        public static ServiceBundle[] values() {
            return (ServiceBundle[]) $VALUES.clone();
        }

        private ServiceBundle(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ServiceBundle serviceBundle = new ServiceBundle("SERVICE_BUNDLE_INVALID", 0, 0);
            SERVICE_BUNDLE_INVALID = serviceBundle;
            EXTERNAL_SERVICE_BUNDLE = new ServiceBundle("EXTERNAL_SERVICE_BUNDLE", 1, 8);
            EXAMPLE = new ServiceBundle("EXAMPLE", 2, 1);
            EXAMPLE_NO_LB = new ServiceBundle("EXAMPLE_NO_LB", 3, WinError.ERROR_INVALID_STARTING_CODESEG);
            HORIZON_EXAMPLE = new ServiceBundle("HORIZON_EXAMPLE", 4, 15);
            HORIZON_REMOTE_EXECUTION = new ServiceBundle("HORIZON_REMOTE_EXECUTION", 5, 12);
            HORIZON_BENCHMARK = new ServiceBundle("HORIZON_BENCHMARK", 6, 9);
            KUBERNETES = new ServiceBundle("KUBERNETES", 7, 13);
            HORIZON_DEPLOY = new ServiceBundle("HORIZON_DEPLOY", 8, 31);
            HORIZON_SLACK = new ServiceBundle("HORIZON_SLACK", 9, 29);
            HORIZON_RPC_BENCHMARKING = new ServiceBundle("HORIZON_RPC_BENCHMARKING", 10, 65);
            HORIZON_AVALON = new ServiceBundle("HORIZON_AVALON", 11, 142);
            VENEUR_HORIZON_PROBER = new ServiceBundle("VENEUR_HORIZON_PROBER", 12, WinError.ERROR_FORMS_AUTH_REQUIRED);
            BATCH_ACKNOWLEDGE = new ServiceBundle("BATCH_ACKNOWLEDGE", 13, 6);
            BATCH_ASSEMBLER = new ServiceBundle("BATCH_ASSEMBLER", 14, 3);
            BATCH_INTERPRETATION = new ServiceBundle("BATCH_INTERPRETATION", 15, 4);
            BATCH_SUBMISSION = new ServiceBundle("BATCH_SUBMISSION", 16, 5);
            CLEARING = new ServiceBundle("CLEARING", 17, WinError.ERROR_INVALID_ORDINAL);
            TERMINAL = new ServiceBundle("TERMINAL", 18, 2);
            CLIENT_LOGGER = new ServiceBundle("CLIENT_LOGGER", 19, 64);
            EVENT_CHANNEL = new ServiceBundle("EVENT_CHANNEL", 20, 75);
            TELEMETRY = new ServiceBundle("TELEMETRY", 21, 78);
            TERMINALAPPSIGNER = new ServiceBundle("TERMINALAPPSIGNER", 22, WinError.ERROR_INVALID_VERIFY_SWITCH);
            TERMINALASSETINSPECT = new ServiceBundle("TERMINALASSETINSPECT", 23, WinError.ERROR_NOT_SUBSTED);
            IOT_RELAY = new ServiceBundle("IOT_RELAY", 24, 123);
            TERMINALAUTH = new ServiceBundle("TERMINALAUTH", 25, WinError.ERROR_INVALID_LEVEL);
            IOT_MANAGE = new ServiceBundle("IOT_MANAGE", 26, WinError.ERROR_IS_JOINED);
            TAX = new ServiceBundle("TAX", 27, 7);
            ANTI_ABUSE = new ServiceBundle("ANTI_ABUSE", 28, 10);
            CARD_METADATA = new ServiceBundle("CARD_METADATA", 29, 16);
            PAYOUTS = new ServiceBundle("PAYOUTS", 30, 18);
            PMPLATFORM_DISTRIBUTION = new ServiceBundle("PMPLATFORM_DISTRIBUTION", 31, 19);
            PMPLATFORM_RECON = new ServiceBundle("PMPLATFORM_RECON", 32, 20);
            PMPLATFORM_TXN = new ServiceBundle("PMPLATFORM_TXN", 33, 21);
            RESOURCE_BUFFER = new ServiceBundle("RESOURCE_BUFFER", 34, 62);
            DUMMY_AUTH_PUSH_FPI = new ServiceBundle("DUMMY_AUTH_PUSH_FPI", 35, 28);
            AFTERPAY_CLEARPAY_FPI = new ServiceBundle("AFTERPAY_CLEARPAY_FPI", 36, 34);
            BANK_TRANSFERS_FPI = new ServiceBundle("BANK_TRANSFERS_FPI", 37, 33);
            WECHATPAY_FPI = new ServiceBundle("WECHATPAY_FPI", 38, 36);
            BLIK_FPI = new ServiceBundle("BLIK_FPI", 39, 42);
            BOLETO_FPI = new ServiceBundle("BOLETO_FPI", 40, 51);
            ECONTEXT_FPI = new ServiceBundle("ECONTEXT_FPI", 41, 52);
            PAYPAL_FPI = new ServiceBundle("PAYPAL_FPI", 42, WinError.ERROR_JOIN_TO_JOIN);
            TINK_FPI = new ServiceBundle("TINK_FPI", 43, 131);
            BTG_PIX_FPI = new ServiceBundle("BTG_PIX_FPI", 44, WinError.ERROR_IS_SUBST_PATH);
            IDEAL_FPI = new ServiceBundle("IDEAL_FPI", 45, 172);
            KLARNA_FPI = new ServiceBundle("KLARNA_FPI", 46, WinError.ERROR_CHECKOUT_REQUIRED);
            RECHNUNG_FPI = new ServiceBundle("RECHNUNG_FPI", 47, WinError.ERROR_FILE_TOO_LARGE);
            SHOPEEPAY_FPI = new ServiceBundle("SHOPEEPAY_FPI", 48, 603);
            MOBILEPAY_VIPPS_FPI = new ServiceBundle("MOBILEPAY_VIPPS_FPI", 49, 811);
            CASHAPP_FPI = new ServiceBundle("CASHAPP_FPI", 50, 999);
            GOLDMANSACHS_FPI = new ServiceBundle("GOLDMANSACHS_FPI", 51, 255);
            INDONESIA_CREDIT_TRANSFERS = new ServiceBundle("INDONESIA_CREDIT_TRANSFERS", 52, 43);
            MIRADOR = new ServiceBundle("MIRADOR", 53, 24);
            CLEANSIGS = new ServiceBundle("CLEANSIGS", 54, WinError.ERROR_SAME_DRIVE);
            THREE_D_SECURE = new ServiceBundle("THREE_D_SECURE", 55, 25);
            MONETIZATION_COST_INVOICES = new ServiceBundle("MONETIZATION_COST_INVOICES", 56, 26);
            BALANCES = new ServiceBundle("BALANCES", 57, 27);
            REVENUE_ENGINE = new ServiceBundle("REVENUE_ENGINE", 58, 30);
            DEPLOY_TEST = new ServiceBundle("DEPLOY_TEST", 59, 35);
            ROLLOUT_CONFIG_TEST_ONE = new ServiceBundle("ROLLOUT_CONFIG_TEST_ONE", 60, 37);
            ROLLOUT_CONFIG_TEST_TWO = new ServiceBundle("ROLLOUT_CONFIG_TEST_TWO", 61, 38);
            ROLLOUT_CONFIG_TEST_THREE = new ServiceBundle("ROLLOUT_CONFIG_TEST_THREE", 62, 39);
            BILLDESK_FPI = new ServiceBundle("BILLDESK_FPI", 63, 40);
            PRICING_SPEC_MANAGER = new ServiceBundle("PRICING_SPEC_MANAGER", 64, 41);
            PAYOUTS_INCOMING_TRANSACTION = new ServiceBundle("PAYOUTS_INCOMING_TRANSACTION", 65, 44);
            PAYOUTS_VBAN = new ServiceBundle("PAYOUTS_VBAN", 66, 45);
            PAYOUTS_CASH_REPORTING = new ServiceBundle("PAYOUTS_CASH_REPORTING", 67, 46);
            CITADEL = new ServiceBundle("CITADEL", 68, 47);
            SALTO_JOBLIB = new ServiceBundle("SALTO_JOBLIB", 69, 48);
            BOOKKEEPER_EXAMPLE = new ServiceBundle("BOOKKEEPER_EXAMPLE", 70, 49);
            NETWORK_COSTS = new ServiceBundle("NETWORK_COSTS", 71, 50);
            CARDS_AUTH = new ServiceBundle("CARDS_AUTH", 72, 53);
            CARDS_SHIELD = new ServiceBundle("CARDS_SHIELD", 73, 54);
            CANARY_ELECTED = new ServiceBundle("CANARY_ELECTED", 74, 55);
            FP_REPORTING = new ServiceBundle("FP_REPORTING", 75, 57);
            SALTO_POLICY = new ServiceBundle("SALTO_POLICY", 76, 58);
            HUBBLE = new ServiceBundle("HUBBLE", 77, 59);
            BOOKS = new ServiceBundle("BOOKS", 78, 60);
            WELLS_ACH_FPI = new ServiceBundle("WELLS_ACH_FPI", 79, 63);
            ORIGINATED_TRANSFERS = new ServiceBundle("ORIGINATED_TRANSFERS", 80, 66);
            ACCOUNTS = new ServiceBundle("ACCOUNTS", 81, 67);
            LIQUIDITY_ENGINE = new ServiceBundle("LIQUIDITY_ENGINE", 82, 68);
            MONEYOUT = new ServiceBundle("MONEYOUT", 83, 69);
            HORIZON_LITMUS_ELECTED = new ServiceBundle("HORIZON_LITMUS_ELECTED", 84, 70);
            HORIZON_LITMUS_STATELESS = new ServiceBundle("HORIZON_LITMUS_STATELESS", 85, 71);
            EVENT_ENRICHMENT_QS = new ServiceBundle("EVENT_ENRICHMENT_QS", 86, WinError.ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED);
            CONSUMER = new ServiceBundle("CONSUMER", 87, 72);
            CONSUMER_AUTH = new ServiceBundle("CONSUMER_AUTH", 88, WinError.ERROR_DIR_NOT_ROOT);
            FX_RATES = new ServiceBundle("FX_RATES", 89, 73);
            EXCHANGES = new ServiceBundle("EXCHANGES", 90, HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE);
            RECEIVED_MONEY_IN = new ServiceBundle("RECEIVED_MONEY_IN", 91, 416);
            ANALYTICS_EVENT_LOGGER = new ServiceBundle("ANALYTICS_EVENT_LOGGER", 92, 74);
            MONEY_IN = new ServiceBundle("MONEY_IN", 93, 76);
            AUTO_DEBIT = new ServiceBundle("AUTO_DEBIT", 94, 77);
            RISK_RESERVES = new ServiceBundle("RISK_RESERVES", 95, 79);
            PAYFLOWS_PLATFORM = new ServiceBundle("PAYFLOWS_PLATFORM", 96, 80);
            SHIELD = new ServiceBundle("SHIELD", 97, 81);
            CLIENT_METADATA_SERVICE = new ServiceBundle("CLIENT_METADATA_SERVICE", 98, WinError.ERROR_CANNOT_DETECT_PROCESS_ABORT);
            FRAUD_SAFETY_MONITOR = new ServiceBundle("FRAUD_SAFETY_MONITOR", 99, WinError.ERROR_JOURNAL_ENTRY_DELETED);
            MOVE_CRON = new ServiceBundle("MOVE_CRON", 100, 82);
            ATTRIBUTION = new ServiceBundle("ATTRIBUTION", 101, 83);
            HORIZON_HENSON = new ServiceBundle("HORIZON_HENSON", 102, 84);
            HORIZON_HENSON_ELECTED = new ServiceBundle("HORIZON_HENSON_ELECTED", 103, 88);
            API_GATEWAY = new ServiceBundle("API_GATEWAY", 104, 85);
            SALTO_EXPLANATION = new ServiceBundle("SALTO_EXPLANATION", WinError.ERROR_SEM_OWNER_DIED, 86);
            DISPUTE_INTERCHANGE_BOOKKEEPING = new ServiceBundle("DISPUTE_INTERCHANGE_BOOKKEEPING", WinError.ERROR_SEM_USER_LIMIT, 933);
            GATEWAY_SELECTION = new ServiceBundle("GATEWAY_SELECTION", WinError.ERROR_DISK_CHANGE, 87);
            PAYMENT_METHODS = new ServiceBundle("PAYMENT_METHODS", 108, 89);
            PAYMENT_METHODS_VERSION_TWO = new ServiceBundle("PAYMENT_METHODS_VERSION_TWO", 109, 1600);
            IDENTITY_LOOKUP = new ServiceBundle("IDENTITY_LOOKUP", 110, 90);
            SUBMISSION_SCHEDULER = new ServiceBundle("SUBMISSION_SCHEDULER", WinError.ERROR_BUFFER_OVERFLOW, 91);
            SURVEYOR = new ServiceBundle("SURVEYOR", 112, WinError.ERROR_POSSIBLE_DEADLOCK);
            BANK_ROUTING = new ServiceBundle("BANK_ROUTING", WinError.ERROR_NO_MORE_SEARCH_HANDLES, 285);
            CITI_BPI = new ServiceBundle("CITI_BPI", WinError.ERROR_INVALID_TARGET_HANDLE, 92);
            TAILOR = new ServiceBundle("TAILOR", 115, 94);
            ISSUING_SPENDING_CONTROLS = new ServiceBundle("ISSUING_SPENDING_CONTROLS", 116, 95);
            BILLING_WFWORKER = new ServiceBundle("BILLING_WFWORKER", WinError.ERROR_INVALID_CATEGORY, 96);
            API_AUTH = new ServiceBundle("API_AUTH", WinError.ERROR_INVALID_VERIFY_SWITCH, 97);
            MASTERCARD_SEND_BPI = new ServiceBundle("MASTERCARD_SEND_BPI", WinError.ERROR_BAD_DRIVER_LEVEL, 98);
            MERGEQ = new ServiceBundle("MERGEQ", WinError.ERROR_CALL_NOT_IMPLEMENTED, 99);
            CSTT_SERVICE_BAR = new ServiceBundle("CSTT_SERVICE_BAR", WinError.ERROR_SEM_TIMEOUT, 451);
            RISK_RULES = new ServiceBundle("RISK_RULES", 122, 100);
            FEATURE_FETCHER = new ServiceBundle("FEATURE_FETCHER", 123, HttpStatus.SC_REQUEST_TIMEOUT);
            APICORE_SAMPLE = new ServiceBundle("APICORE_SAMPLE", WinError.ERROR_INVALID_LEVEL, 101);
            IAM_GROUPS = new ServiceBundle("IAM_GROUPS", WinError.ERROR_NO_VOLUME_LABEL, 102);
            UDIP_FILE_IMPORT = new ServiceBundle("UDIP_FILE_IMPORT", 126, 454);
            UDIP_TRANSFORMATION = new ServiceBundle("UDIP_TRANSFORMATION", 127, 455);
            HUBBLE_EDGE = new ServiceBundle("HUBBLE_EDGE", 128, 103);
            ISSUING_AUTHORIZATION_VALIDATOR = new ServiceBundle("ISSUING_AUTHORIZATION_VALIDATOR", 129, 104);
            IAM_API = new ServiceBundle("IAM_API", 130, WinError.ERROR_SEM_OWNER_DIED);
            BILLING_USAGE_EVENT = new ServiceBundle("BILLING_USAGE_EVENT", 131, WinError.ERROR_SEM_USER_LIMIT);
            BILLING_USAGE_EVENT_INGESTION = new ServiceBundle("BILLING_USAGE_EVENT_INGESTION", WinError.ERROR_SEEK_ON_DEVICE, WinError.ERROR_DISK_CHANGE);
            JAVAEXAMPLE = new ServiceBundle("JAVAEXAMPLE", WinError.ERROR_IS_JOIN_TARGET, 1000);
            GOODS_AND_SERVICES_PLATFORM = new ServiceBundle("GOODS_AND_SERVICES_PLATFORM", WinError.ERROR_IS_JOINED, 295);
            GSP_AGREEMENTS = new ServiceBundle("GSP_AGREEMENTS", WinError.ERROR_IS_SUBSTED, 296);
            PAYMENT_RECORDS = new ServiceBundle("PAYMENT_RECORDS", 136, 108);
            VINEYARD = new ServiceBundle("VINEYARD", WinError.ERROR_NOT_SUBSTED, 110);
            TRAFFIC_TEST_SERVER_HORIZON = new ServiceBundle("TRAFFIC_TEST_SERVER_HORIZON", WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_BUFFER_OVERFLOW);
            TRAFFIC_PERF_TEST_HORIZON = new ServiceBundle("TRAFFIC_PERF_TEST_HORIZON", WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_CANT_TERMINATE_SELF);
            DCP_LOADTEST = new ServiceBundle("DCP_LOADTEST", WinError.ERROR_JOIN_TO_SUBST, 344);
            HADOOP_DECOM = new ServiceBundle("HADOOP_DECOM", WinError.ERROR_SUBST_TO_JOIN, 112);
            AFFIRM_FPI = new ServiceBundle("AFFIRM_FPI", 142, WinError.ERROR_NO_MORE_SEARCH_HANDLES);
            SOLBOOK = new ServiceBundle("SOLBOOK", WinError.ERROR_SAME_DRIVE, WinError.ERROR_INVALID_TARGET_HANDLE);
            RUBY_SERVICES = new ServiceBundle("RUBY_SERVICES", WinError.ERROR_DIR_NOT_ROOT, 115);
            CARTOGRAPHER = new ServiceBundle("CARTOGRAPHER", WinError.ERROR_DIR_NOT_EMPTY, 116);
            CUSTOMERS = new ServiceBundle("CUSTOMERS", WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_INVALID_CATEGORY);
            KAFKA_CONTROL_PLANE = new ServiceBundle("KAFKA_CONTROL_PLANE", WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_BAD_DRIVER_LEVEL);
            CUSTOMER_FRAUD = new ServiceBundle("CUSTOMER_FRAUD", WinError.ERROR_PATH_BUSY, WinError.ERROR_CALL_NOT_IMPLEMENTED);
            HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED = new ServiceBundle("HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED", WinError.ERROR_IS_SUBST_TARGET, 512);
            ENFORCEMENT_PLATFORM = new ServiceBundle("ENFORCEMENT_PLATFORM", WinError.ERROR_SYSTEM_TRACE, WinError.ERROR_SEM_TIMEOUT);
            CRYPTO_EXCHANGE = new ServiceBundle("CRYPTO_EXCHANGE", WinError.ERROR_INVALID_EVENT_COUNT, 122);
            CAPABILITY_POLICY = new ServiceBundle("CAPABILITY_POLICY", WinError.ERROR_TOO_MANY_MUXWAITERS, WinError.ERROR_NO_VOLUME_LABEL);
            COSTPLUS = new ServiceBundle("COSTPLUS", WinError.ERROR_INVALID_LIST_FORMAT, 126);
            BNZ_BPI = new ServiceBundle("BNZ_BPI", WinError.ERROR_LABEL_TOO_LONG, 127);
            BOOKS_ORCHESTRATOR = new ServiceBundle("BOOKS_ORCHESTRATOR", 155, 128);
            HORIZON_WORKFLOW_EXAMPLE = new ServiceBundle("HORIZON_WORKFLOW_EXAMPLE", WinError.ERROR_SIGNAL_REFUSED, 129);
            BILLING_TIME = new ServiceBundle("BILLING_TIME", WinError.ERROR_DISCARDED, 130);
            BILLING_SUBSCRIPTIONS = new ServiceBundle("BILLING_SUBSCRIPTIONS", WinError.ERROR_NOT_LOCKED, WinError.ERROR_SEEK_ON_DEVICE);
            MRI = new ServiceBundle("MRI", WinError.ERROR_BAD_THREADID_ADDR, WinError.ERROR_IS_JOIN_TARGET);
            CARDS_NETWORK_TOKENS = new ServiceBundle("CARDS_NETWORK_TOKENS", 160, 136);
            ARANEA = new ServiceBundle("ARANEA", 161, 256);
            AFFOGATO = new ServiceBundle("AFFOGATO", 162, WinError.ERROR_SUBST_TO_SUBST);
            PAYNOW_FPI = new ServiceBundle("PAYNOW_FPI", WinUser.VK_RCONTROL, WinError.ERROR_JOIN_TO_SUBST);
            SCA_OPTIMIZATIONS = new ServiceBundle("SCA_OPTIMIZATIONS", 164, WinError.ERROR_SUBST_TO_JOIN);
            SANDBOX_API = new ServiceBundle("SANDBOX_API", WinUser.VK_RMENU, 533);
            CASHFLOWS = new ServiceBundle("CASHFLOWS", 166, WinError.ERROR_DIR_NOT_EMPTY);
            LIQUIDITYENGINE_V2 = new ServiceBundle("LIQUIDITYENGINE_V2", WinError.ERROR_LOCK_FAILED, 435);
            LIQUIDITYENGINE_NEXT = new ServiceBundle("LIQUIDITYENGINE_NEXT", 168, 436);
            SECURITY_DEMO_HORIZON = new ServiceBundle("SECURITY_DEMO_HORIZON", 169, WinError.ERROR_SERVICE_SPECIFIC_ERROR);
            CASH_PREDICTIONS = new ServiceBundle("CASH_PREDICTIONS", WinError.ERROR_BUSY, 290);
            OT_FPI = new ServiceBundle("OT_FPI", 171, WinError.ERROR_IS_JOIN_PATH);
            NOTIFICATIONS = new ServiceBundle("NOTIFICATIONS", 172, WinError.ERROR_PATH_BUSY);
            FILES = new ServiceBundle("FILES", WinError.ERROR_CANCEL_VIOLATION, 1666);
            BR_ANTICIPATIONS = new ServiceBundle("BR_ANTICIPATIONS", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, WinError.ERROR_IS_SUBST_TARGET);
            RISK_UNDERWRITING = new ServiceBundle("RISK_UNDERWRITING", 175, WinError.ERROR_SYSTEM_TRACE);
            PROMPTPAY_FPI = new ServiceBundle("PROMPTPAY_FPI", 176, WinError.ERROR_INVALID_EVENT_COUNT);
            REVENUE_RECOVERY_RETRY = new ServiceBundle("REVENUE_RECOVERY_RETRY", 177, WinError.ERROR_TOO_MANY_MUXWAITERS);
            OLIVEIRA_TRUST_FUNDING = new ServiceBundle("OLIVEIRA_TRUST_FUNDING", 178, WinError.ERROR_INVALID_LIST_FORMAT);
            RPP_TESTING = new ServiceBundle("RPP_TESTING", 179, WinError.ERROR_LABEL_TOO_LONG);
            INVOICES = new ServiceBundle("INVOICES", WinError.ERROR_INVALID_SEGMENT_NUMBER, 155);
            TRAFFIC_CONTINUOUS_TEST_HORIZON = new ServiceBundle("TRAFFIC_CONTINUOUS_TEST_HORIZON", 181, WinError.ERROR_SIGNAL_REFUSED);
            CITI_SDD_BPI = new ServiceBundle("CITI_SDD_BPI", WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_DISCARDED);
            SALTO_EXAMPLE_SRV = new ServiceBundle("SALTO_EXAMPLE_SRV", WinError.ERROR_ALREADY_EXISTS, WinError.ERROR_NOT_LOCKED);
            CONSTRAINT_SOLVER = new ServiceBundle("CONSTRAINT_SOLVER", 184, WinError.ERROR_PARTIAL_COPY);
            DEPLOYABLE_RESOURCE = new ServiceBundle("DEPLOYABLE_RESOURCE", 185, 301);
            CAPITAL_UNDERWRITING = new ServiceBundle("CAPITAL_UNDERWRITING", WinError.ERROR_INVALID_FLAG_NUMBER, WinError.ERROR_BAD_THREADID_ADDR);
            BORING_TEST_SERVICE = new ServiceBundle("BORING_TEST_SERVICE", WinError.ERROR_SEM_NOT_FOUND, 1698);
            HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP = new ServiceBundle("HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP", WinError.ERROR_INVALID_STARTING_CODESEG, WinError.ERROR_INVALID_EDIT_HEIGHT);
            LEDGER_TRACE = new ServiceBundle("LEDGER_TRACE", WinError.ERROR_INVALID_STACKSEG, 160);
            HORIZON_SANDBOX = new ServiceBundle("HORIZON_SANDBOX", WinError.ERROR_INVALID_MODULETYPE, 161);
            MERCHANT_CASH = new ServiceBundle("MERCHANT_CASH", 191, 162);
            CARD_IMAGE_VERIFICATION = new ServiceBundle("CARD_IMAGE_VERIFICATION", 192, WinUser.VK_RCONTROL);
            SIGNALS = new ServiceBundle("SIGNALS", WinError.ERROR_BAD_EXE_FORMAT, 164);
            HORIZON_SANDBOX_ELECTED = new ServiceBundle("HORIZON_SANDBOX_ELECTED", WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinUser.VK_RMENU);
            HORIZON_MYSQL = new ServiceBundle("HORIZON_MYSQL", WinError.ERROR_INVALID_MINALLOCSIZE, 464);
            INTERVENTION = new ServiceBundle("INTERVENTION", WinError.ERROR_DYNLINK_FROM_INVALID_RING, 166);
            JURISDICTION_SERVICE = new ServiceBundle("JURISDICTION_SERVICE", WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_LOCK_FAILED);
            GRABPAY_FPI = new ServiceBundle("GRABPAY_FPI", WinError.ERROR_INVALID_SEGDPL, 168);
            ALIPAYPLUS_FPI = new ServiceBundle("ALIPAYPLUS_FPI", WinError.ERROR_AUTODATASEG_EXCEEDS_64k, 666);
            UPSTREAM_CONV = new ServiceBundle("UPSTREAM_CONV", 200, 169);
            LOADRUNNER = new ServiceBundle("LOADRUNNER", 201, WinError.ERROR_BUSY);
            TAILOR_APP_SRV = new ServiceBundle("TAILOR_APP_SRV", 202, 171);
            EXPERIENCE_ENGINE = new ServiceBundle("EXPERIENCE_ENGINE", 203, TypedValues.Custom.TYPE_INT);
            QUERY_GATEWAY = new ServiceBundle("QUERY_GATEWAY", HttpStatus.SC_NO_CONTENT, 175);
            PLAYGROUND = new ServiceBundle("PLAYGROUND", 205, 176);
            MONGO_SANDBOX = new ServiceBundle("MONGO_SANDBOX", 206, 177);
            CRYPTO_BPI = new ServiceBundle("CRYPTO_BPI", 207, 178);
            BULKIMPORT = new ServiceBundle("BULKIMPORT", WinError.ERROR_META_EXPANSION_TOO_LONG, 179);
            INVOICEBILL = new ServiceBundle("INVOICEBILL", WinError.ERROR_INVALID_SIGNAL_NUMBER, WinError.ERROR_INVALID_SEGMENT_NUMBER);
            HDFC_FPI = new ServiceBundle("HDFC_FPI", WinError.ERROR_THREAD_1_INACTIVE, 181);
            FORWARDING = new ServiceBundle("FORWARDING", 211, WinError.ERROR_ALREADY_EXISTS);
            DIORAMA = new ServiceBundle("DIORAMA", WinError.ERROR_LOCKED, 184);
            EFI = new ServiceBundle("EFI", 213, 1533);
            ACCOUNTS_UFA = new ServiceBundle("ACCOUNTS_UFA", WinError.ERROR_TOO_MANY_MODULES, 185);
            COMPARTMENTS = new ServiceBundle("COMPARTMENTS", WinError.ERROR_NESTING_NOT_ALLOWED, 370);
            LOGGING_EXAMPLE = new ServiceBundle("LOGGING_EXAMPLE", WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, WinError.ERROR_INVALID_FLAG_NUMBER);
            ONBOARDING = new ServiceBundle("ONBOARDING", WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, WinError.ERROR_SEM_NOT_FOUND);
            PMONBOARDING = new ServiceBundle("PMONBOARDING", WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, WinError.ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE);
            PRODUCT_CATALOG = new ServiceBundle("PRODUCT_CATALOG", 219, WinError.ERROR_INVALID_STACKSEG);
            MONSTER_EXPRESS_EXAMPLE = new ServiceBundle("MONSTER_EXPRESS_EXAMPLE", WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_INVALID_MODULETYPE);
            MRI_BRIDGE = new ServiceBundle("MRI_BRIDGE", WinError.ERROR_CHECKOUT_REQUIRED, 191);
            MERGEQ_WORKER = new ServiceBundle("MERGEQ_WORKER", WinError.ERROR_BAD_FILE_TYPE, 192);
            TEST_RANDOM_SERVICE = new ServiceBundle("TEST_RANDOM_SERVICE", WinError.ERROR_FILE_TOO_LARGE, WinError.ERROR_WINDOW_NOT_COMBOBOX);
            CONTACTS = new ServiceBundle("CONTACTS", WinError.ERROR_FORMS_AUTH_REQUIRED, WinError.ERROR_BAD_EXE_FORMAT);
            STRIPETAX_REPORTING = new ServiceBundle("STRIPETAX_REPORTING", WinError.ERROR_VIRUS_INFECTED, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k);
            PROGRAMMABLE_BALANCE = new ServiceBundle("PROGRAMMABLE_BALANCE", WinError.ERROR_VIRUS_DELETED, WinError.ERROR_INVALID_MINALLOCSIZE);
            STRIPETAX_CONTENT = new ServiceBundle("STRIPETAX_CONTENT", 227, WinError.ERROR_DYNLINK_FROM_INVALID_RING);
            MRI_PLAYGROUND = new ServiceBundle("MRI_PLAYGROUND", 228, WinError.ERROR_IOPL_NOT_ENABLED);
            BTG_BPI = new ServiceBundle("BTG_BPI", WinError.ERROR_PIPE_LOCAL, WinError.ERROR_INVALID_SEGDPL);
            DIORAMA_ASYNC = new ServiceBundle("DIORAMA_ASYNC", WinError.ERROR_BAD_PIPE, WinError.ERROR_AUTODATASEG_EXCEEDS_64k);
            DIORAMA_ROUTER = new ServiceBundle("DIORAMA_ROUTER", WinError.ERROR_PIPE_BUSY, HttpStatus.SC_NO_CONTENT);
            EVENTBUS = new ServiceBundle("EVENTBUS", WinError.ERROR_NO_DATA, 200);
            GRAPHQL_GATEWAY = new ServiceBundle("GRAPHQL_GATEWAY", WinError.ERROR_PIPE_NOT_CONNECTED, 201);
            RECEIVED_FLOWS = new ServiceBundle("RECEIVED_FLOWS", WinError.ERROR_MORE_DATA, 202);
            TRANSACTIONS = new ServiceBundle("TRANSACTIONS", 235, 203);
            NOTIFICATIONS_SRV = new ServiceBundle("NOTIFICATIONS_SRV", 236, 205);
            OUTBOUND_PAYMENTS = new ServiceBundle("OUTBOUND_PAYMENTS", 237, 206);
            OUTBOUND_TRANSFERS = new ServiceBundle("OUTBOUND_TRANSFERS", 238, 260);
            EVENTBUS_EXAMPLE = new ServiceBundle("EVENTBUS_EXAMPLE", 239, 207);
            SCENARIOS_EXAMPLE = new ServiceBundle("SCENARIOS_EXAMPLE", 240, WinError.ERROR_DLL_MIGHT_BE_INCOMPATIBLE);
            PINOT_CONTROL_PLANE_SRV = new ServiceBundle("PINOT_CONTROL_PLANE_SRV", 241, WinError.ERROR_META_EXPANSION_TOO_LONG);
            BTOB_PAYABLE = new ServiceBundle("BTOB_PAYABLE", 242, WinError.ERROR_INVALID_SIGNAL_NUMBER);
            BILLPAY = new ServiceBundle("BILLPAY", 243, WinError.ERROR_DBG_CONTROL_BREAK);
            INVOICING = new ServiceBundle("INVOICING", 244, WinError.ERROR_DISK_RECALIBRATE_FAILED);
            MEMCAR = new ServiceBundle("MEMCAR", 245, WinError.ERROR_THREAD_1_INACTIVE);
            MEMADMIN = new ServiceBundle("MEMADMIN", 246, WinError.ERROR_VIRUS_INFECTED);
            MEMLOAD = new ServiceBundle("MEMLOAD", 247, 333);
            MEMSLO = new ServiceBundle("MEMSLO", 248, 334);
            MEMENTOSRV = new ServiceBundle("MEMENTOSRV", 249, WinError.ERROR_PRIVATE_DIALOG_INDEX);
            PROFILES = new ServiceBundle("PROFILES", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, WinError.ERROR_PNP_BAD_MPS_TABLE);
            SRR_AUTOMATION = new ServiceBundle("SRR_AUTOMATION", 251, 844);
            SRR_AUTOMATION_SERVICE = new ServiceBundle("SRR_AUTOMATION_SERVICE", 252, 845);
            VPS_MGMT = new ServiceBundle("VPS_MGMT", 253, 842);
            VPS = new ServiceBundle("VPS", WinError.ERROR_INVALID_EA_NAME, 843);
            DATASTORE = new ServiceBundle("DATASTORE", 255, WinError.ERROR_ACCOUNT_DISABLED);
            CSTT_SERVICE_FOO = new ServiceBundle("CSTT_SERVICE_FOO", 256, 364);
            SEARCH_INGEST = new ServiceBundle("SEARCH_INGEST", 257, 1024);
            SEARCH_CONTROL_PLANE = new ServiceBundle("SEARCH_CONTROL_PLANE", 258, InputDeviceCompat.SOURCE_GAMEPAD);
            WIDGET_FACTORY = new ServiceBundle("WIDGET_FACTORY", 259, WinError.ERROR_MEMORY_HARDWARE);
            OLIVERIATRUSTFUNDING = new ServiceBundle("OLIVERIATRUSTFUNDING", 260, 211);
            GIROCARD = new ServiceBundle("GIROCARD", WinUser.WM_SYSKEYUP, WinError.ERROR_LOCKED);
            REVENUE_MANAGEMENT_PAYMENTS = new ServiceBundle("REVENUE_MANAGEMENT_PAYMENTS", 262, 943);
            WELLS_ACH_BPI = new ServiceBundle("WELLS_ACH_BPI", 263, 213);
            BPI_COORDINATOR = new ServiceBundle("BPI_COORDINATOR", 264, WinError.ERROR_TOO_MANY_MODULES);
            WELLS_BPI = new ServiceBundle("WELLS_BPI", 265, 280);
            KEYHANDLE = new ServiceBundle("KEYHANDLE", WinError.ERROR_CANNOT_COPY, WinError.ERROR_NESTING_NOT_ALLOWED);
            MC_CROSSBORDER_BPI = new ServiceBundle("MC_CROSSBORDER_BPI", WinError.ERROR_DIRECTORY, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH);
            LEGAL_ENTITIES = new ServiceBundle("LEGAL_ENTITIES", 268, 242);
            FINANCIAL_ACCOUNTS = new ServiceBundle("FINANCIAL_ACCOUNTS", 269, 308);
            FEATURES = new ServiceBundle("FEATURES", 270, WinError.ERROR_TIMER_NOT_CANCELED);
            IAM_CONTROL_PLANE = new ServiceBundle("IAM_CONTROL_PLANE", 271, 420);
            JAVA_TESTBED = new ServiceBundle("JAVA_TESTBED", 272, 1699);
            IAM_DATA_PLANE = new ServiceBundle("IAM_DATA_PLANE", 273, 421);
            SFTP = new ServiceBundle("SFTP", WinUser.WM_SYSCOMMAND, WinError.ERROR_WAIT_63);
            TRANSMISSION = new ServiceBundle("TRANSMISSION", WinError.ERROR_EAS_DIDNT_FIT, WinError.ERROR_ABANDONED_WAIT_0);
            COSTOPT = new ServiceBundle("COSTOPT", WinError.ERROR_EA_FILE_CORRUPT, 444);
            USER_LOGIN = new ServiceBundle("USER_LOGIN", WinError.ERROR_EA_TABLE_FULL, WinError.ERROR_BAD_FILE_TYPE);
            IAM_USER_LOGIN = new ServiceBundle("IAM_USER_LOGIN", WinError.ERROR_INVALID_EA_HANDLE, 422);
            DASHPLAT = new ServiceBundle("DASHPLAT", 279, 465);
            OAUTH_CONNECTORS = new ServiceBundle("OAUTH_CONNECTORS", 280, 500);
            IAM_CONTROL_PLANE_SRV = new ServiceBundle("IAM_CONTROL_PLANE_SRV", 281, WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY);
            GPTN_OLAP_SERVICE = new ServiceBundle("GPTN_OLAP_SERVICE", WinError.ERROR_EAS_NOT_SUPPORTED, WinError.ERROR_CANNOT_DETECT_DRIVER_FAILURE);
            ACCOUNTS_DATAPLANE = new ServiceBundle("ACCOUNTS_DATAPLANE", 283, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY);
            SECURITY_AWS_ISOLATION_GUINEA_PIG = new ServiceBundle("SECURITY_AWS_ISOLATION_GUINEA_PIG", 284, 219);
            ACCOUNTS_INTEROP = new ServiceBundle("ACCOUNTS_INTEROP", 285, WinError.ERROR_FILE_CHECKED_OUT);
            FINANCIAL_ADDRESSES = new ServiceBundle("FINANCIAL_ADDRESSES", 286, 240);
            EVENTBUS_CONTROL_PLANE = new ServiceBundle("EVENTBUS_CONTROL_PLANE", 287, 241);
            PANDORA_TESTING = new ServiceBundle("PANDORA_TESTING", WinError.ERROR_NOT_OWNER, WinError.ERROR_PORT_NOT_SET);
            SCB_HTTP_BPI = new ServiceBundle("SCB_HTTP_BPI", 289, 354);
            STRIPETAX_FILING = new ServiceBundle("STRIPETAX_FILING", 290, 393);
            BAREBONES = new ServiceBundle("BAREBONES", 291, 396);
            WEBAUTHN = new ServiceBundle("WEBAUTHN", 292, WinError.ERROR_SPECIAL_GROUP);
            HORIGATO = new ServiceBundle("HORIGATO", 293, 400);
            SCENARIO_COLLECTIONS = new ServiceBundle("SCENARIO_COLLECTIONS", 294, 1011);
            DATA_ANONYMIZATION = new ServiceBundle("DATA_ANONYMIZATION", 295, 872);
            BAAS_AUTH = new ServiceBundle("BAAS_AUTH", 296, 401);
            GPTN_ACCOUNTS = new ServiceBundle("GPTN_ACCOUNTS", 297, HttpStatus.SC_PRECONDITION_FAILED);
            MECHANIC_CONTROL_SERVICE = new ServiceBundle("MECHANIC_CONTROL_SERVICE", WinError.ERROR_TOO_MANY_POSTS, WinError.ERROR_INSTALL_PACKAGE_OPEN_FAILED);
            ORIGINATED_MONEY_OUT = new ServiceBundle("ORIGINATED_MONEY_OUT", WinError.ERROR_PARTIAL_COPY, HttpStatus.SC_REQUEST_TOO_LONG);
            MMS_ORCHESTRATOR = new ServiceBundle("MMS_ORCHESTRATOR", 300, HttpStatus.SC_REQUEST_URI_TOO_LONG);
            ONLINEDBONBOARDING = new ServiceBundle("ONLINEDBONBOARDING", 301, 306);
            ServiceBundle[] serviceBundleArr$values = $values();
            $VALUES = serviceBundleArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(serviceBundleArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ServiceBundle.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ServiceBundle>(orCreateKotlinClass, syntax, serviceBundle) { // from class: com.stripe.proto.model.common.ResourceIdPb$ServiceBundle$Companion$ADAPTER$1
                {
                    ResourceIdPb.ServiceBundle serviceBundle2 = serviceBundle;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ResourceIdPb.ServiceBundle fromValue(int value) {
                    return ResourceIdPb.ServiceBundle.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ResourceIdPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ServiceBundle fromValue(int value) {
                if (value == 12) {
                    return ServiceBundle.HORIZON_REMOTE_EXECUTION;
                }
                if (value == 13) {
                    return ServiceBundle.KUBERNETES;
                }
                if (value == 15) {
                    return ServiceBundle.HORIZON_EXAMPLE;
                }
                if (value != 16) {
                    switch (value) {
                        case 0:
                            return ServiceBundle.SERVICE_BUNDLE_INVALID;
                        case 1:
                            return ServiceBundle.EXAMPLE;
                        case 2:
                            return ServiceBundle.TERMINAL;
                        case 3:
                            return ServiceBundle.BATCH_ASSEMBLER;
                        case 4:
                            return ServiceBundle.BATCH_INTERPRETATION;
                        case 5:
                            return ServiceBundle.BATCH_SUBMISSION;
                        case 6:
                            return ServiceBundle.BATCH_ACKNOWLEDGE;
                        case 7:
                            return ServiceBundle.TAX;
                        case 8:
                            return ServiceBundle.EXTERNAL_SERVICE_BUNDLE;
                        case 9:
                            return ServiceBundle.HORIZON_BENCHMARK;
                        case 10:
                            return ServiceBundle.ANTI_ABUSE;
                        default:
                            switch (value) {
                                case 18:
                                    return ServiceBundle.PAYOUTS;
                                case 19:
                                    return ServiceBundle.PMPLATFORM_DISTRIBUTION;
                                case 20:
                                    return ServiceBundle.PMPLATFORM_RECON;
                                case 21:
                                    return ServiceBundle.PMPLATFORM_TXN;
                                default:
                                    switch (value) {
                                        case 24:
                                            return ServiceBundle.MIRADOR;
                                        case 25:
                                            return ServiceBundle.THREE_D_SECURE;
                                        case 26:
                                            return ServiceBundle.MONETIZATION_COST_INVOICES;
                                        case 27:
                                            return ServiceBundle.BALANCES;
                                        case 28:
                                            return ServiceBundle.DUMMY_AUTH_PUSH_FPI;
                                        case 29:
                                            return ServiceBundle.HORIZON_SLACK;
                                        case 30:
                                            return ServiceBundle.REVENUE_ENGINE;
                                        case 31:
                                            return ServiceBundle.HORIZON_DEPLOY;
                                        default:
                                            switch (value) {
                                                case 33:
                                                    return ServiceBundle.BANK_TRANSFERS_FPI;
                                                case 34:
                                                    return ServiceBundle.AFTERPAY_CLEARPAY_FPI;
                                                case 35:
                                                    return ServiceBundle.DEPLOY_TEST;
                                                case 36:
                                                    return ServiceBundle.WECHATPAY_FPI;
                                                case 37:
                                                    return ServiceBundle.ROLLOUT_CONFIG_TEST_ONE;
                                                case 38:
                                                    return ServiceBundle.ROLLOUT_CONFIG_TEST_TWO;
                                                case 39:
                                                    return ServiceBundle.ROLLOUT_CONFIG_TEST_THREE;
                                                case 40:
                                                    return ServiceBundle.BILLDESK_FPI;
                                                case 41:
                                                    return ServiceBundle.PRICING_SPEC_MANAGER;
                                                case 42:
                                                    return ServiceBundle.BLIK_FPI;
                                                case 43:
                                                    return ServiceBundle.INDONESIA_CREDIT_TRANSFERS;
                                                case 44:
                                                    return ServiceBundle.PAYOUTS_INCOMING_TRANSACTION;
                                                case 45:
                                                    return ServiceBundle.PAYOUTS_VBAN;
                                                case 46:
                                                    return ServiceBundle.PAYOUTS_CASH_REPORTING;
                                                case 47:
                                                    return ServiceBundle.CITADEL;
                                                case 48:
                                                    return ServiceBundle.SALTO_JOBLIB;
                                                case 49:
                                                    return ServiceBundle.BOOKKEEPER_EXAMPLE;
                                                case 50:
                                                    return ServiceBundle.NETWORK_COSTS;
                                                case 51:
                                                    return ServiceBundle.BOLETO_FPI;
                                                case 52:
                                                    return ServiceBundle.ECONTEXT_FPI;
                                                case 53:
                                                    return ServiceBundle.CARDS_AUTH;
                                                case 54:
                                                    return ServiceBundle.CARDS_SHIELD;
                                                case 55:
                                                    return ServiceBundle.CANARY_ELECTED;
                                                default:
                                                    switch (value) {
                                                        case 57:
                                                            return ServiceBundle.FP_REPORTING;
                                                        case 58:
                                                            return ServiceBundle.SALTO_POLICY;
                                                        case 59:
                                                            return ServiceBundle.HUBBLE;
                                                        case 60:
                                                            return ServiceBundle.BOOKS;
                                                        default:
                                                            switch (value) {
                                                                case 62:
                                                                    return ServiceBundle.RESOURCE_BUFFER;
                                                                case 63:
                                                                    return ServiceBundle.WELLS_ACH_FPI;
                                                                case 64:
                                                                    return ServiceBundle.CLIENT_LOGGER;
                                                                case 65:
                                                                    return ServiceBundle.HORIZON_RPC_BENCHMARKING;
                                                                case 66:
                                                                    return ServiceBundle.ORIGINATED_TRANSFERS;
                                                                case 67:
                                                                    return ServiceBundle.ACCOUNTS;
                                                                case 68:
                                                                    return ServiceBundle.LIQUIDITY_ENGINE;
                                                                case 69:
                                                                    return ServiceBundle.MONEYOUT;
                                                                case 70:
                                                                    return ServiceBundle.HORIZON_LITMUS_ELECTED;
                                                                case 71:
                                                                    return ServiceBundle.HORIZON_LITMUS_STATELESS;
                                                                case 72:
                                                                    return ServiceBundle.CONSUMER;
                                                                case 73:
                                                                    return ServiceBundle.FX_RATES;
                                                                case 74:
                                                                    return ServiceBundle.ANALYTICS_EVENT_LOGGER;
                                                                case 75:
                                                                    return ServiceBundle.EVENT_CHANNEL;
                                                                case 76:
                                                                    return ServiceBundle.MONEY_IN;
                                                                case 77:
                                                                    return ServiceBundle.AUTO_DEBIT;
                                                                case 78:
                                                                    return ServiceBundle.TELEMETRY;
                                                                case 79:
                                                                    return ServiceBundle.RISK_RESERVES;
                                                                case 80:
                                                                    return ServiceBundle.PAYFLOWS_PLATFORM;
                                                                case 81:
                                                                    return ServiceBundle.SHIELD;
                                                                case 82:
                                                                    return ServiceBundle.MOVE_CRON;
                                                                case 83:
                                                                    return ServiceBundle.ATTRIBUTION;
                                                                case 84:
                                                                    return ServiceBundle.HORIZON_HENSON;
                                                                case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                                                                    return ServiceBundle.API_GATEWAY;
                                                                case 86:
                                                                    return ServiceBundle.SALTO_EXPLANATION;
                                                                case 87:
                                                                    return ServiceBundle.GATEWAY_SELECTION;
                                                                case 88:
                                                                    return ServiceBundle.HORIZON_HENSON_ELECTED;
                                                                case 89:
                                                                    return ServiceBundle.PAYMENT_METHODS;
                                                                case 90:
                                                                    return ServiceBundle.IDENTITY_LOOKUP;
                                                                case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
                                                                    return ServiceBundle.SUBMISSION_SCHEDULER;
                                                                case WinUser.SM_CXPADDEDBORDER /* 92 */:
                                                                    return ServiceBundle.CITI_BPI;
                                                                case 136:
                                                                    return ServiceBundle.CARDS_NETWORK_TOKENS;
                                                                case WinError.ERROR_NOT_SUBSTED /* 137 */:
                                                                    return ServiceBundle.TERMINALASSETINSPECT;
                                                                case WinError.ERROR_JOIN_TO_JOIN /* 138 */:
                                                                    return ServiceBundle.PAYPAL_FPI;
                                                                case WinError.ERROR_SUBST_TO_SUBST /* 139 */:
                                                                    return ServiceBundle.AFFOGATO;
                                                                case WinError.ERROR_JOIN_TO_SUBST /* 140 */:
                                                                    return ServiceBundle.PAYNOW_FPI;
                                                                case WinError.ERROR_SUBST_TO_JOIN /* 141 */:
                                                                    return ServiceBundle.SCA_OPTIMIZATIONS;
                                                                case 142:
                                                                    return ServiceBundle.HORIZON_AVALON;
                                                                case WinError.ERROR_SAME_DRIVE /* 143 */:
                                                                    return ServiceBundle.CLEANSIGS;
                                                                case WinError.ERROR_DIR_NOT_ROOT /* 144 */:
                                                                    return ServiceBundle.CONSUMER_AUTH;
                                                                case WinError.ERROR_DIR_NOT_EMPTY /* 145 */:
                                                                    return ServiceBundle.CASHFLOWS;
                                                                case WinError.ERROR_IS_SUBST_PATH /* 146 */:
                                                                    return ServiceBundle.BTG_PIX_FPI;
                                                                case WinError.ERROR_IS_JOIN_PATH /* 147 */:
                                                                    return ServiceBundle.OT_FPI;
                                                                case WinError.ERROR_PATH_BUSY /* 148 */:
                                                                    return ServiceBundle.NOTIFICATIONS;
                                                                case WinError.ERROR_IS_SUBST_TARGET /* 149 */:
                                                                    return ServiceBundle.BR_ANTICIPATIONS;
                                                                case WinError.ERROR_SYSTEM_TRACE /* 150 */:
                                                                    return ServiceBundle.RISK_UNDERWRITING;
                                                                case WinError.ERROR_INVALID_EVENT_COUNT /* 151 */:
                                                                    return ServiceBundle.PROMPTPAY_FPI;
                                                                case WinError.ERROR_TOO_MANY_MUXWAITERS /* 152 */:
                                                                    return ServiceBundle.REVENUE_RECOVERY_RETRY;
                                                                case WinError.ERROR_INVALID_LIST_FORMAT /* 153 */:
                                                                    return ServiceBundle.OLIVEIRA_TRUST_FUNDING;
                                                                case WinError.ERROR_LABEL_TOO_LONG /* 154 */:
                                                                    return ServiceBundle.RPP_TESTING;
                                                                case 155:
                                                                    return ServiceBundle.INVOICES;
                                                                case WinError.ERROR_SIGNAL_REFUSED /* 156 */:
                                                                    return ServiceBundle.TRAFFIC_CONTINUOUS_TEST_HORIZON;
                                                                case WinError.ERROR_DISCARDED /* 157 */:
                                                                    return ServiceBundle.CITI_SDD_BPI;
                                                                case WinError.ERROR_NOT_LOCKED /* 158 */:
                                                                    return ServiceBundle.SALTO_EXAMPLE_SRV;
                                                                case WinError.ERROR_BAD_THREADID_ADDR /* 159 */:
                                                                    return ServiceBundle.CAPITAL_UNDERWRITING;
                                                                case 160:
                                                                    return ServiceBundle.LEDGER_TRACE;
                                                                case 161:
                                                                    return ServiceBundle.HORIZON_SANDBOX;
                                                                case 162:
                                                                    return ServiceBundle.MERCHANT_CASH;
                                                                case WinUser.VK_RCONTROL /* 163 */:
                                                                    return ServiceBundle.CARD_IMAGE_VERIFICATION;
                                                                case 164:
                                                                    return ServiceBundle.SIGNALS;
                                                                case WinUser.VK_RMENU /* 165 */:
                                                                    return ServiceBundle.HORIZON_SANDBOX_ELECTED;
                                                                case 166:
                                                                    return ServiceBundle.INTERVENTION;
                                                                case WinError.ERROR_LOCK_FAILED /* 167 */:
                                                                    return ServiceBundle.JURISDICTION_SERVICE;
                                                                case 168:
                                                                    return ServiceBundle.GRABPAY_FPI;
                                                                case 169:
                                                                    return ServiceBundle.UPSTREAM_CONV;
                                                                case WinError.ERROR_BUSY /* 170 */:
                                                                    return ServiceBundle.LOADRUNNER;
                                                                case 171:
                                                                    return ServiceBundle.TAILOR_APP_SRV;
                                                                case 172:
                                                                    return ServiceBundle.IDEAL_FPI;
                                                                case 175:
                                                                    return ServiceBundle.QUERY_GATEWAY;
                                                                case 176:
                                                                    return ServiceBundle.PLAYGROUND;
                                                                case 177:
                                                                    return ServiceBundle.MONGO_SANDBOX;
                                                                case 178:
                                                                    return ServiceBundle.CRYPTO_BPI;
                                                                case 179:
                                                                    return ServiceBundle.BULKIMPORT;
                                                                case WinError.ERROR_INVALID_SEGMENT_NUMBER /* 180 */:
                                                                    return ServiceBundle.INVOICEBILL;
                                                                case 181:
                                                                    return ServiceBundle.HDFC_FPI;
                                                                case WinError.ERROR_INVALID_ORDINAL /* 182 */:
                                                                    return ServiceBundle.CLEARING;
                                                                case WinError.ERROR_ALREADY_EXISTS /* 183 */:
                                                                    return ServiceBundle.FORWARDING;
                                                                case 184:
                                                                    return ServiceBundle.DIORAMA;
                                                                case 185:
                                                                    return ServiceBundle.ACCOUNTS_UFA;
                                                                case WinError.ERROR_INVALID_FLAG_NUMBER /* 186 */:
                                                                    return ServiceBundle.LOGGING_EXAMPLE;
                                                                case WinError.ERROR_SEM_NOT_FOUND /* 187 */:
                                                                    return ServiceBundle.ONBOARDING;
                                                                case WinError.ERROR_INVALID_STARTING_CODESEG /* 188 */:
                                                                    return ServiceBundle.EXAMPLE_NO_LB;
                                                                case WinError.ERROR_INVALID_STACKSEG /* 189 */:
                                                                    return ServiceBundle.PRODUCT_CATALOG;
                                                                case WinError.ERROR_INVALID_MODULETYPE /* 190 */:
                                                                    return ServiceBundle.MONSTER_EXPRESS_EXAMPLE;
                                                                case 191:
                                                                    return ServiceBundle.MRI_BRIDGE;
                                                                case 192:
                                                                    return ServiceBundle.MERGEQ_WORKER;
                                                                case WinError.ERROR_BAD_EXE_FORMAT /* 193 */:
                                                                    return ServiceBundle.CONTACTS;
                                                                case WinError.ERROR_ITERATED_DATA_EXCEEDS_64k /* 194 */:
                                                                    return ServiceBundle.STRIPETAX_REPORTING;
                                                                case WinError.ERROR_INVALID_MINALLOCSIZE /* 195 */:
                                                                    return ServiceBundle.PROGRAMMABLE_BALANCE;
                                                                case WinError.ERROR_DYNLINK_FROM_INVALID_RING /* 196 */:
                                                                    return ServiceBundle.STRIPETAX_CONTENT;
                                                                case WinError.ERROR_IOPL_NOT_ENABLED /* 197 */:
                                                                    return ServiceBundle.MRI_PLAYGROUND;
                                                                case WinError.ERROR_INVALID_SEGDPL /* 198 */:
                                                                    return ServiceBundle.BTG_BPI;
                                                                case WinError.ERROR_AUTODATASEG_EXCEEDS_64k /* 199 */:
                                                                    return ServiceBundle.DIORAMA_ASYNC;
                                                                case 200:
                                                                    return ServiceBundle.EVENTBUS;
                                                                case 201:
                                                                    return ServiceBundle.GRAPHQL_GATEWAY;
                                                                case 202:
                                                                    return ServiceBundle.RECEIVED_FLOWS;
                                                                case 203:
                                                                    return ServiceBundle.TRANSACTIONS;
                                                                case HttpStatus.SC_NO_CONTENT /* 204 */:
                                                                    return ServiceBundle.DIORAMA_ROUTER;
                                                                case 205:
                                                                    return ServiceBundle.NOTIFICATIONS_SRV;
                                                                case 206:
                                                                    return ServiceBundle.OUTBOUND_PAYMENTS;
                                                                case 207:
                                                                    return ServiceBundle.EVENTBUS_EXAMPLE;
                                                                case WinError.ERROR_META_EXPANSION_TOO_LONG /* 208 */:
                                                                    return ServiceBundle.PINOT_CONTROL_PLANE_SRV;
                                                                case WinError.ERROR_INVALID_SIGNAL_NUMBER /* 209 */:
                                                                    return ServiceBundle.BTOB_PAYABLE;
                                                                case WinError.ERROR_THREAD_1_INACTIVE /* 210 */:
                                                                    return ServiceBundle.MEMCAR;
                                                                case 211:
                                                                    return ServiceBundle.OLIVERIATRUSTFUNDING;
                                                                case WinError.ERROR_LOCKED /* 212 */:
                                                                    return ServiceBundle.GIROCARD;
                                                                case 213:
                                                                    return ServiceBundle.WELLS_ACH_BPI;
                                                                case WinError.ERROR_TOO_MANY_MODULES /* 214 */:
                                                                    return ServiceBundle.BPI_COORDINATOR;
                                                                case WinError.ERROR_NESTING_NOT_ALLOWED /* 215 */:
                                                                    return ServiceBundle.KEYHANDLE;
                                                                case WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH /* 216 */:
                                                                    return ServiceBundle.MC_CROSSBORDER_BPI;
                                                                case WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY /* 217 */:
                                                                    return ServiceBundle.IAM_CONTROL_PLANE_SRV;
                                                                case WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY /* 218 */:
                                                                    return ServiceBundle.ACCOUNTS_DATAPLANE;
                                                                case 219:
                                                                    return ServiceBundle.SECURITY_AWS_ISOLATION_GUINEA_PIG;
                                                                case WinError.ERROR_FILE_CHECKED_OUT /* 220 */:
                                                                    return ServiceBundle.ACCOUNTS_INTEROP;
                                                                case WinError.ERROR_CHECKOUT_REQUIRED /* 221 */:
                                                                    return ServiceBundle.KLARNA_FPI;
                                                                case WinError.ERROR_BAD_FILE_TYPE /* 222 */:
                                                                    return ServiceBundle.USER_LOGIN;
                                                                case WinError.ERROR_FILE_TOO_LARGE /* 223 */:
                                                                    return ServiceBundle.RECHNUNG_FPI;
                                                                case WinError.ERROR_FORMS_AUTH_REQUIRED /* 224 */:
                                                                    return ServiceBundle.VENEUR_HORIZON_PROBER;
                                                                case WinError.ERROR_VIRUS_INFECTED /* 225 */:
                                                                    return ServiceBundle.MEMADMIN;
                                                                case 240:
                                                                    return ServiceBundle.FINANCIAL_ADDRESSES;
                                                                case 241:
                                                                    return ServiceBundle.EVENTBUS_CONTROL_PLANE;
                                                                case 242:
                                                                    return ServiceBundle.LEGAL_ENTITIES;
                                                                case 255:
                                                                    return ServiceBundle.GOLDMANSACHS_FPI;
                                                                case 256:
                                                                    return ServiceBundle.ARANEA;
                                                                case 260:
                                                                    return ServiceBundle.OUTBOUND_TRANSFERS;
                                                                case 280:
                                                                    return ServiceBundle.WELLS_BPI;
                                                                case 285:
                                                                    return ServiceBundle.BANK_ROUTING;
                                                                case 290:
                                                                    return ServiceBundle.CASH_PREDICTIONS;
                                                                case 295:
                                                                    return ServiceBundle.GOODS_AND_SERVICES_PLATFORM;
                                                                case 296:
                                                                    return ServiceBundle.GSP_AGREEMENTS;
                                                                case WinError.ERROR_PARTIAL_COPY /* 299 */:
                                                                    return ServiceBundle.CONSTRAINT_SOLVER;
                                                                case 301:
                                                                    return ServiceBundle.DEPLOYABLE_RESOURCE;
                                                                case 306:
                                                                    return ServiceBundle.ONLINEDBONBOARDING;
                                                                case 308:
                                                                    return ServiceBundle.FINANCIAL_ACCOUNTS;
                                                                case 333:
                                                                    return ServiceBundle.MEMLOAD;
                                                                case 334:
                                                                    return ServiceBundle.MEMSLO;
                                                                case 344:
                                                                    return ServiceBundle.DCP_LOADTEST;
                                                                case 354:
                                                                    return ServiceBundle.SCB_HTTP_BPI;
                                                                case 364:
                                                                    return ServiceBundle.CSTT_SERVICE_FOO;
                                                                case 370:
                                                                    return ServiceBundle.COMPARTMENTS;
                                                                case 393:
                                                                    return ServiceBundle.STRIPETAX_FILING;
                                                                case 396:
                                                                    return ServiceBundle.BAREBONES;
                                                                case 400:
                                                                    return ServiceBundle.HORIGATO;
                                                                case 401:
                                                                    return ServiceBundle.BAAS_AUTH;
                                                                case HttpStatus.SC_REQUEST_TIMEOUT /* 408 */:
                                                                    return ServiceBundle.FEATURE_FETCHER;
                                                                case HttpStatus.SC_PRECONDITION_FAILED /* 412 */:
                                                                    return ServiceBundle.GPTN_ACCOUNTS;
                                                                case HttpStatus.SC_REQUEST_TOO_LONG /* 413 */:
                                                                    return ServiceBundle.ORIGINATED_MONEY_OUT;
                                                                case HttpStatus.SC_REQUEST_URI_TOO_LONG /* 414 */:
                                                                    return ServiceBundle.MMS_ORCHESTRATOR;
                                                                case HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE /* 415 */:
                                                                    return ServiceBundle.EXCHANGES;
                                                                case 416:
                                                                    return ServiceBundle.RECEIVED_MONEY_IN;
                                                                case 420:
                                                                    return ServiceBundle.IAM_CONTROL_PLANE;
                                                                case 421:
                                                                    return ServiceBundle.IAM_DATA_PLANE;
                                                                case 422:
                                                                    return ServiceBundle.IAM_USER_LOGIN;
                                                                case 435:
                                                                    return ServiceBundle.LIQUIDITYENGINE_V2;
                                                                case 436:
                                                                    return ServiceBundle.LIQUIDITYENGINE_NEXT;
                                                                case 444:
                                                                    return ServiceBundle.COSTOPT;
                                                                case 451:
                                                                    return ServiceBundle.CSTT_SERVICE_BAR;
                                                                case 454:
                                                                    return ServiceBundle.UDIP_FILE_IMPORT;
                                                                case 455:
                                                                    return ServiceBundle.UDIP_TRANSFORMATION;
                                                                case 464:
                                                                    return ServiceBundle.HORIZON_MYSQL;
                                                                case 465:
                                                                    return ServiceBundle.DASHPLAT;
                                                                case 500:
                                                                    return ServiceBundle.OAUTH_CONNECTORS;
                                                                case 512:
                                                                    return ServiceBundle.HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED;
                                                                case 533:
                                                                    return ServiceBundle.SANDBOX_API;
                                                                case WinError.ERROR_TIMER_NOT_CANCELED /* 541 */:
                                                                    return ServiceBundle.FEATURES;
                                                                case WinError.ERROR_CANT_TERMINATE_SELF /* 555 */:
                                                                    return ServiceBundle.TRAFFIC_PERF_TEST_HORIZON;
                                                                case 603:
                                                                    return ServiceBundle.SHOPEEPAY_FPI;
                                                                case WinError.ERROR_PORT_NOT_SET /* 642 */:
                                                                    return ServiceBundle.PANDORA_TESTING;
                                                                case 666:
                                                                    return ServiceBundle.ALIPAYPLUS_FPI;
                                                                case WinError.ERROR_PNP_BAD_MPS_TABLE /* 671 */:
                                                                    return ServiceBundle.PROFILES;
                                                                case WinError.ERROR_DLL_MIGHT_BE_INCOMPATIBLE /* 687 */:
                                                                    return ServiceBundle.SCENARIOS_EXAMPLE;
                                                                case WinError.ERROR_DBG_CONTROL_BREAK /* 696 */:
                                                                    return ServiceBundle.BILLPAY;
                                                                case WinError.ERROR_WAIT_63 /* 734 */:
                                                                    return ServiceBundle.SFTP;
                                                                case WinError.ERROR_ABANDONED_WAIT_0 /* 735 */:
                                                                    return ServiceBundle.TRANSMISSION;
                                                                case WinError.ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED /* 763 */:
                                                                    return ServiceBundle.EVENT_ENRICHMENT_QS;
                                                                case WinError.ERROR_MEMORY_HARDWARE /* 779 */:
                                                                    return ServiceBundle.WIDGET_FACTORY;
                                                                case WinError.ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE /* 781 */:
                                                                    return ServiceBundle.PMONBOARDING;
                                                                case 811:
                                                                    return ServiceBundle.MOBILEPAY_VIPPS_FPI;
                                                                case 842:
                                                                    return ServiceBundle.VPS_MGMT;
                                                                case 843:
                                                                    return ServiceBundle.VPS;
                                                                case 844:
                                                                    return ServiceBundle.SRR_AUTOMATION;
                                                                case 845:
                                                                    return ServiceBundle.SRR_AUTOMATION_SERVICE;
                                                                case 872:
                                                                    return ServiceBundle.DATA_ANONYMIZATION;
                                                                case TypedValues.Custom.TYPE_INT /* 900 */:
                                                                    return ServiceBundle.EXPERIENCE_ENGINE;
                                                                case 933:
                                                                    return ServiceBundle.DISPUTE_INTERCHANGE_BOOKKEEPING;
                                                                case 943:
                                                                    return ServiceBundle.REVENUE_MANAGEMENT_PAYMENTS;
                                                                case 999:
                                                                    return ServiceBundle.CASHAPP_FPI;
                                                                case 1000:
                                                                    return ServiceBundle.JAVAEXAMPLE;
                                                                case 1011:
                                                                    return ServiceBundle.SCENARIO_COLLECTIONS;
                                                                case 1024:
                                                                    return ServiceBundle.SEARCH_INGEST;
                                                                case InputDeviceCompat.SOURCE_GAMEPAD /* 1025 */:
                                                                    return ServiceBundle.SEARCH_CONTROL_PLANE;
                                                                case WinError.ERROR_SERVICE_SPECIFIC_ERROR /* 1066 */:
                                                                    return ServiceBundle.SECURITY_DEMO_HORIZON;
                                                                case WinError.ERROR_CANNOT_DETECT_DRIVER_FAILURE /* 1080 */:
                                                                    return ServiceBundle.GPTN_OLAP_SERVICE;
                                                                case WinError.ERROR_CANNOT_DETECT_PROCESS_ABORT /* 1081 */:
                                                                    return ServiceBundle.CLIENT_METADATA_SERVICE;
                                                                case WinError.ERROR_DISK_RECALIBRATE_FAILED /* 1126 */:
                                                                    return ServiceBundle.INVOICING;
                                                                case WinError.ERROR_POSSIBLE_DEADLOCK /* 1131 */:
                                                                    return ServiceBundle.SURVEYOR;
                                                                case WinError.ERROR_JOURNAL_ENTRY_DELETED /* 1181 */:
                                                                    return ServiceBundle.FRAUD_SAFETY_MONITOR;
                                                                case WinError.ERROR_ACCOUNT_DISABLED /* 1331 */:
                                                                    return ServiceBundle.DATASTORE;
                                                                case WinError.ERROR_SPECIAL_GROUP /* 1372 */:
                                                                    return ServiceBundle.WEBAUTHN;
                                                                case WinError.ERROR_PRIVATE_DIALOG_INDEX /* 1415 */:
                                                                    return ServiceBundle.MEMENTOSRV;
                                                                case WinError.ERROR_WINDOW_NOT_COMBOBOX /* 1423 */:
                                                                    return ServiceBundle.TEST_RANDOM_SERVICE;
                                                                case WinError.ERROR_INVALID_EDIT_HEIGHT /* 1424 */:
                                                                    return ServiceBundle.HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP;
                                                                case 1533:
                                                                    return ServiceBundle.EFI;
                                                                case 1600:
                                                                    return ServiceBundle.PAYMENT_METHODS_VERSION_TWO;
                                                                case WinError.ERROR_INSTALL_PACKAGE_OPEN_FAILED /* 1619 */:
                                                                    return ServiceBundle.MECHANIC_CONTROL_SERVICE;
                                                                case 1666:
                                                                    return ServiceBundle.FILES;
                                                                case 1698:
                                                                    return ServiceBundle.BORING_TEST_SERVICE;
                                                                case 1699:
                                                                    return ServiceBundle.JAVA_TESTBED;
                                                                default:
                                                                    switch (value) {
                                                                        case 94:
                                                                            return ServiceBundle.TAILOR;
                                                                        case XAttr.ENOTSUP /* 95 */:
                                                                            return ServiceBundle.ISSUING_SPENDING_CONTROLS;
                                                                        case WinNT.LANG_KASHMIRI /* 96 */:
                                                                            return ServiceBundle.BILLING_WFWORKER;
                                                                        case 97:
                                                                            return ServiceBundle.API_AUTH;
                                                                        case 98:
                                                                            return ServiceBundle.MASTERCARD_SEND_BPI;
                                                                        case 99:
                                                                            return ServiceBundle.MERGEQ;
                                                                        case 100:
                                                                            return ServiceBundle.RISK_RULES;
                                                                        case 101:
                                                                            return ServiceBundle.APICORE_SAMPLE;
                                                                        case 102:
                                                                            return ServiceBundle.IAM_GROUPS;
                                                                        case 103:
                                                                            return ServiceBundle.HUBBLE_EDGE;
                                                                        case 104:
                                                                            return ServiceBundle.ISSUING_AUTHORIZATION_VALIDATOR;
                                                                        case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
                                                                            return ServiceBundle.IAM_API;
                                                                        case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                                                                            return ServiceBundle.BILLING_USAGE_EVENT;
                                                                        case WinError.ERROR_DISK_CHANGE /* 107 */:
                                                                            return ServiceBundle.BILLING_USAGE_EVENT_INGESTION;
                                                                        case 108:
                                                                            return ServiceBundle.PAYMENT_RECORDS;
                                                                        default:
                                                                            switch (value) {
                                                                                case 110:
                                                                                    return ServiceBundle.VINEYARD;
                                                                                case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                                                                                    return ServiceBundle.TRAFFIC_TEST_SERVER_HORIZON;
                                                                                case 112:
                                                                                    return ServiceBundle.HADOOP_DECOM;
                                                                                case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                                                                                    return ServiceBundle.AFFIRM_FPI;
                                                                                case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                                                                                    return ServiceBundle.SOLBOOK;
                                                                                case 115:
                                                                                    return ServiceBundle.RUBY_SERVICES;
                                                                                case 116:
                                                                                    return ServiceBundle.CARTOGRAPHER;
                                                                                case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                                                                                    return ServiceBundle.CUSTOMERS;
                                                                                case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                                                                                    return ServiceBundle.TERMINALAPPSIGNER;
                                                                                case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                                                                                    return ServiceBundle.KAFKA_CONTROL_PLANE;
                                                                                case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                                                                                    return ServiceBundle.CUSTOMER_FRAUD;
                                                                                case WinError.ERROR_SEM_TIMEOUT /* 121 */:
                                                                                    return ServiceBundle.ENFORCEMENT_PLATFORM;
                                                                                case 122:
                                                                                    return ServiceBundle.CRYPTO_EXCHANGE;
                                                                                case 123:
                                                                                    return ServiceBundle.IOT_RELAY;
                                                                                case WinError.ERROR_INVALID_LEVEL /* 124 */:
                                                                                    return ServiceBundle.TERMINALAUTH;
                                                                                case WinError.ERROR_NO_VOLUME_LABEL /* 125 */:
                                                                                    return ServiceBundle.CAPABILITY_POLICY;
                                                                                case 126:
                                                                                    return ServiceBundle.COSTPLUS;
                                                                                case 127:
                                                                                    return ServiceBundle.BNZ_BPI;
                                                                                case 128:
                                                                                    return ServiceBundle.BOOKS_ORCHESTRATOR;
                                                                                case 129:
                                                                                    return ServiceBundle.HORIZON_WORKFLOW_EXAMPLE;
                                                                                case 130:
                                                                                    return ServiceBundle.BILLING_TIME;
                                                                                case 131:
                                                                                    return ServiceBundle.TINK_FPI;
                                                                                case WinError.ERROR_SEEK_ON_DEVICE /* 132 */:
                                                                                    return ServiceBundle.BILLING_SUBSCRIPTIONS;
                                                                                case WinError.ERROR_IS_JOIN_TARGET /* 133 */:
                                                                                    return ServiceBundle.MRI;
                                                                                case WinError.ERROR_IS_JOINED /* 134 */:
                                                                                    return ServiceBundle.IOT_MANAGE;
                                                                                default:
                                                                                    return null;
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                }
                return ServiceBundle.CARD_METADATA;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CONTENT_ENCODING_INVALID", "PARQUET", "PROTO3", "JSON", "JSON_PROTO3", "PARTNER", "BSON", "PROTO_ASCII", "YAML", "PROTO3_COMPRESSED", "FOLDED_STACKS_COMPRESSED", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ContentEncoding implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ContentEncoding[] $VALUES;
        public static final ProtoAdapter<ContentEncoding> ADAPTER;
        public static final ContentEncoding BSON;
        public static final ContentEncoding CONTENT_ENCODING_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ContentEncoding FOLDED_STACKS_COMPRESSED;
        public static final ContentEncoding JSON;
        public static final ContentEncoding JSON_PROTO3;
        public static final ContentEncoding PARQUET;
        public static final ContentEncoding PARTNER;
        public static final ContentEncoding PROTO3;
        public static final ContentEncoding PROTO3_COMPRESSED;
        public static final ContentEncoding PROTO_ASCII;
        public static final ContentEncoding YAML;
        private final int value;

        private static final /* synthetic */ ContentEncoding[] $values() {
            return new ContentEncoding[]{CONTENT_ENCODING_INVALID, PARQUET, PROTO3, JSON, JSON_PROTO3, PARTNER, BSON, PROTO_ASCII, YAML, PROTO3_COMPRESSED, FOLDED_STACKS_COMPRESSED};
        }

        @JvmStatic
        public static final ContentEncoding fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ContentEncoding> getEntries() {
            return $ENTRIES;
        }

        public static ContentEncoding valueOf(String str) {
            return (ContentEncoding) Enum.valueOf(ContentEncoding.class, str);
        }

        public static ContentEncoding[] values() {
            return (ContentEncoding[]) $VALUES.clone();
        }

        private ContentEncoding(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ContentEncoding contentEncoding = new ContentEncoding("CONTENT_ENCODING_INVALID", 0, 0);
            CONTENT_ENCODING_INVALID = contentEncoding;
            PARQUET = new ContentEncoding("PARQUET", 1, 1);
            PROTO3 = new ContentEncoding("PROTO3", 2, 2);
            JSON = new ContentEncoding("JSON", 3, 3);
            JSON_PROTO3 = new ContentEncoding("JSON_PROTO3", 4, 4);
            PARTNER = new ContentEncoding("PARTNER", 5, 5);
            BSON = new ContentEncoding("BSON", 6, 6);
            PROTO_ASCII = new ContentEncoding("PROTO_ASCII", 7, 7);
            YAML = new ContentEncoding("YAML", 8, 8);
            PROTO3_COMPRESSED = new ContentEncoding("PROTO3_COMPRESSED", 9, 9);
            FOLDED_STACKS_COMPRESSED = new ContentEncoding("FOLDED_STACKS_COMPRESSED", 10, 10);
            ContentEncoding[] contentEncodingArr$values = $values();
            $VALUES = contentEncodingArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(contentEncodingArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ContentEncoding.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ContentEncoding>(orCreateKotlinClass, syntax, contentEncoding) { // from class: com.stripe.proto.model.common.ResourceIdPb$ContentEncoding$Companion$ADAPTER$1
                {
                    ResourceIdPb.ContentEncoding contentEncoding2 = contentEncoding;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ResourceIdPb.ContentEncoding fromValue(int value) {
                    return ResourceIdPb.ContentEncoding.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ResourceIdPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ContentEncoding fromValue(int value) {
                switch (value) {
                    case 0:
                        return ContentEncoding.CONTENT_ENCODING_INVALID;
                    case 1:
                        return ContentEncoding.PARQUET;
                    case 2:
                        return ContentEncoding.PROTO3;
                    case 3:
                        return ContentEncoding.JSON;
                    case 4:
                        return ContentEncoding.JSON_PROTO3;
                    case 5:
                        return ContentEncoding.PARTNER;
                    case 6:
                        return ContentEncoding.BSON;
                    case 7:
                        return ContentEncoding.PROTO_ASCII;
                    case 8:
                        return ContentEncoding.YAML;
                    case 9:
                        return ContentEncoding.PROTO3_COMPRESSED;
                    case 10:
                        return ContentEncoding.FOLDED_STACKS_COMPRESSED;
                    default:
                        return null;
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ResourceIdPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Status;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STATUS_INVALID", "SUCCESS", "FAILURE", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Status implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final ProtoAdapter<Status> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Status FAILURE;
        public static final Status STATUS_INVALID;
        public static final Status SUCCESS;
        private final int value;

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{STATUS_INVALID, SUCCESS, FAILURE};
        }

        @JvmStatic
        public static final Status fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Status status = new Status("STATUS_INVALID", 0, 0);
            STATUS_INVALID = status;
            SUCCESS = new Status("SUCCESS", 1, 1);
            FAILURE = new Status("FAILURE", 2, 2);
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Status.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Status>(orCreateKotlinClass, syntax, status) { // from class: com.stripe.proto.model.common.ResourceIdPb$Status$Companion$ADAPTER$1
                {
                    ResourceIdPb.Status status2 = status;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ResourceIdPb.Status fromValue(int value) {
                    return ResourceIdPb.Status.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ResourceIdPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ResourceIdPb$Status$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ResourceIdPb$Status;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Status fromValue(int value) {
                if (value == 0) {
                    return Status.STATUS_INVALID;
                }
                if (value == 1) {
                    return Status.SUCCESS;
                }
                if (value != 2) {
                    return null;
                }
                return Status.FAILURE;
            }
        }
    }
}
