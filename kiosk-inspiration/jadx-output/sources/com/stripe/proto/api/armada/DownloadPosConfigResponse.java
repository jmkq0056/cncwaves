package com.stripe.proto.api.armada;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.common.DateTimePb;
import com.stripe.proto.model.common.SignedAssetPb;
import com.stripe.proto.model.common.TimeZone;
import com.stripe.proto.model.config.PosConfig;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DownloadPosConfigResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bk\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014Jl\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\b\u0010\u001f\u001a\u00020\u0011H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;", "config", "Lcom/stripe/proto/model/config/PosConfig;", "date_time", "Lcom/stripe/proto/model/common/DateTimePb;", "time_zone", "Lcom/stripe/proto/model/common/TimeZone;", "bin_table_asset", "Lcom/stripe/proto/model/common/SignedAssetPb;", "localization_bundle_asset", "reader_metadata", "Lcom/stripe/proto/api/armada/ReaderMetadata;", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "checksum", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V", "getDate_time$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadPosConfigResponse extends Message<DownloadPosConfigResponse, Builder> {
    public static final ProtoAdapter<DownloadPosConfigResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER", jsonName = "binTableAsset", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final SignedAssetPb bin_table_asset;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String checksum;

    @WireField(adapter = "com.stripe.proto.model.config.PosConfig#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final PosConfig config;

    @WireField(adapter = "com.stripe.proto.model.common.DateTimePb#ADAPTER", jsonName = "dateTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DateTimePb date_time;

    @WireField(adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER", jsonName = "localizationBundleAsset", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final SignedAssetPb localization_bundle_asset;

    @WireField(adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER", jsonName = "readerFeatureFlags", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final ReaderFeatureFlags reader_feature_flags;

    @WireField(adapter = "com.stripe.proto.api.armada.ReaderMetadata#ADAPTER", jsonName = "readerMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final ReaderMetadata reader_metadata;

    @WireField(adapter = "com.stripe.proto.model.common.TimeZone#ADAPTER", jsonName = RemoteConfigConstants.RequestFieldKey.TIME_ZONE, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 9)
    public final TimeZone time_zone;

    public DownloadPosConfigResponse() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    @Deprecated(message = "date_time is deprecated")
    public static /* synthetic */ void getDate_time$annotations() {
    }

    public /* synthetic */ DownloadPosConfigResponse(PosConfig posConfig, DateTimePb dateTimePb, TimeZone timeZone, SignedAssetPb signedAssetPb, SignedAssetPb signedAssetPb2, ReaderMetadata readerMetadata, ReaderFeatureFlags readerFeatureFlags, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : posConfig, (i & 2) != 0 ? null : dateTimePb, (i & 4) != 0 ? TimeZone.TIME_ZONE_INVALID : timeZone, (i & 8) != 0 ? null : signedAssetPb, (i & 16) != 0 ? null : signedAssetPb2, (i & 32) != 0 ? null : readerMetadata, (i & 64) != 0 ? null : readerFeatureFlags, (i & 128) != 0 ? "" : str, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPosConfigResponse(PosConfig posConfig, DateTimePb dateTimePb, TimeZone time_zone, SignedAssetPb signedAssetPb, SignedAssetPb signedAssetPb2, ReaderMetadata readerMetadata, ReaderFeatureFlags readerFeatureFlags, String checksum, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(time_zone, "time_zone");
        Intrinsics.checkNotNullParameter(checksum, "checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.config = posConfig;
        this.date_time = dateTimePb;
        this.time_zone = time_zone;
        this.bin_table_asset = signedAssetPb;
        this.localization_bundle_asset = signedAssetPb2;
        this.reader_metadata = readerMetadata;
        this.reader_feature_flags = readerFeatureFlags;
        this.checksum = checksum;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.config = this.config;
        builder.date_time = this.date_time;
        builder.time_zone = this.time_zone;
        builder.bin_table_asset = this.bin_table_asset;
        builder.localization_bundle_asset = this.localization_bundle_asset;
        builder.reader_metadata = this.reader_metadata;
        builder.reader_feature_flags = this.reader_feature_flags;
        builder.checksum = this.checksum;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadPosConfigResponse)) {
            return false;
        }
        DownloadPosConfigResponse downloadPosConfigResponse = (DownloadPosConfigResponse) other;
        return Intrinsics.areEqual(unknownFields(), downloadPosConfigResponse.unknownFields()) && Intrinsics.areEqual(this.config, downloadPosConfigResponse.config) && Intrinsics.areEqual(this.date_time, downloadPosConfigResponse.date_time) && this.time_zone == downloadPosConfigResponse.time_zone && Intrinsics.areEqual(this.bin_table_asset, downloadPosConfigResponse.bin_table_asset) && Intrinsics.areEqual(this.localization_bundle_asset, downloadPosConfigResponse.localization_bundle_asset) && Intrinsics.areEqual(this.reader_metadata, downloadPosConfigResponse.reader_metadata) && Intrinsics.areEqual(this.reader_feature_flags, downloadPosConfigResponse.reader_feature_flags) && Intrinsics.areEqual(this.checksum, downloadPosConfigResponse.checksum);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PosConfig posConfig = this.config;
        int iHashCode2 = (iHashCode + (posConfig != null ? posConfig.hashCode() : 0)) * 37;
        DateTimePb dateTimePb = this.date_time;
        int iHashCode3 = (((iHashCode2 + (dateTimePb != null ? dateTimePb.hashCode() : 0)) * 37) + this.time_zone.hashCode()) * 37;
        SignedAssetPb signedAssetPb = this.bin_table_asset;
        int iHashCode4 = (iHashCode3 + (signedAssetPb != null ? signedAssetPb.hashCode() : 0)) * 37;
        SignedAssetPb signedAssetPb2 = this.localization_bundle_asset;
        int iHashCode5 = (iHashCode4 + (signedAssetPb2 != null ? signedAssetPb2.hashCode() : 0)) * 37;
        ReaderMetadata readerMetadata = this.reader_metadata;
        int iHashCode6 = (iHashCode5 + (readerMetadata != null ? readerMetadata.hashCode() : 0)) * 37;
        ReaderFeatureFlags readerFeatureFlags = this.reader_feature_flags;
        int iHashCode7 = ((iHashCode6 + (readerFeatureFlags != null ? readerFeatureFlags.hashCode() : 0)) * 37) + this.checksum.hashCode();
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.config != null) {
            arrayList.add("config=" + this.config);
        }
        if (this.date_time != null) {
            arrayList.add("date_time=" + this.date_time);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("time_zone=" + this.time_zone);
        if (this.bin_table_asset != null) {
            arrayList2.add("bin_table_asset=" + this.bin_table_asset);
        }
        if (this.localization_bundle_asset != null) {
            arrayList2.add("localization_bundle_asset=" + this.localization_bundle_asset);
        }
        if (this.reader_metadata != null) {
            arrayList2.add("reader_metadata=" + this.reader_metadata);
        }
        if (this.reader_feature_flags != null) {
            arrayList2.add("reader_feature_flags=" + this.reader_feature_flags);
        }
        arrayList2.add("checksum=" + Internal.sanitize(this.checksum));
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadPosConfigResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DownloadPosConfigResponse copy$default(DownloadPosConfigResponse downloadPosConfigResponse, PosConfig posConfig, DateTimePb dateTimePb, TimeZone timeZone, SignedAssetPb signedAssetPb, SignedAssetPb signedAssetPb2, ReaderMetadata readerMetadata, ReaderFeatureFlags readerFeatureFlags, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            posConfig = downloadPosConfigResponse.config;
        }
        if ((i & 2) != 0) {
            dateTimePb = downloadPosConfigResponse.date_time;
        }
        if ((i & 4) != 0) {
            timeZone = downloadPosConfigResponse.time_zone;
        }
        if ((i & 8) != 0) {
            signedAssetPb = downloadPosConfigResponse.bin_table_asset;
        }
        if ((i & 16) != 0) {
            signedAssetPb2 = downloadPosConfigResponse.localization_bundle_asset;
        }
        if ((i & 32) != 0) {
            readerMetadata = downloadPosConfigResponse.reader_metadata;
        }
        if ((i & 64) != 0) {
            readerFeatureFlags = downloadPosConfigResponse.reader_feature_flags;
        }
        if ((i & 128) != 0) {
            str = downloadPosConfigResponse.checksum;
        }
        if ((i & 256) != 0) {
            byteString = downloadPosConfigResponse.unknownFields();
        }
        String str2 = str;
        ByteString byteString2 = byteString;
        ReaderMetadata readerMetadata2 = readerMetadata;
        ReaderFeatureFlags readerFeatureFlags2 = readerFeatureFlags;
        SignedAssetPb signedAssetPb3 = signedAssetPb2;
        TimeZone timeZone2 = timeZone;
        return downloadPosConfigResponse.copy(posConfig, dateTimePb, timeZone2, signedAssetPb, signedAssetPb3, readerMetadata2, readerFeatureFlags2, str2, byteString2);
    }

    public final DownloadPosConfigResponse copy(PosConfig config, DateTimePb date_time, TimeZone time_zone, SignedAssetPb bin_table_asset, SignedAssetPb localization_bundle_asset, ReaderMetadata reader_metadata, ReaderFeatureFlags reader_feature_flags, String checksum, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(time_zone, "time_zone");
        Intrinsics.checkNotNullParameter(checksum, "checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadPosConfigResponse(config, date_time, time_zone, bin_table_asset, localization_bundle_asset, reader_metadata, reader_feature_flags, checksum, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadPosConfigResponse.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;", "()V", "bin_table_asset", "Lcom/stripe/proto/model/common/SignedAssetPb;", "checksum", "", "config", "Lcom/stripe/proto/model/config/PosConfig;", "date_time", "Lcom/stripe/proto/model/common/DateTimePb;", "localization_bundle_asset", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "reader_metadata", "Lcom/stripe/proto/api/armada/ReaderMetadata;", "time_zone", "Lcom/stripe/proto/model/common/TimeZone;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadPosConfigResponse, Builder> {
        public SignedAssetPb bin_table_asset;
        public PosConfig config;
        public DateTimePb date_time;
        public SignedAssetPb localization_bundle_asset;
        public ReaderFeatureFlags reader_feature_flags;
        public ReaderMetadata reader_metadata;
        public TimeZone time_zone = TimeZone.TIME_ZONE_INVALID;
        public String checksum = "";

        public final Builder config(PosConfig config) {
            this.config = config;
            return this;
        }

        @Deprecated(message = "date_time is deprecated")
        public final Builder date_time(DateTimePb date_time) {
            this.date_time = date_time;
            return this;
        }

        public final Builder time_zone(TimeZone time_zone) {
            Intrinsics.checkNotNullParameter(time_zone, "time_zone");
            this.time_zone = time_zone;
            return this;
        }

        public final Builder bin_table_asset(SignedAssetPb bin_table_asset) {
            this.bin_table_asset = bin_table_asset;
            return this;
        }

        public final Builder localization_bundle_asset(SignedAssetPb localization_bundle_asset) {
            this.localization_bundle_asset = localization_bundle_asset;
            return this;
        }

        public final Builder reader_metadata(ReaderMetadata reader_metadata) {
            this.reader_metadata = reader_metadata;
            return this;
        }

        public final Builder reader_feature_flags(ReaderFeatureFlags reader_feature_flags) {
            this.reader_feature_flags = reader_feature_flags;
            return this;
        }

        public final Builder checksum(String checksum) {
            Intrinsics.checkNotNullParameter(checksum, "checksum");
            this.checksum = checksum;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadPosConfigResponse build() {
            return new DownloadPosConfigResponse(this.config, this.date_time, this.time_zone, this.bin_table_asset, this.localization_bundle_asset, this.reader_metadata, this.reader_feature_flags, this.checksum, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadPosConfigResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadPosConfigResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadPosConfigResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadPosConfigResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadPosConfigResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadPosConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.config != null) {
                    size += PosConfig.ADAPTER.encodedSizeWithTag(1, value.config);
                }
                if (value.date_time != null) {
                    size += DateTimePb.ADAPTER.encodedSizeWithTag(2, value.date_time);
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    size += TimeZone.ADAPTER.encodedSizeWithTag(9, value.time_zone);
                }
                if (value.bin_table_asset != null) {
                    size += SignedAssetPb.ADAPTER.encodedSizeWithTag(4, value.bin_table_asset);
                }
                if (value.localization_bundle_asset != null) {
                    size += SignedAssetPb.ADAPTER.encodedSizeWithTag(5, value.localization_bundle_asset);
                }
                if (value.reader_metadata != null) {
                    size += ReaderMetadata.ADAPTER.encodedSizeWithTag(6, value.reader_metadata);
                }
                if (value.reader_feature_flags != null) {
                    size += ReaderFeatureFlags.ADAPTER.encodedSizeWithTag(7, value.reader_feature_flags);
                }
                return !Intrinsics.areEqual(value.checksum, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.checksum) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadPosConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.config != null) {
                    PosConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
                if (value.date_time != null) {
                    DateTimePb.ADAPTER.encodeWithTag(writer, 2, value.date_time);
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    TimeZone.ADAPTER.encodeWithTag(writer, 9, value.time_zone);
                }
                if (value.bin_table_asset != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.bin_table_asset);
                }
                if (value.localization_bundle_asset != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 5, value.localization_bundle_asset);
                }
                if (value.reader_metadata != null) {
                    ReaderMetadata.ADAPTER.encodeWithTag(writer, 6, value.reader_metadata);
                }
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 7, value.reader_feature_flags);
                }
                if (!Intrinsics.areEqual(value.checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.checksum);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadPosConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.checksum);
                }
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 7, value.reader_feature_flags);
                }
                if (value.reader_metadata != null) {
                    ReaderMetadata.ADAPTER.encodeWithTag(writer, 6, value.reader_metadata);
                }
                if (value.localization_bundle_asset != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 5, value.localization_bundle_asset);
                }
                if (value.bin_table_asset != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.bin_table_asset);
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    TimeZone.ADAPTER.encodeWithTag(writer, 9, value.time_zone);
                }
                if (value.date_time != null) {
                    DateTimePb.ADAPTER.encodeWithTag(writer, 2, value.date_time);
                }
                if (value.config != null) {
                    PosConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadPosConfigResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                TimeZone timeZone = TimeZone.TIME_ZONE_INVALID;
                long jBeginMessage = reader.beginMessage();
                DateTimePb dateTimePbDecode = null;
                SignedAssetPb signedAssetPbDecode = null;
                SignedAssetPb signedAssetPbDecode2 = null;
                ReaderMetadata readerMetadataDecode = null;
                ReaderFeatureFlags readerFeatureFlagsDecode = null;
                String strDecode = "";
                TimeZone timeZoneDecode = timeZone;
                PosConfig posConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                posConfigDecode = PosConfig.ADAPTER.decode(reader);
                                break;
                            case 2:
                                dateTimePbDecode = DateTimePb.ADAPTER.decode(reader);
                                break;
                            case 3:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 4:
                                signedAssetPbDecode = SignedAssetPb.ADAPTER.decode(reader);
                                break;
                            case 5:
                                signedAssetPbDecode2 = SignedAssetPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                readerMetadataDecode = ReaderMetadata.ADAPTER.decode(reader);
                                break;
                            case 7:
                                readerFeatureFlagsDecode = ReaderFeatureFlags.ADAPTER.decode(reader);
                                break;
                            case 8:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                try {
                                    timeZoneDecode = TimeZone.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                        }
                    } else {
                        return new DownloadPosConfigResponse(posConfigDecode, dateTimePbDecode, timeZoneDecode, signedAssetPbDecode, signedAssetPbDecode2, readerMetadataDecode, readerFeatureFlagsDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadPosConfigResponse redact(DownloadPosConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PosConfig posConfig = value.config;
                PosConfig posConfigRedact = posConfig != null ? PosConfig.ADAPTER.redact(posConfig) : null;
                DateTimePb dateTimePb = value.date_time;
                DateTimePb dateTimePbRedact = dateTimePb != null ? DateTimePb.ADAPTER.redact(dateTimePb) : null;
                SignedAssetPb signedAssetPb = value.bin_table_asset;
                SignedAssetPb signedAssetPbRedact = signedAssetPb != null ? SignedAssetPb.ADAPTER.redact(signedAssetPb) : null;
                SignedAssetPb signedAssetPb2 = value.localization_bundle_asset;
                SignedAssetPb signedAssetPbRedact2 = signedAssetPb2 != null ? SignedAssetPb.ADAPTER.redact(signedAssetPb2) : null;
                ReaderMetadata readerMetadata = value.reader_metadata;
                ReaderMetadata readerMetadataRedact = readerMetadata != null ? ReaderMetadata.ADAPTER.redact(readerMetadata) : null;
                ReaderFeatureFlags readerFeatureFlags = value.reader_feature_flags;
                return DownloadPosConfigResponse.copy$default(value, posConfigRedact, dateTimePbRedact, null, signedAssetPbRedact, signedAssetPbRedact2, readerMetadataRedact, readerFeatureFlags != null ? ReaderFeatureFlags.ADAPTER.redact(readerFeatureFlags) : null, null, ByteString.EMPTY, WinError.ERROR_SEEK_ON_DEVICE, null);
            }
        };
    }
}
