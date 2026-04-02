package com.stripe.proto.terminal.terminal.pub.message.config;

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
import com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig;
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

/* JADX INFO: compiled from: ApiAppThemeConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%BÃ\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019JÄ\u0001\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;", "style", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;", "primary", "", "secondary", "accent", "base_1_color_value", "base_2_color_value", "base_3_color_value", "base_4_color_value", "base_5_color_value", "base_6_color_value", "base_7_color_value", "base_8_color_value", "base_9_color_value", "disabled_color_value", "success_color_value", "warning_color_value", "critical_color_value", "secondary_button_background_color_value", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Style", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiAppThemeConfig extends Message<ApiAppThemeConfig, Builder> {
    public static final ProtoAdapter<ApiAppThemeConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String accent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base1ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String base_1_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base2ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String base_2_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base3ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String base_3_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base4ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String base_4_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base5ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String base_5_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base6ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String base_6_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base7ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String base_7_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base8ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String base_8_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base9ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String base_9_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "criticalColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final String critical_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "disabledColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final String disabled_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String primary;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String secondary;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "secondaryButtonBackgroundColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final String secondary_button_background_color_value;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig$Style#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Style style;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "successColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String success_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "warningColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final String warning_color_value;

    public ApiAppThemeConfig() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 524287, null);
    }

    public /* synthetic */ ApiAppThemeConfig(Style style, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Style.STYLE_INVALID : style, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? "" : str6, (i & 128) != 0 ? "" : str7, (i & 256) != 0 ? "" : str8, (i & 512) != 0 ? "" : str9, (i & 1024) != 0 ? "" : str10, (i & 2048) != 0 ? "" : str11, (i & 4096) != 0 ? "" : str12, (i & 8192) != 0 ? "" : str13, (i & 16384) != 0 ? "" : str14, (i & 32768) != 0 ? "" : str15, (i & 65536) != 0 ? "" : str16, (i & 131072) == 0 ? str17 : "", (i & 262144) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiAppThemeConfig(Style style, String primary, String secondary, String accent, String base_1_color_value, String base_2_color_value, String base_3_color_value, String base_4_color_value, String base_5_color_value, String base_6_color_value, String base_7_color_value, String base_8_color_value, String base_9_color_value, String disabled_color_value, String success_color_value, String warning_color_value, String critical_color_value, String secondary_button_background_color_value, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        Intrinsics.checkNotNullParameter(accent, "accent");
        Intrinsics.checkNotNullParameter(base_1_color_value, "base_1_color_value");
        Intrinsics.checkNotNullParameter(base_2_color_value, "base_2_color_value");
        Intrinsics.checkNotNullParameter(base_3_color_value, "base_3_color_value");
        Intrinsics.checkNotNullParameter(base_4_color_value, "base_4_color_value");
        Intrinsics.checkNotNullParameter(base_5_color_value, "base_5_color_value");
        Intrinsics.checkNotNullParameter(base_6_color_value, "base_6_color_value");
        Intrinsics.checkNotNullParameter(base_7_color_value, "base_7_color_value");
        Intrinsics.checkNotNullParameter(base_8_color_value, "base_8_color_value");
        Intrinsics.checkNotNullParameter(base_9_color_value, "base_9_color_value");
        Intrinsics.checkNotNullParameter(disabled_color_value, "disabled_color_value");
        Intrinsics.checkNotNullParameter(success_color_value, "success_color_value");
        Intrinsics.checkNotNullParameter(warning_color_value, "warning_color_value");
        Intrinsics.checkNotNullParameter(critical_color_value, "critical_color_value");
        Intrinsics.checkNotNullParameter(secondary_button_background_color_value, "secondary_button_background_color_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.style = style;
        this.primary = primary;
        this.secondary = secondary;
        this.accent = accent;
        this.base_1_color_value = base_1_color_value;
        this.base_2_color_value = base_2_color_value;
        this.base_3_color_value = base_3_color_value;
        this.base_4_color_value = base_4_color_value;
        this.base_5_color_value = base_5_color_value;
        this.base_6_color_value = base_6_color_value;
        this.base_7_color_value = base_7_color_value;
        this.base_8_color_value = base_8_color_value;
        this.base_9_color_value = base_9_color_value;
        this.disabled_color_value = disabled_color_value;
        this.success_color_value = success_color_value;
        this.warning_color_value = warning_color_value;
        this.critical_color_value = critical_color_value;
        this.secondary_button_background_color_value = secondary_button_background_color_value;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.style = this.style;
        builder.primary = this.primary;
        builder.secondary = this.secondary;
        builder.accent = this.accent;
        builder.base_1_color_value = this.base_1_color_value;
        builder.base_2_color_value = this.base_2_color_value;
        builder.base_3_color_value = this.base_3_color_value;
        builder.base_4_color_value = this.base_4_color_value;
        builder.base_5_color_value = this.base_5_color_value;
        builder.base_6_color_value = this.base_6_color_value;
        builder.base_7_color_value = this.base_7_color_value;
        builder.base_8_color_value = this.base_8_color_value;
        builder.base_9_color_value = this.base_9_color_value;
        builder.disabled_color_value = this.disabled_color_value;
        builder.success_color_value = this.success_color_value;
        builder.warning_color_value = this.warning_color_value;
        builder.critical_color_value = this.critical_color_value;
        builder.secondary_button_background_color_value = this.secondary_button_background_color_value;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApiAppThemeConfig)) {
            return false;
        }
        ApiAppThemeConfig apiAppThemeConfig = (ApiAppThemeConfig) other;
        return Intrinsics.areEqual(unknownFields(), apiAppThemeConfig.unknownFields()) && this.style == apiAppThemeConfig.style && Intrinsics.areEqual(this.primary, apiAppThemeConfig.primary) && Intrinsics.areEqual(this.secondary, apiAppThemeConfig.secondary) && Intrinsics.areEqual(this.accent, apiAppThemeConfig.accent) && Intrinsics.areEqual(this.base_1_color_value, apiAppThemeConfig.base_1_color_value) && Intrinsics.areEqual(this.base_2_color_value, apiAppThemeConfig.base_2_color_value) && Intrinsics.areEqual(this.base_3_color_value, apiAppThemeConfig.base_3_color_value) && Intrinsics.areEqual(this.base_4_color_value, apiAppThemeConfig.base_4_color_value) && Intrinsics.areEqual(this.base_5_color_value, apiAppThemeConfig.base_5_color_value) && Intrinsics.areEqual(this.base_6_color_value, apiAppThemeConfig.base_6_color_value) && Intrinsics.areEqual(this.base_7_color_value, apiAppThemeConfig.base_7_color_value) && Intrinsics.areEqual(this.base_8_color_value, apiAppThemeConfig.base_8_color_value) && Intrinsics.areEqual(this.base_9_color_value, apiAppThemeConfig.base_9_color_value) && Intrinsics.areEqual(this.disabled_color_value, apiAppThemeConfig.disabled_color_value) && Intrinsics.areEqual(this.success_color_value, apiAppThemeConfig.success_color_value) && Intrinsics.areEqual(this.warning_color_value, apiAppThemeConfig.warning_color_value) && Intrinsics.areEqual(this.critical_color_value, apiAppThemeConfig.critical_color_value) && Intrinsics.areEqual(this.secondary_button_background_color_value, apiAppThemeConfig.secondary_button_background_color_value);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + this.style.hashCode()) * 37) + this.primary.hashCode()) * 37) + this.secondary.hashCode()) * 37) + this.accent.hashCode()) * 37) + this.base_1_color_value.hashCode()) * 37) + this.base_2_color_value.hashCode()) * 37) + this.base_3_color_value.hashCode()) * 37) + this.base_4_color_value.hashCode()) * 37) + this.base_5_color_value.hashCode()) * 37) + this.base_6_color_value.hashCode()) * 37) + this.base_7_color_value.hashCode()) * 37) + this.base_8_color_value.hashCode()) * 37) + this.base_9_color_value.hashCode()) * 37) + this.disabled_color_value.hashCode()) * 37) + this.success_color_value.hashCode()) * 37) + this.warning_color_value.hashCode()) * 37) + this.critical_color_value.hashCode()) * 37) + this.secondary_button_background_color_value.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("style=" + this.style);
        arrayList2.add("primary=" + Internal.sanitize(this.primary));
        arrayList2.add("secondary=" + Internal.sanitize(this.secondary));
        arrayList2.add("accent=" + Internal.sanitize(this.accent));
        arrayList2.add("base_1_color_value=" + Internal.sanitize(this.base_1_color_value));
        arrayList2.add("base_2_color_value=" + Internal.sanitize(this.base_2_color_value));
        arrayList2.add("base_3_color_value=" + Internal.sanitize(this.base_3_color_value));
        arrayList2.add("base_4_color_value=" + Internal.sanitize(this.base_4_color_value));
        arrayList2.add("base_5_color_value=" + Internal.sanitize(this.base_5_color_value));
        arrayList2.add("base_6_color_value=" + Internal.sanitize(this.base_6_color_value));
        arrayList2.add("base_7_color_value=" + Internal.sanitize(this.base_7_color_value));
        arrayList2.add("base_8_color_value=" + Internal.sanitize(this.base_8_color_value));
        arrayList2.add("base_9_color_value=" + Internal.sanitize(this.base_9_color_value));
        arrayList2.add("disabled_color_value=" + Internal.sanitize(this.disabled_color_value));
        arrayList2.add("success_color_value=" + Internal.sanitize(this.success_color_value));
        arrayList2.add("warning_color_value=" + Internal.sanitize(this.warning_color_value));
        arrayList2.add("critical_color_value=" + Internal.sanitize(this.critical_color_value));
        arrayList2.add("secondary_button_background_color_value=" + Internal.sanitize(this.secondary_button_background_color_value));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApiAppThemeConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApiAppThemeConfig copy$default(ApiAppThemeConfig apiAppThemeConfig, Style style, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, ByteString byteString, int i, Object obj) {
        Style style2 = (i & 1) != 0 ? apiAppThemeConfig.style : style;
        return apiAppThemeConfig.copy(style2, (i & 2) != 0 ? apiAppThemeConfig.primary : str, (i & 4) != 0 ? apiAppThemeConfig.secondary : str2, (i & 8) != 0 ? apiAppThemeConfig.accent : str3, (i & 16) != 0 ? apiAppThemeConfig.base_1_color_value : str4, (i & 32) != 0 ? apiAppThemeConfig.base_2_color_value : str5, (i & 64) != 0 ? apiAppThemeConfig.base_3_color_value : str6, (i & 128) != 0 ? apiAppThemeConfig.base_4_color_value : str7, (i & 256) != 0 ? apiAppThemeConfig.base_5_color_value : str8, (i & 512) != 0 ? apiAppThemeConfig.base_6_color_value : str9, (i & 1024) != 0 ? apiAppThemeConfig.base_7_color_value : str10, (i & 2048) != 0 ? apiAppThemeConfig.base_8_color_value : str11, (i & 4096) != 0 ? apiAppThemeConfig.base_9_color_value : str12, (i & 8192) != 0 ? apiAppThemeConfig.disabled_color_value : str13, (i & 16384) != 0 ? apiAppThemeConfig.success_color_value : str14, (i & 32768) != 0 ? apiAppThemeConfig.warning_color_value : str15, (i & 65536) != 0 ? apiAppThemeConfig.critical_color_value : str16, (i & 131072) != 0 ? apiAppThemeConfig.secondary_button_background_color_value : str17, (i & 262144) != 0 ? apiAppThemeConfig.unknownFields() : byteString);
    }

    public final ApiAppThemeConfig copy(Style style, String primary, String secondary, String accent, String base_1_color_value, String base_2_color_value, String base_3_color_value, String base_4_color_value, String base_5_color_value, String base_6_color_value, String base_7_color_value, String base_8_color_value, String base_9_color_value, String disabled_color_value, String success_color_value, String warning_color_value, String critical_color_value, String secondary_button_background_color_value, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        Intrinsics.checkNotNullParameter(accent, "accent");
        Intrinsics.checkNotNullParameter(base_1_color_value, "base_1_color_value");
        Intrinsics.checkNotNullParameter(base_2_color_value, "base_2_color_value");
        Intrinsics.checkNotNullParameter(base_3_color_value, "base_3_color_value");
        Intrinsics.checkNotNullParameter(base_4_color_value, "base_4_color_value");
        Intrinsics.checkNotNullParameter(base_5_color_value, "base_5_color_value");
        Intrinsics.checkNotNullParameter(base_6_color_value, "base_6_color_value");
        Intrinsics.checkNotNullParameter(base_7_color_value, "base_7_color_value");
        Intrinsics.checkNotNullParameter(base_8_color_value, "base_8_color_value");
        Intrinsics.checkNotNullParameter(base_9_color_value, "base_9_color_value");
        Intrinsics.checkNotNullParameter(disabled_color_value, "disabled_color_value");
        Intrinsics.checkNotNullParameter(success_color_value, "success_color_value");
        Intrinsics.checkNotNullParameter(warning_color_value, "warning_color_value");
        Intrinsics.checkNotNullParameter(critical_color_value, "critical_color_value");
        Intrinsics.checkNotNullParameter(secondary_button_background_color_value, "secondary_button_background_color_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApiAppThemeConfig(style, primary, secondary, accent, base_1_color_value, base_2_color_value, base_3_color_value, base_4_color_value, base_5_color_value, base_6_color_value, base_7_color_value, base_8_color_value, base_9_color_value, disabled_color_value, success_color_value, warning_color_value, critical_color_value, secondary_button_background_color_value, unknownFields);
    }

    /* JADX INFO: compiled from: ApiAppThemeConfig.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "()V", "accent", "", "base_1_color_value", "base_2_color_value", "base_3_color_value", "base_4_color_value", "base_5_color_value", "base_6_color_value", "base_7_color_value", "base_8_color_value", "base_9_color_value", "critical_color_value", "disabled_color_value", "primary", "secondary", "secondary_button_background_color_value", "style", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;", "success_color_value", "warning_color_value", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApiAppThemeConfig, Builder> {
        public Style style = Style.STYLE_INVALID;
        public String primary = "";
        public String secondary = "";
        public String accent = "";
        public String base_1_color_value = "";
        public String base_2_color_value = "";
        public String base_3_color_value = "";
        public String base_4_color_value = "";
        public String base_5_color_value = "";
        public String base_6_color_value = "";
        public String base_7_color_value = "";
        public String base_8_color_value = "";
        public String base_9_color_value = "";
        public String disabled_color_value = "";
        public String success_color_value = "";
        public String warning_color_value = "";
        public String critical_color_value = "";
        public String secondary_button_background_color_value = "";

        public final Builder style(Style style) {
            Intrinsics.checkNotNullParameter(style, "style");
            this.style = style;
            return this;
        }

        public final Builder primary(String primary) {
            Intrinsics.checkNotNullParameter(primary, "primary");
            this.primary = primary;
            return this;
        }

        public final Builder secondary(String secondary) {
            Intrinsics.checkNotNullParameter(secondary, "secondary");
            this.secondary = secondary;
            return this;
        }

        public final Builder accent(String accent) {
            Intrinsics.checkNotNullParameter(accent, "accent");
            this.accent = accent;
            return this;
        }

        public final Builder base_1_color_value(String base_1_color_value) {
            Intrinsics.checkNotNullParameter(base_1_color_value, "base_1_color_value");
            this.base_1_color_value = base_1_color_value;
            return this;
        }

        public final Builder base_2_color_value(String base_2_color_value) {
            Intrinsics.checkNotNullParameter(base_2_color_value, "base_2_color_value");
            this.base_2_color_value = base_2_color_value;
            return this;
        }

        public final Builder base_3_color_value(String base_3_color_value) {
            Intrinsics.checkNotNullParameter(base_3_color_value, "base_3_color_value");
            this.base_3_color_value = base_3_color_value;
            return this;
        }

        public final Builder base_4_color_value(String base_4_color_value) {
            Intrinsics.checkNotNullParameter(base_4_color_value, "base_4_color_value");
            this.base_4_color_value = base_4_color_value;
            return this;
        }

        public final Builder base_5_color_value(String base_5_color_value) {
            Intrinsics.checkNotNullParameter(base_5_color_value, "base_5_color_value");
            this.base_5_color_value = base_5_color_value;
            return this;
        }

        public final Builder base_6_color_value(String base_6_color_value) {
            Intrinsics.checkNotNullParameter(base_6_color_value, "base_6_color_value");
            this.base_6_color_value = base_6_color_value;
            return this;
        }

        public final Builder base_7_color_value(String base_7_color_value) {
            Intrinsics.checkNotNullParameter(base_7_color_value, "base_7_color_value");
            this.base_7_color_value = base_7_color_value;
            return this;
        }

        public final Builder base_8_color_value(String base_8_color_value) {
            Intrinsics.checkNotNullParameter(base_8_color_value, "base_8_color_value");
            this.base_8_color_value = base_8_color_value;
            return this;
        }

        public final Builder base_9_color_value(String base_9_color_value) {
            Intrinsics.checkNotNullParameter(base_9_color_value, "base_9_color_value");
            this.base_9_color_value = base_9_color_value;
            return this;
        }

        public final Builder disabled_color_value(String disabled_color_value) {
            Intrinsics.checkNotNullParameter(disabled_color_value, "disabled_color_value");
            this.disabled_color_value = disabled_color_value;
            return this;
        }

        public final Builder success_color_value(String success_color_value) {
            Intrinsics.checkNotNullParameter(success_color_value, "success_color_value");
            this.success_color_value = success_color_value;
            return this;
        }

        public final Builder warning_color_value(String warning_color_value) {
            Intrinsics.checkNotNullParameter(warning_color_value, "warning_color_value");
            this.warning_color_value = warning_color_value;
            return this;
        }

        public final Builder critical_color_value(String critical_color_value) {
            Intrinsics.checkNotNullParameter(critical_color_value, "critical_color_value");
            this.critical_color_value = critical_color_value;
            return this;
        }

        public final Builder secondary_button_background_color_value(String secondary_button_background_color_value) {
            Intrinsics.checkNotNullParameter(secondary_button_background_color_value, "secondary_button_background_color_value");
            this.secondary_button_background_color_value = secondary_button_background_color_value;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApiAppThemeConfig build() {
            return new ApiAppThemeConfig(this.style, this.primary, this.secondary, this.accent, this.base_1_color_value, this.base_2_color_value, this.base_3_color_value, this.base_4_color_value, this.base_5_color_value, this.base_6_color_value, this.base_7_color_value, this.base_8_color_value, this.base_9_color_value, this.disabled_color_value, this.success_color_value, this.warning_color_value, this.critical_color_value, this.secondary_button_background_color_value, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApiAppThemeConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApiAppThemeConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiAppThemeConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApiAppThemeConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApiAppThemeConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.style != ApiAppThemeConfig.Style.STYLE_INVALID) {
                    size += ApiAppThemeConfig.Style.ADAPTER.encodedSizeWithTag(1, value.style);
                }
                if (!Intrinsics.areEqual(value.primary, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.primary);
                }
                if (!Intrinsics.areEqual(value.secondary, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.secondary);
                }
                if (!Intrinsics.areEqual(value.accent, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.accent);
                }
                if (!Intrinsics.areEqual(value.base_1_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.base_1_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.base_2_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(14, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(15, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(16, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(17, value.critical_color_value);
                }
                return !Intrinsics.areEqual(value.secondary_button_background_color_value, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(18, value.secondary_button_background_color_value) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApiAppThemeConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.style != ApiAppThemeConfig.Style.STYLE_INVALID) {
                    ApiAppThemeConfig.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                }
                if (!Intrinsics.areEqual(value.primary, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.primary);
                }
                if (!Intrinsics.areEqual(value.secondary, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.secondary);
                }
                if (!Intrinsics.areEqual(value.accent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.accent);
                }
                if (!Intrinsics.areEqual(value.base_1_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.base_1_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.base_2_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.critical_color_value);
                }
                if (!Intrinsics.areEqual(value.secondary_button_background_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.secondary_button_background_color_value);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApiAppThemeConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.secondary_button_background_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.secondary_button_background_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.critical_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.base_2_color_value);
                }
                if (!Intrinsics.areEqual(value.base_1_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.base_1_color_value);
                }
                if (!Intrinsics.areEqual(value.accent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.accent);
                }
                if (!Intrinsics.areEqual(value.secondary, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.secondary);
                }
                if (!Intrinsics.areEqual(value.primary, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.primary);
                }
                if (value.style != ApiAppThemeConfig.Style.STYLE_INVALID) {
                    ApiAppThemeConfig.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApiAppThemeConfig decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                String str3;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ApiAppThemeConfig.Style style = ApiAppThemeConfig.Style.STYLE_INVALID;
                long jBeginMessage = reader.beginMessage();
                ApiAppThemeConfig.Style styleDecode = style;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                String strDecode10 = strDecode9;
                String strDecode11 = strDecode10;
                String strDecode12 = strDecode11;
                String strDecode13 = strDecode12;
                String strDecode14 = strDecode13;
                String strDecode15 = strDecode14;
                String strDecode16 = strDecode15;
                String strDecode17 = strDecode16;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                try {
                                    styleDecode = ApiAppThemeConfig.Style.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str = strDecode;
                                    str2 = strDecode2;
                                    str3 = strDecode3;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode = str;
                                    strDecode3 = str3;
                                    strDecode2 = str2;
                                }
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 7:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 8:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 10:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 11:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 12:
                                strDecode11 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 13:
                                strDecode12 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 14:
                                strDecode13 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 15:
                                strDecode14 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 16:
                                strDecode15 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 17:
                                strDecode16 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 18:
                                strDecode17 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            default:
                                str = strDecode;
                                str2 = strDecode2;
                                str3 = strDecode3;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                        strDecode3 = str3;
                        strDecode2 = str2;
                    } else {
                        return new ApiAppThemeConfig(styleDecode, strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, strDecode14, strDecode15, strDecode16, strDecode17, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApiAppThemeConfig redact(ApiAppThemeConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ApiAppThemeConfig.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 262143, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ApiAppThemeConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STYLE_INVALID", "LIGHT", "DARK", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Style implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Style[] $VALUES;
        public static final ProtoAdapter<Style> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Style DARK;
        public static final Style LIGHT;
        public static final Style STYLE_INVALID;
        private final int value;

        private static final /* synthetic */ Style[] $values() {
            return new Style[]{STYLE_INVALID, LIGHT, DARK};
        }

        @JvmStatic
        public static final Style fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Style> getEntries() {
            return $ENTRIES;
        }

        public static Style valueOf(String str) {
            return (Style) Enum.valueOf(Style.class, str);
        }

        public static Style[] values() {
            return (Style[]) $VALUES.clone();
        }

        private Style(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Style style = new Style("STYLE_INVALID", 0, 0);
            STYLE_INVALID = style;
            LIGHT = new Style("LIGHT", 1, 1);
            DARK = new Style("DARK", 2, 2);
            Style[] styleArr$values = $values();
            $VALUES = styleArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(styleArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Style.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Style>(orCreateKotlinClass, syntax, style) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig$Style$Companion$ADAPTER$1
                {
                    ApiAppThemeConfig.Style style2 = style;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ApiAppThemeConfig.Style fromValue(int value) {
                    return ApiAppThemeConfig.Style.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ApiAppThemeConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Style fromValue(int value) {
                if (value == 0) {
                    return Style.STYLE_INVALID;
                }
                if (value == 1) {
                    return Style.LIGHT;
                }
                if (value != 2) {
                    return null;
                }
                return Style.DARK;
            }
        }
    }
}
