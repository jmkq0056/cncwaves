package com.stripe.proto.model.theme;

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

/* JADX INFO: compiled from: ComponentColors.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\"B¹\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017Jº\u0001\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0002H\u0016J\b\u0010 \u001a\u00020\u0004H\u0016R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/proto/model/theme/ComponentColors;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/theme/ComponentColors$Builder;", "base_1_color_value", "", "base_2_color_value", "base_3_color_value", "base_4_color_value", "base_5_color_value", "base_6_color_value", "base_7_color_value", "base_8_color_value", "base_9_color_value", "accent_color_value", "primary_color_value", "secondary_color_value", "disabled_color_value", "success_color_value", "warning_color_value", "critical_color_value", "secondary_button_background_color_value", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ComponentColors extends Message<ComponentColors, Builder> {
    public static final ProtoAdapter<ComponentColors> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accentColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String accent_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base1ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String base_1_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base2ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String base_2_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base3ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String base_3_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base4ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String base_4_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base5ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String base_5_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base6ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String base_6_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base7ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String base_7_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base8ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String base_8_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "base9ColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String base_9_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "criticalColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final String critical_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "disabledColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String disabled_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "primaryColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String primary_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "secondaryButtonBackgroundColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final String secondary_button_background_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "secondaryColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String secondary_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "successColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final String success_color_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "warningColorValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String warning_color_value;

    public ComponentColors() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public /* synthetic */ ComponentColors(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9, (i & 512) != 0 ? "" : str10, (i & 1024) != 0 ? "" : str11, (i & 2048) != 0 ? "" : str12, (i & 4096) != 0 ? "" : str13, (i & 8192) != 0 ? "" : str14, (i & 16384) != 0 ? "" : str15, (i & 32768) != 0 ? "" : str16, (i & 65536) == 0 ? str17 : "", (i & 131072) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComponentColors(String base_1_color_value, String base_2_color_value, String base_3_color_value, String base_4_color_value, String base_5_color_value, String base_6_color_value, String base_7_color_value, String base_8_color_value, String base_9_color_value, String accent_color_value, String primary_color_value, String secondary_color_value, String disabled_color_value, String success_color_value, String warning_color_value, String critical_color_value, String secondary_button_background_color_value, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(base_1_color_value, "base_1_color_value");
        Intrinsics.checkNotNullParameter(base_2_color_value, "base_2_color_value");
        Intrinsics.checkNotNullParameter(base_3_color_value, "base_3_color_value");
        Intrinsics.checkNotNullParameter(base_4_color_value, "base_4_color_value");
        Intrinsics.checkNotNullParameter(base_5_color_value, "base_5_color_value");
        Intrinsics.checkNotNullParameter(base_6_color_value, "base_6_color_value");
        Intrinsics.checkNotNullParameter(base_7_color_value, "base_7_color_value");
        Intrinsics.checkNotNullParameter(base_8_color_value, "base_8_color_value");
        Intrinsics.checkNotNullParameter(base_9_color_value, "base_9_color_value");
        Intrinsics.checkNotNullParameter(accent_color_value, "accent_color_value");
        Intrinsics.checkNotNullParameter(primary_color_value, "primary_color_value");
        Intrinsics.checkNotNullParameter(secondary_color_value, "secondary_color_value");
        Intrinsics.checkNotNullParameter(disabled_color_value, "disabled_color_value");
        Intrinsics.checkNotNullParameter(success_color_value, "success_color_value");
        Intrinsics.checkNotNullParameter(warning_color_value, "warning_color_value");
        Intrinsics.checkNotNullParameter(critical_color_value, "critical_color_value");
        Intrinsics.checkNotNullParameter(secondary_button_background_color_value, "secondary_button_background_color_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.base_1_color_value = base_1_color_value;
        this.base_2_color_value = base_2_color_value;
        this.base_3_color_value = base_3_color_value;
        this.base_4_color_value = base_4_color_value;
        this.base_5_color_value = base_5_color_value;
        this.base_6_color_value = base_6_color_value;
        this.base_7_color_value = base_7_color_value;
        this.base_8_color_value = base_8_color_value;
        this.base_9_color_value = base_9_color_value;
        this.accent_color_value = accent_color_value;
        this.primary_color_value = primary_color_value;
        this.secondary_color_value = secondary_color_value;
        this.disabled_color_value = disabled_color_value;
        this.success_color_value = success_color_value;
        this.warning_color_value = warning_color_value;
        this.critical_color_value = critical_color_value;
        this.secondary_button_background_color_value = secondary_button_background_color_value;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.base_1_color_value = this.base_1_color_value;
        builder.base_2_color_value = this.base_2_color_value;
        builder.base_3_color_value = this.base_3_color_value;
        builder.base_4_color_value = this.base_4_color_value;
        builder.base_5_color_value = this.base_5_color_value;
        builder.base_6_color_value = this.base_6_color_value;
        builder.base_7_color_value = this.base_7_color_value;
        builder.base_8_color_value = this.base_8_color_value;
        builder.base_9_color_value = this.base_9_color_value;
        builder.accent_color_value = this.accent_color_value;
        builder.primary_color_value = this.primary_color_value;
        builder.secondary_color_value = this.secondary_color_value;
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
        if (!(other instanceof ComponentColors)) {
            return false;
        }
        ComponentColors componentColors = (ComponentColors) other;
        return Intrinsics.areEqual(unknownFields(), componentColors.unknownFields()) && Intrinsics.areEqual(this.base_1_color_value, componentColors.base_1_color_value) && Intrinsics.areEqual(this.base_2_color_value, componentColors.base_2_color_value) && Intrinsics.areEqual(this.base_3_color_value, componentColors.base_3_color_value) && Intrinsics.areEqual(this.base_4_color_value, componentColors.base_4_color_value) && Intrinsics.areEqual(this.base_5_color_value, componentColors.base_5_color_value) && Intrinsics.areEqual(this.base_6_color_value, componentColors.base_6_color_value) && Intrinsics.areEqual(this.base_7_color_value, componentColors.base_7_color_value) && Intrinsics.areEqual(this.base_8_color_value, componentColors.base_8_color_value) && Intrinsics.areEqual(this.base_9_color_value, componentColors.base_9_color_value) && Intrinsics.areEqual(this.accent_color_value, componentColors.accent_color_value) && Intrinsics.areEqual(this.primary_color_value, componentColors.primary_color_value) && Intrinsics.areEqual(this.secondary_color_value, componentColors.secondary_color_value) && Intrinsics.areEqual(this.disabled_color_value, componentColors.disabled_color_value) && Intrinsics.areEqual(this.success_color_value, componentColors.success_color_value) && Intrinsics.areEqual(this.warning_color_value, componentColors.warning_color_value) && Intrinsics.areEqual(this.critical_color_value, componentColors.critical_color_value) && Intrinsics.areEqual(this.secondary_button_background_color_value, componentColors.secondary_button_background_color_value);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + this.base_1_color_value.hashCode()) * 37) + this.base_2_color_value.hashCode()) * 37) + this.base_3_color_value.hashCode()) * 37) + this.base_4_color_value.hashCode()) * 37) + this.base_5_color_value.hashCode()) * 37) + this.base_6_color_value.hashCode()) * 37) + this.base_7_color_value.hashCode()) * 37) + this.base_8_color_value.hashCode()) * 37) + this.base_9_color_value.hashCode()) * 37) + this.accent_color_value.hashCode()) * 37) + this.primary_color_value.hashCode()) * 37) + this.secondary_color_value.hashCode()) * 37) + this.disabled_color_value.hashCode()) * 37) + this.success_color_value.hashCode()) * 37) + this.warning_color_value.hashCode()) * 37) + this.critical_color_value.hashCode()) * 37) + this.secondary_button_background_color_value.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("base_1_color_value=" + Internal.sanitize(this.base_1_color_value));
        arrayList2.add("base_2_color_value=" + Internal.sanitize(this.base_2_color_value));
        arrayList2.add("base_3_color_value=" + Internal.sanitize(this.base_3_color_value));
        arrayList2.add("base_4_color_value=" + Internal.sanitize(this.base_4_color_value));
        arrayList2.add("base_5_color_value=" + Internal.sanitize(this.base_5_color_value));
        arrayList2.add("base_6_color_value=" + Internal.sanitize(this.base_6_color_value));
        arrayList2.add("base_7_color_value=" + Internal.sanitize(this.base_7_color_value));
        arrayList2.add("base_8_color_value=" + Internal.sanitize(this.base_8_color_value));
        arrayList2.add("base_9_color_value=" + Internal.sanitize(this.base_9_color_value));
        arrayList2.add("accent_color_value=" + Internal.sanitize(this.accent_color_value));
        arrayList2.add("primary_color_value=" + Internal.sanitize(this.primary_color_value));
        arrayList2.add("secondary_color_value=" + Internal.sanitize(this.secondary_color_value));
        arrayList2.add("disabled_color_value=" + Internal.sanitize(this.disabled_color_value));
        arrayList2.add("success_color_value=" + Internal.sanitize(this.success_color_value));
        arrayList2.add("warning_color_value=" + Internal.sanitize(this.warning_color_value));
        arrayList2.add("critical_color_value=" + Internal.sanitize(this.critical_color_value));
        arrayList2.add("secondary_button_background_color_value=" + Internal.sanitize(this.secondary_button_background_color_value));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ComponentColors{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ComponentColors copy$default(ComponentColors componentColors, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, ByteString byteString, int i, Object obj) {
        String str18 = (i & 1) != 0 ? componentColors.base_1_color_value : str;
        return componentColors.copy(str18, (i & 2) != 0 ? componentColors.base_2_color_value : str2, (i & 4) != 0 ? componentColors.base_3_color_value : str3, (i & 8) != 0 ? componentColors.base_4_color_value : str4, (i & 16) != 0 ? componentColors.base_5_color_value : str5, (i & 32) != 0 ? componentColors.base_6_color_value : str6, (i & 64) != 0 ? componentColors.base_7_color_value : str7, (i & 128) != 0 ? componentColors.base_8_color_value : str8, (i & 256) != 0 ? componentColors.base_9_color_value : str9, (i & 512) != 0 ? componentColors.accent_color_value : str10, (i & 1024) != 0 ? componentColors.primary_color_value : str11, (i & 2048) != 0 ? componentColors.secondary_color_value : str12, (i & 4096) != 0 ? componentColors.disabled_color_value : str13, (i & 8192) != 0 ? componentColors.success_color_value : str14, (i & 16384) != 0 ? componentColors.warning_color_value : str15, (i & 32768) != 0 ? componentColors.critical_color_value : str16, (i & 65536) != 0 ? componentColors.secondary_button_background_color_value : str17, (i & 131072) != 0 ? componentColors.unknownFields() : byteString);
    }

    public final ComponentColors copy(String base_1_color_value, String base_2_color_value, String base_3_color_value, String base_4_color_value, String base_5_color_value, String base_6_color_value, String base_7_color_value, String base_8_color_value, String base_9_color_value, String accent_color_value, String primary_color_value, String secondary_color_value, String disabled_color_value, String success_color_value, String warning_color_value, String critical_color_value, String secondary_button_background_color_value, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(base_1_color_value, "base_1_color_value");
        Intrinsics.checkNotNullParameter(base_2_color_value, "base_2_color_value");
        Intrinsics.checkNotNullParameter(base_3_color_value, "base_3_color_value");
        Intrinsics.checkNotNullParameter(base_4_color_value, "base_4_color_value");
        Intrinsics.checkNotNullParameter(base_5_color_value, "base_5_color_value");
        Intrinsics.checkNotNullParameter(base_6_color_value, "base_6_color_value");
        Intrinsics.checkNotNullParameter(base_7_color_value, "base_7_color_value");
        Intrinsics.checkNotNullParameter(base_8_color_value, "base_8_color_value");
        Intrinsics.checkNotNullParameter(base_9_color_value, "base_9_color_value");
        Intrinsics.checkNotNullParameter(accent_color_value, "accent_color_value");
        Intrinsics.checkNotNullParameter(primary_color_value, "primary_color_value");
        Intrinsics.checkNotNullParameter(secondary_color_value, "secondary_color_value");
        Intrinsics.checkNotNullParameter(disabled_color_value, "disabled_color_value");
        Intrinsics.checkNotNullParameter(success_color_value, "success_color_value");
        Intrinsics.checkNotNullParameter(warning_color_value, "warning_color_value");
        Intrinsics.checkNotNullParameter(critical_color_value, "critical_color_value");
        Intrinsics.checkNotNullParameter(secondary_button_background_color_value, "secondary_button_background_color_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ComponentColors(base_1_color_value, base_2_color_value, base_3_color_value, base_4_color_value, base_5_color_value, base_6_color_value, base_7_color_value, base_8_color_value, base_9_color_value, accent_color_value, primary_color_value, secondary_color_value, disabled_color_value, success_color_value, warning_color_value, critical_color_value, secondary_button_background_color_value, unknownFields);
    }

    /* JADX INFO: compiled from: ComponentColors.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/theme/ComponentColors$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/theme/ComponentColors;", "()V", "accent_color_value", "", "base_1_color_value", "base_2_color_value", "base_3_color_value", "base_4_color_value", "base_5_color_value", "base_6_color_value", "base_7_color_value", "base_8_color_value", "base_9_color_value", "critical_color_value", "disabled_color_value", "primary_color_value", "secondary_button_background_color_value", "secondary_color_value", "success_color_value", "warning_color_value", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ComponentColors, Builder> {
        public String base_1_color_value = "";
        public String base_2_color_value = "";
        public String base_3_color_value = "";
        public String base_4_color_value = "";
        public String base_5_color_value = "";
        public String base_6_color_value = "";
        public String base_7_color_value = "";
        public String base_8_color_value = "";
        public String base_9_color_value = "";
        public String accent_color_value = "";
        public String primary_color_value = "";
        public String secondary_color_value = "";
        public String disabled_color_value = "";
        public String success_color_value = "";
        public String warning_color_value = "";
        public String critical_color_value = "";
        public String secondary_button_background_color_value = "";

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

        public final Builder accent_color_value(String accent_color_value) {
            Intrinsics.checkNotNullParameter(accent_color_value, "accent_color_value");
            this.accent_color_value = accent_color_value;
            return this;
        }

        public final Builder primary_color_value(String primary_color_value) {
            Intrinsics.checkNotNullParameter(primary_color_value, "primary_color_value");
            this.primary_color_value = primary_color_value;
            return this;
        }

        public final Builder secondary_color_value(String secondary_color_value) {
            Intrinsics.checkNotNullParameter(secondary_color_value, "secondary_color_value");
            this.secondary_color_value = secondary_color_value;
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
        public ComponentColors build() {
            return new ComponentColors(this.base_1_color_value, this.base_2_color_value, this.base_3_color_value, this.base_4_color_value, this.base_5_color_value, this.base_6_color_value, this.base_7_color_value, this.base_8_color_value, this.base_9_color_value, this.accent_color_value, this.primary_color_value, this.secondary_color_value, this.disabled_color_value, this.success_color_value, this.warning_color_value, this.critical_color_value, this.secondary_button_background_color_value, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ComponentColors.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/theme/ComponentColors$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/theme/ComponentColors;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/theme/ComponentColors$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ComponentColors build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ComponentColors.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ComponentColors>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.theme.ComponentColors$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ComponentColors value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.base_1_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.base_1_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.base_2_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.accent_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.accent_color_value);
                }
                if (!Intrinsics.areEqual(value.primary_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.primary_color_value);
                }
                if (!Intrinsics.areEqual(value.secondary_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.secondary_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(14, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(15, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(16, value.critical_color_value);
                }
                return !Intrinsics.areEqual(value.secondary_button_background_color_value, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(17, value.secondary_button_background_color_value) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ComponentColors value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.base_1_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.base_1_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.base_2_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.accent_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.accent_color_value);
                }
                if (!Intrinsics.areEqual(value.primary_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.primary_color_value);
                }
                if (!Intrinsics.areEqual(value.secondary_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.secondary_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.critical_color_value);
                }
                if (!Intrinsics.areEqual(value.secondary_button_background_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.secondary_button_background_color_value);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ComponentColors value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.secondary_button_background_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.secondary_button_background_color_value);
                }
                if (!Intrinsics.areEqual(value.critical_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.critical_color_value);
                }
                if (!Intrinsics.areEqual(value.warning_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.warning_color_value);
                }
                if (!Intrinsics.areEqual(value.success_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.success_color_value);
                }
                if (!Intrinsics.areEqual(value.disabled_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.disabled_color_value);
                }
                if (!Intrinsics.areEqual(value.secondary_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.secondary_color_value);
                }
                if (!Intrinsics.areEqual(value.primary_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.primary_color_value);
                }
                if (!Intrinsics.areEqual(value.accent_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.accent_color_value);
                }
                if (!Intrinsics.areEqual(value.base_9_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_9_color_value);
                }
                if (!Intrinsics.areEqual(value.base_8_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.base_8_color_value);
                }
                if (!Intrinsics.areEqual(value.base_7_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.base_7_color_value);
                }
                if (!Intrinsics.areEqual(value.base_6_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.base_6_color_value);
                }
                if (!Intrinsics.areEqual(value.base_5_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.base_5_color_value);
                }
                if (!Intrinsics.areEqual(value.base_4_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.base_4_color_value);
                }
                if (!Intrinsics.areEqual(value.base_3_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.base_3_color_value);
                }
                if (!Intrinsics.areEqual(value.base_2_color_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.base_2_color_value);
                }
                if (Intrinsics.areEqual(value.base_1_color_value, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.base_1_color_value);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ComponentColors redact(ComponentColors value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ComponentColors.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 131071, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ComponentColors decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
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
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode17 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 12:
                                strDecode11 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 13:
                                strDecode12 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 14:
                                strDecode13 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 15:
                                strDecode14 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 16:
                                strDecode15 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 17:
                                strDecode16 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new ComponentColors(strDecode17, str, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, strDecode14, strDecode15, strDecode16, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
