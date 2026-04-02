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
import com.stripe.proto.terminal.terminal.pub.message.core.BbposConfigurationMetadata;
import com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata;
import com.stripe.proto.terminal.terminal.pub.message.core.LanguagePackAssetMetadata;
import com.stripe.proto.terminal.terminal.pub.message.core.UberLanguagePackAssetMetadata;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: DeviceAssetVersionMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bw\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016Jx\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\b\u0010\u001f\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;", "md5_checksum", "", "sha256_checksum", "android_package_metadata", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "semantic_versioned_metadata", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "firmware_metadata", "Lcom/stripe/proto/model/common/FirmwareMetadata;", "uber_language_pack_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;", "bbpos_configuration_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;", "bbpos_key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;", "language_pack_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceAssetVersionMetadata extends Message<DeviceAssetVersionMetadata, Builder> {
    public static final ProtoAdapter<DeviceAssetVersionMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.AndroidPackageMetadata#ADAPTER", jsonName = "androidPackageMetadata", oneofName = "additional_metadata", schemaIndex = 2, tag = 2)
    public final AndroidPackageMetadata android_package_metadata;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposConfigurationMetadata#ADAPTER", jsonName = "bbposConfigurationMetadata", oneofName = "additional_metadata", schemaIndex = 6, tag = 7)
    public final BbposConfigurationMetadata bbpos_configuration_metadata;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata#ADAPTER", jsonName = "bbposKeyProfileMetadata", oneofName = "additional_metadata", schemaIndex = 7, tag = 8)
    public final BbposKeyProfileMetadata bbpos_key_profile_metadata;

    @WireField(adapter = "com.stripe.proto.model.common.FirmwareMetadata#ADAPTER", jsonName = "firmwareMetadata", oneofName = "additional_metadata", schemaIndex = 4, tag = 4)
    public final FirmwareMetadata firmware_metadata;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.core.LanguagePackAssetMetadata#ADAPTER", jsonName = "languagePackMetadata", oneofName = "additional_metadata", schemaIndex = 8, tag = 9)
    public final LanguagePackAssetMetadata language_pack_metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "md5Checksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String md5_checksum;

    @WireField(adapter = "com.stripe.proto.model.common.SemanticVersionedAssetMetadata#ADAPTER", jsonName = "semanticVersionedMetadata", oneofName = "additional_metadata", schemaIndex = 3, tag = 3)
    public final SemanticVersionedAssetMetadata semantic_versioned_metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sha256Checksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 5)
    public final String sha256_checksum;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.core.UberLanguagePackAssetMetadata#ADAPTER", jsonName = "uberLanguagePackMetadata", oneofName = "additional_metadata", schemaIndex = 5, tag = 6)
    public final UberLanguagePackAssetMetadata uber_language_pack_metadata;

    public DeviceAssetVersionMetadata() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ DeviceAssetVersionMetadata(String str, String str2, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, FirmwareMetadata firmwareMetadata, UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata, BbposConfigurationMetadata bbposConfigurationMetadata, BbposKeyProfileMetadata bbposKeyProfileMetadata, LanguagePackAssetMetadata languagePackAssetMetadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : androidPackageMetadata, (i & 8) != 0 ? null : semanticVersionedAssetMetadata, (i & 16) != 0 ? null : firmwareMetadata, (i & 32) != 0 ? null : uberLanguagePackAssetMetadata, (i & 64) != 0 ? null : bbposConfigurationMetadata, (i & 128) != 0 ? null : bbposKeyProfileMetadata, (i & 256) != 0 ? null : languagePackAssetMetadata, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAssetVersionMetadata(String md5_checksum, String sha256_checksum, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, FirmwareMetadata firmwareMetadata, UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata, BbposConfigurationMetadata bbposConfigurationMetadata, BbposKeyProfileMetadata bbposKeyProfileMetadata, LanguagePackAssetMetadata languagePackAssetMetadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
        Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.md5_checksum = md5_checksum;
        this.sha256_checksum = sha256_checksum;
        this.android_package_metadata = androidPackageMetadata;
        this.semantic_versioned_metadata = semanticVersionedAssetMetadata;
        this.firmware_metadata = firmwareMetadata;
        this.uber_language_pack_metadata = uberLanguagePackAssetMetadata;
        this.bbpos_configuration_metadata = bbposConfigurationMetadata;
        this.bbpos_key_profile_metadata = bbposKeyProfileMetadata;
        this.language_pack_metadata = languagePackAssetMetadata;
        if (Internal.countNonNull(androidPackageMetadata, semanticVersionedAssetMetadata, firmwareMetadata, uberLanguagePackAssetMetadata, bbposConfigurationMetadata, bbposKeyProfileMetadata, languagePackAssetMetadata) > 1) {
            throw new IllegalArgumentException("At most one of android_package_metadata, semantic_versioned_metadata, firmware_metadata, uber_language_pack_metadata, bbpos_configuration_metadata, bbpos_key_profile_metadata, language_pack_metadata may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.md5_checksum = this.md5_checksum;
        builder.sha256_checksum = this.sha256_checksum;
        builder.android_package_metadata = this.android_package_metadata;
        builder.semantic_versioned_metadata = this.semantic_versioned_metadata;
        builder.firmware_metadata = this.firmware_metadata;
        builder.uber_language_pack_metadata = this.uber_language_pack_metadata;
        builder.bbpos_configuration_metadata = this.bbpos_configuration_metadata;
        builder.bbpos_key_profile_metadata = this.bbpos_key_profile_metadata;
        builder.language_pack_metadata = this.language_pack_metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceAssetVersionMetadata)) {
            return false;
        }
        DeviceAssetVersionMetadata deviceAssetVersionMetadata = (DeviceAssetVersionMetadata) other;
        return Intrinsics.areEqual(unknownFields(), deviceAssetVersionMetadata.unknownFields()) && Intrinsics.areEqual(this.md5_checksum, deviceAssetVersionMetadata.md5_checksum) && Intrinsics.areEqual(this.sha256_checksum, deviceAssetVersionMetadata.sha256_checksum) && Intrinsics.areEqual(this.android_package_metadata, deviceAssetVersionMetadata.android_package_metadata) && Intrinsics.areEqual(this.semantic_versioned_metadata, deviceAssetVersionMetadata.semantic_versioned_metadata) && Intrinsics.areEqual(this.firmware_metadata, deviceAssetVersionMetadata.firmware_metadata) && Intrinsics.areEqual(this.uber_language_pack_metadata, deviceAssetVersionMetadata.uber_language_pack_metadata) && Intrinsics.areEqual(this.bbpos_configuration_metadata, deviceAssetVersionMetadata.bbpos_configuration_metadata) && Intrinsics.areEqual(this.bbpos_key_profile_metadata, deviceAssetVersionMetadata.bbpos_key_profile_metadata) && Intrinsics.areEqual(this.language_pack_metadata, deviceAssetVersionMetadata.language_pack_metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.md5_checksum.hashCode()) * 37) + this.sha256_checksum.hashCode()) * 37;
        AndroidPackageMetadata androidPackageMetadata = this.android_package_metadata;
        int iHashCode2 = (iHashCode + (androidPackageMetadata != null ? androidPackageMetadata.hashCode() : 0)) * 37;
        SemanticVersionedAssetMetadata semanticVersionedAssetMetadata = this.semantic_versioned_metadata;
        int iHashCode3 = (iHashCode2 + (semanticVersionedAssetMetadata != null ? semanticVersionedAssetMetadata.hashCode() : 0)) * 37;
        FirmwareMetadata firmwareMetadata = this.firmware_metadata;
        int iHashCode4 = (iHashCode3 + (firmwareMetadata != null ? firmwareMetadata.hashCode() : 0)) * 37;
        UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata = this.uber_language_pack_metadata;
        int iHashCode5 = (iHashCode4 + (uberLanguagePackAssetMetadata != null ? uberLanguagePackAssetMetadata.hashCode() : 0)) * 37;
        BbposConfigurationMetadata bbposConfigurationMetadata = this.bbpos_configuration_metadata;
        int iHashCode6 = (iHashCode5 + (bbposConfigurationMetadata != null ? bbposConfigurationMetadata.hashCode() : 0)) * 37;
        BbposKeyProfileMetadata bbposKeyProfileMetadata = this.bbpos_key_profile_metadata;
        int iHashCode7 = (iHashCode6 + (bbposKeyProfileMetadata != null ? bbposKeyProfileMetadata.hashCode() : 0)) * 37;
        LanguagePackAssetMetadata languagePackAssetMetadata = this.language_pack_metadata;
        int iHashCode8 = iHashCode7 + (languagePackAssetMetadata != null ? languagePackAssetMetadata.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("md5_checksum=" + Internal.sanitize(this.md5_checksum));
        arrayList2.add("sha256_checksum=" + Internal.sanitize(this.sha256_checksum));
        if (this.android_package_metadata != null) {
            arrayList2.add("android_package_metadata=" + this.android_package_metadata);
        }
        if (this.semantic_versioned_metadata != null) {
            arrayList2.add("semantic_versioned_metadata=" + this.semantic_versioned_metadata);
        }
        if (this.firmware_metadata != null) {
            arrayList2.add("firmware_metadata=" + this.firmware_metadata);
        }
        if (this.uber_language_pack_metadata != null) {
            arrayList2.add("uber_language_pack_metadata=" + this.uber_language_pack_metadata);
        }
        if (this.bbpos_configuration_metadata != null) {
            arrayList2.add("bbpos_configuration_metadata=" + this.bbpos_configuration_metadata);
        }
        if (this.bbpos_key_profile_metadata != null) {
            arrayList2.add("bbpos_key_profile_metadata=" + this.bbpos_key_profile_metadata);
        }
        if (this.language_pack_metadata != null) {
            arrayList2.add("language_pack_metadata=" + this.language_pack_metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceAssetVersionMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceAssetVersionMetadata copy$default(DeviceAssetVersionMetadata deviceAssetVersionMetadata, String str, String str2, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, FirmwareMetadata firmwareMetadata, UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata, BbposConfigurationMetadata bbposConfigurationMetadata, BbposKeyProfileMetadata bbposKeyProfileMetadata, LanguagePackAssetMetadata languagePackAssetMetadata, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deviceAssetVersionMetadata.md5_checksum;
        }
        if ((i & 2) != 0) {
            str2 = deviceAssetVersionMetadata.sha256_checksum;
        }
        if ((i & 4) != 0) {
            androidPackageMetadata = deviceAssetVersionMetadata.android_package_metadata;
        }
        if ((i & 8) != 0) {
            semanticVersionedAssetMetadata = deviceAssetVersionMetadata.semantic_versioned_metadata;
        }
        if ((i & 16) != 0) {
            firmwareMetadata = deviceAssetVersionMetadata.firmware_metadata;
        }
        if ((i & 32) != 0) {
            uberLanguagePackAssetMetadata = deviceAssetVersionMetadata.uber_language_pack_metadata;
        }
        if ((i & 64) != 0) {
            bbposConfigurationMetadata = deviceAssetVersionMetadata.bbpos_configuration_metadata;
        }
        if ((i & 128) != 0) {
            bbposKeyProfileMetadata = deviceAssetVersionMetadata.bbpos_key_profile_metadata;
        }
        if ((i & 256) != 0) {
            languagePackAssetMetadata = deviceAssetVersionMetadata.language_pack_metadata;
        }
        if ((i & 512) != 0) {
            byteString = deviceAssetVersionMetadata.unknownFields();
        }
        LanguagePackAssetMetadata languagePackAssetMetadata2 = languagePackAssetMetadata;
        ByteString byteString2 = byteString;
        BbposConfigurationMetadata bbposConfigurationMetadata2 = bbposConfigurationMetadata;
        BbposKeyProfileMetadata bbposKeyProfileMetadata2 = bbposKeyProfileMetadata;
        FirmwareMetadata firmwareMetadata2 = firmwareMetadata;
        UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata2 = uberLanguagePackAssetMetadata;
        return deviceAssetVersionMetadata.copy(str, str2, androidPackageMetadata, semanticVersionedAssetMetadata, firmwareMetadata2, uberLanguagePackAssetMetadata2, bbposConfigurationMetadata2, bbposKeyProfileMetadata2, languagePackAssetMetadata2, byteString2);
    }

    public final DeviceAssetVersionMetadata copy(String md5_checksum, String sha256_checksum, AndroidPackageMetadata android_package_metadata, SemanticVersionedAssetMetadata semantic_versioned_metadata, FirmwareMetadata firmware_metadata, UberLanguagePackAssetMetadata uber_language_pack_metadata, BbposConfigurationMetadata bbpos_configuration_metadata, BbposKeyProfileMetadata bbpos_key_profile_metadata, LanguagePackAssetMetadata language_pack_metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
        Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceAssetVersionMetadata(md5_checksum, sha256_checksum, android_package_metadata, semantic_versioned_metadata, firmware_metadata, uber_language_pack_metadata, bbpos_configuration_metadata, bbpos_key_profile_metadata, language_pack_metadata, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceAssetVersionMetadata.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;", "()V", "android_package_metadata", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "bbpos_configuration_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;", "bbpos_key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;", "firmware_metadata", "Lcom/stripe/proto/model/common/FirmwareMetadata;", "language_pack_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;", "md5_checksum", "", "semantic_versioned_metadata", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "sha256_checksum", "uber_language_pack_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceAssetVersionMetadata, Builder> {
        public AndroidPackageMetadata android_package_metadata;
        public BbposConfigurationMetadata bbpos_configuration_metadata;
        public BbposKeyProfileMetadata bbpos_key_profile_metadata;
        public FirmwareMetadata firmware_metadata;
        public LanguagePackAssetMetadata language_pack_metadata;
        public SemanticVersionedAssetMetadata semantic_versioned_metadata;
        public UberLanguagePackAssetMetadata uber_language_pack_metadata;
        public String md5_checksum = "";
        public String sha256_checksum = "";

        public final Builder md5_checksum(String md5_checksum) {
            Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
            this.md5_checksum = md5_checksum;
            return this;
        }

        public final Builder sha256_checksum(String sha256_checksum) {
            Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
            this.sha256_checksum = sha256_checksum;
            return this;
        }

        public final Builder android_package_metadata(AndroidPackageMetadata android_package_metadata) {
            this.android_package_metadata = android_package_metadata;
            this.semantic_versioned_metadata = null;
            this.firmware_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.bbpos_key_profile_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder semantic_versioned_metadata(SemanticVersionedAssetMetadata semantic_versioned_metadata) {
            this.semantic_versioned_metadata = semantic_versioned_metadata;
            this.android_package_metadata = null;
            this.firmware_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.bbpos_key_profile_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder firmware_metadata(FirmwareMetadata firmware_metadata) {
            this.firmware_metadata = firmware_metadata;
            this.android_package_metadata = null;
            this.semantic_versioned_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.bbpos_key_profile_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder uber_language_pack_metadata(UberLanguagePackAssetMetadata uber_language_pack_metadata) {
            this.uber_language_pack_metadata = uber_language_pack_metadata;
            this.android_package_metadata = null;
            this.semantic_versioned_metadata = null;
            this.firmware_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.bbpos_key_profile_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder bbpos_configuration_metadata(BbposConfigurationMetadata bbpos_configuration_metadata) {
            this.bbpos_configuration_metadata = bbpos_configuration_metadata;
            this.android_package_metadata = null;
            this.semantic_versioned_metadata = null;
            this.firmware_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_key_profile_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder bbpos_key_profile_metadata(BbposKeyProfileMetadata bbpos_key_profile_metadata) {
            this.bbpos_key_profile_metadata = bbpos_key_profile_metadata;
            this.android_package_metadata = null;
            this.semantic_versioned_metadata = null;
            this.firmware_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.language_pack_metadata = null;
            return this;
        }

        public final Builder language_pack_metadata(LanguagePackAssetMetadata language_pack_metadata) {
            this.language_pack_metadata = language_pack_metadata;
            this.android_package_metadata = null;
            this.semantic_versioned_metadata = null;
            this.firmware_metadata = null;
            this.uber_language_pack_metadata = null;
            this.bbpos_configuration_metadata = null;
            this.bbpos_key_profile_metadata = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceAssetVersionMetadata build() {
            return new DeviceAssetVersionMetadata(this.md5_checksum, this.sha256_checksum, this.android_package_metadata, this.semantic_versioned_metadata, this.firmware_metadata, this.uber_language_pack_metadata, this.bbpos_configuration_metadata, this.bbpos_key_profile_metadata, this.language_pack_metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceAssetVersionMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceAssetVersionMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAssetVersionMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceAssetVersionMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceAssetVersionMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceAssetVersionMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.md5_checksum, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.md5_checksum);
                }
                if (!Intrinsics.areEqual(value.sha256_checksum, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.sha256_checksum);
                }
                return size + AndroidPackageMetadata.ADAPTER.encodedSizeWithTag(2, value.android_package_metadata) + SemanticVersionedAssetMetadata.ADAPTER.encodedSizeWithTag(3, value.semantic_versioned_metadata) + FirmwareMetadata.ADAPTER.encodedSizeWithTag(4, value.firmware_metadata) + UberLanguagePackAssetMetadata.ADAPTER.encodedSizeWithTag(6, value.uber_language_pack_metadata) + BbposConfigurationMetadata.ADAPTER.encodedSizeWithTag(7, value.bbpos_configuration_metadata) + BbposKeyProfileMetadata.ADAPTER.encodedSizeWithTag(8, value.bbpos_key_profile_metadata) + LanguagePackAssetMetadata.ADAPTER.encodedSizeWithTag(9, value.language_pack_metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceAssetVersionMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.md5_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.md5_checksum);
                }
                if (!Intrinsics.areEqual(value.sha256_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sha256_checksum);
                }
                AndroidPackageMetadata.ADAPTER.encodeWithTag(writer, 2, value.android_package_metadata);
                SemanticVersionedAssetMetadata.ADAPTER.encodeWithTag(writer, 3, value.semantic_versioned_metadata);
                FirmwareMetadata.ADAPTER.encodeWithTag(writer, 4, value.firmware_metadata);
                UberLanguagePackAssetMetadata.ADAPTER.encodeWithTag(writer, 6, value.uber_language_pack_metadata);
                BbposConfigurationMetadata.ADAPTER.encodeWithTag(writer, 7, value.bbpos_configuration_metadata);
                BbposKeyProfileMetadata.ADAPTER.encodeWithTag(writer, 8, value.bbpos_key_profile_metadata);
                LanguagePackAssetMetadata.ADAPTER.encodeWithTag(writer, 9, value.language_pack_metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceAssetVersionMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                LanguagePackAssetMetadata.ADAPTER.encodeWithTag(writer, 9, value.language_pack_metadata);
                BbposKeyProfileMetadata.ADAPTER.encodeWithTag(writer, 8, value.bbpos_key_profile_metadata);
                BbposConfigurationMetadata.ADAPTER.encodeWithTag(writer, 7, value.bbpos_configuration_metadata);
                UberLanguagePackAssetMetadata.ADAPTER.encodeWithTag(writer, 6, value.uber_language_pack_metadata);
                FirmwareMetadata.ADAPTER.encodeWithTag(writer, 4, value.firmware_metadata);
                SemanticVersionedAssetMetadata.ADAPTER.encodeWithTag(writer, 3, value.semantic_versioned_metadata);
                AndroidPackageMetadata.ADAPTER.encodeWithTag(writer, 2, value.android_package_metadata);
                if (!Intrinsics.areEqual(value.sha256_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sha256_checksum);
                }
                if (Intrinsics.areEqual(value.md5_checksum, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.md5_checksum);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetVersionMetadata redact(DeviceAssetVersionMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                AndroidPackageMetadata androidPackageMetadata = value.android_package_metadata;
                AndroidPackageMetadata androidPackageMetadataRedact = androidPackageMetadata != null ? AndroidPackageMetadata.ADAPTER.redact(androidPackageMetadata) : null;
                SemanticVersionedAssetMetadata semanticVersionedAssetMetadata = value.semantic_versioned_metadata;
                SemanticVersionedAssetMetadata semanticVersionedAssetMetadataRedact = semanticVersionedAssetMetadata != null ? SemanticVersionedAssetMetadata.ADAPTER.redact(semanticVersionedAssetMetadata) : null;
                FirmwareMetadata firmwareMetadata = value.firmware_metadata;
                FirmwareMetadata firmwareMetadataRedact = firmwareMetadata != null ? FirmwareMetadata.ADAPTER.redact(firmwareMetadata) : null;
                UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata = value.uber_language_pack_metadata;
                UberLanguagePackAssetMetadata uberLanguagePackAssetMetadataRedact = uberLanguagePackAssetMetadata != null ? UberLanguagePackAssetMetadata.ADAPTER.redact(uberLanguagePackAssetMetadata) : null;
                BbposConfigurationMetadata bbposConfigurationMetadata = value.bbpos_configuration_metadata;
                BbposConfigurationMetadata bbposConfigurationMetadataRedact = bbposConfigurationMetadata != null ? BbposConfigurationMetadata.ADAPTER.redact(bbposConfigurationMetadata) : null;
                BbposKeyProfileMetadata bbposKeyProfileMetadata = value.bbpos_key_profile_metadata;
                BbposKeyProfileMetadata bbposKeyProfileMetadataRedact = bbposKeyProfileMetadata != null ? BbposKeyProfileMetadata.ADAPTER.redact(bbposKeyProfileMetadata) : null;
                LanguagePackAssetMetadata languagePackAssetMetadata = value.language_pack_metadata;
                return DeviceAssetVersionMetadata.copy$default(value, null, null, androidPackageMetadataRedact, semanticVersionedAssetMetadataRedact, firmwareMetadataRedact, uberLanguagePackAssetMetadataRedact, bbposConfigurationMetadataRedact, bbposKeyProfileMetadataRedact, languagePackAssetMetadata != null ? LanguagePackAssetMetadata.ADAPTER.redact(languagePackAssetMetadata) : null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetVersionMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                AndroidPackageMetadata androidPackageMetadataDecode = null;
                SemanticVersionedAssetMetadata semanticVersionedAssetMetadataDecode = null;
                FirmwareMetadata firmwareMetadataDecode = null;
                UberLanguagePackAssetMetadata uberLanguagePackAssetMetadataDecode = null;
                BbposConfigurationMetadata bbposConfigurationMetadataDecode = null;
                BbposKeyProfileMetadata bbposKeyProfileMetadataDecode = null;
                LanguagePackAssetMetadata languagePackAssetMetadataDecode = null;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                androidPackageMetadataDecode = AndroidPackageMetadata.ADAPTER.decode(reader);
                                break;
                            case 3:
                                semanticVersionedAssetMetadataDecode = SemanticVersionedAssetMetadata.ADAPTER.decode(reader);
                                break;
                            case 4:
                                firmwareMetadataDecode = FirmwareMetadata.ADAPTER.decode(reader);
                                break;
                            case 5:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                uberLanguagePackAssetMetadataDecode = UberLanguagePackAssetMetadata.ADAPTER.decode(reader);
                                break;
                            case 7:
                                bbposConfigurationMetadataDecode = BbposConfigurationMetadata.ADAPTER.decode(reader);
                                break;
                            case 8:
                                bbposKeyProfileMetadataDecode = BbposKeyProfileMetadata.ADAPTER.decode(reader);
                                break;
                            case 9:
                                languagePackAssetMetadataDecode = LanguagePackAssetMetadata.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new DeviceAssetVersionMetadata(strDecode, strDecode2, androidPackageMetadataDecode, semanticVersionedAssetMetadataDecode, firmwareMetadataDecode, uberLanguagePackAssetMetadataDecode, bbposConfigurationMetadataDecode, bbposKeyProfileMetadataDecode, languagePackAssetMetadataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
