package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.sun.jna.platform.win32.Advapi32;
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

/* JADX INFO: compiled from: SetPinPadButtonsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB«\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J¬\u0001\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;", "zero", "Lcom/stripe/bbpos/sdk/ButtonCoordinates;", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "backspace", "cancel", "enter", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetPinPadButtonsRequest extends Message<SetPinPadButtonsRequest, Builder> {
    public static final ProtoAdapter<SetPinPadButtonsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final ButtonCoordinates backspace;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final ButtonCoordinates cancel;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final ButtonCoordinates eight;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final ButtonCoordinates enter;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final ButtonCoordinates five;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final ButtonCoordinates four;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final ButtonCoordinates nine;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ButtonCoordinates one;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final ButtonCoordinates seven;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final ButtonCoordinates six;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ButtonCoordinates three;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ButtonCoordinates two;

    @WireField(adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ButtonCoordinates zero;

    public SetPinPadButtonsRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Advapi32.MAX_VALUE_NAME, null);
    }

    public /* synthetic */ SetPinPadButtonsRequest(ButtonCoordinates buttonCoordinates, ButtonCoordinates buttonCoordinates2, ButtonCoordinates buttonCoordinates3, ButtonCoordinates buttonCoordinates4, ButtonCoordinates buttonCoordinates5, ButtonCoordinates buttonCoordinates6, ButtonCoordinates buttonCoordinates7, ButtonCoordinates buttonCoordinates8, ButtonCoordinates buttonCoordinates9, ButtonCoordinates buttonCoordinates10, ButtonCoordinates buttonCoordinates11, ButtonCoordinates buttonCoordinates12, ButtonCoordinates buttonCoordinates13, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : buttonCoordinates, (i & 2) != 0 ? null : buttonCoordinates2, (i & 4) != 0 ? null : buttonCoordinates3, (i & 8) != 0 ? null : buttonCoordinates4, (i & 16) != 0 ? null : buttonCoordinates5, (i & 32) != 0 ? null : buttonCoordinates6, (i & 64) != 0 ? null : buttonCoordinates7, (i & 128) != 0 ? null : buttonCoordinates8, (i & 256) != 0 ? null : buttonCoordinates9, (i & 512) != 0 ? null : buttonCoordinates10, (i & 1024) != 0 ? null : buttonCoordinates11, (i & 2048) != 0 ? null : buttonCoordinates12, (i & 4096) == 0 ? buttonCoordinates13 : null, (i & 8192) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetPinPadButtonsRequest(ButtonCoordinates buttonCoordinates, ButtonCoordinates buttonCoordinates2, ButtonCoordinates buttonCoordinates3, ButtonCoordinates buttonCoordinates4, ButtonCoordinates buttonCoordinates5, ButtonCoordinates buttonCoordinates6, ButtonCoordinates buttonCoordinates7, ButtonCoordinates buttonCoordinates8, ButtonCoordinates buttonCoordinates9, ButtonCoordinates buttonCoordinates10, ButtonCoordinates buttonCoordinates11, ButtonCoordinates buttonCoordinates12, ButtonCoordinates buttonCoordinates13, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.zero = buttonCoordinates;
        this.one = buttonCoordinates2;
        this.two = buttonCoordinates3;
        this.three = buttonCoordinates4;
        this.four = buttonCoordinates5;
        this.five = buttonCoordinates6;
        this.six = buttonCoordinates7;
        this.seven = buttonCoordinates8;
        this.eight = buttonCoordinates9;
        this.nine = buttonCoordinates10;
        this.backspace = buttonCoordinates11;
        this.cancel = buttonCoordinates12;
        this.enter = buttonCoordinates13;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.zero = this.zero;
        builder.one = this.one;
        builder.two = this.two;
        builder.three = this.three;
        builder.four = this.four;
        builder.five = this.five;
        builder.six = this.six;
        builder.seven = this.seven;
        builder.eight = this.eight;
        builder.nine = this.nine;
        builder.backspace = this.backspace;
        builder.cancel = this.cancel;
        builder.enter = this.enter;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SetPinPadButtonsRequest)) {
            return false;
        }
        SetPinPadButtonsRequest setPinPadButtonsRequest = (SetPinPadButtonsRequest) other;
        return Intrinsics.areEqual(unknownFields(), setPinPadButtonsRequest.unknownFields()) && Intrinsics.areEqual(this.zero, setPinPadButtonsRequest.zero) && Intrinsics.areEqual(this.one, setPinPadButtonsRequest.one) && Intrinsics.areEqual(this.two, setPinPadButtonsRequest.two) && Intrinsics.areEqual(this.three, setPinPadButtonsRequest.three) && Intrinsics.areEqual(this.four, setPinPadButtonsRequest.four) && Intrinsics.areEqual(this.five, setPinPadButtonsRequest.five) && Intrinsics.areEqual(this.six, setPinPadButtonsRequest.six) && Intrinsics.areEqual(this.seven, setPinPadButtonsRequest.seven) && Intrinsics.areEqual(this.eight, setPinPadButtonsRequest.eight) && Intrinsics.areEqual(this.nine, setPinPadButtonsRequest.nine) && Intrinsics.areEqual(this.backspace, setPinPadButtonsRequest.backspace) && Intrinsics.areEqual(this.cancel, setPinPadButtonsRequest.cancel) && Intrinsics.areEqual(this.enter, setPinPadButtonsRequest.enter);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ButtonCoordinates buttonCoordinates = this.zero;
        int iHashCode2 = (iHashCode + (buttonCoordinates != null ? buttonCoordinates.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates2 = this.one;
        int iHashCode3 = (iHashCode2 + (buttonCoordinates2 != null ? buttonCoordinates2.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates3 = this.two;
        int iHashCode4 = (iHashCode3 + (buttonCoordinates3 != null ? buttonCoordinates3.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates4 = this.three;
        int iHashCode5 = (iHashCode4 + (buttonCoordinates4 != null ? buttonCoordinates4.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates5 = this.four;
        int iHashCode6 = (iHashCode5 + (buttonCoordinates5 != null ? buttonCoordinates5.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates6 = this.five;
        int iHashCode7 = (iHashCode6 + (buttonCoordinates6 != null ? buttonCoordinates6.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates7 = this.six;
        int iHashCode8 = (iHashCode7 + (buttonCoordinates7 != null ? buttonCoordinates7.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates8 = this.seven;
        int iHashCode9 = (iHashCode8 + (buttonCoordinates8 != null ? buttonCoordinates8.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates9 = this.eight;
        int iHashCode10 = (iHashCode9 + (buttonCoordinates9 != null ? buttonCoordinates9.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates10 = this.nine;
        int iHashCode11 = (iHashCode10 + (buttonCoordinates10 != null ? buttonCoordinates10.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates11 = this.backspace;
        int iHashCode12 = (iHashCode11 + (buttonCoordinates11 != null ? buttonCoordinates11.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates12 = this.cancel;
        int iHashCode13 = (iHashCode12 + (buttonCoordinates12 != null ? buttonCoordinates12.hashCode() : 0)) * 37;
        ButtonCoordinates buttonCoordinates13 = this.enter;
        int iHashCode14 = iHashCode13 + (buttonCoordinates13 != null ? buttonCoordinates13.hashCode() : 0);
        this.hashCode = iHashCode14;
        return iHashCode14;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.zero != null) {
            arrayList.add("zero=" + this.zero);
        }
        if (this.one != null) {
            arrayList.add("one=" + this.one);
        }
        if (this.two != null) {
            arrayList.add("two=" + this.two);
        }
        if (this.three != null) {
            arrayList.add("three=" + this.three);
        }
        if (this.four != null) {
            arrayList.add("four=" + this.four);
        }
        if (this.five != null) {
            arrayList.add("five=" + this.five);
        }
        if (this.six != null) {
            arrayList.add("six=" + this.six);
        }
        if (this.seven != null) {
            arrayList.add("seven=" + this.seven);
        }
        if (this.eight != null) {
            arrayList.add("eight=" + this.eight);
        }
        if (this.nine != null) {
            arrayList.add("nine=" + this.nine);
        }
        if (this.backspace != null) {
            arrayList.add("backspace=" + this.backspace);
        }
        if (this.cancel != null) {
            arrayList.add("cancel=" + this.cancel);
        }
        if (this.enter != null) {
            arrayList.add("enter=" + this.enter);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SetPinPadButtonsRequest{", "}", 0, null, null, 56, null);
    }

    public final SetPinPadButtonsRequest copy(ButtonCoordinates zero, ButtonCoordinates one, ButtonCoordinates two, ButtonCoordinates three, ButtonCoordinates four, ButtonCoordinates five, ButtonCoordinates six, ButtonCoordinates seven, ButtonCoordinates eight, ButtonCoordinates nine, ButtonCoordinates backspace, ButtonCoordinates cancel, ButtonCoordinates enter, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SetPinPadButtonsRequest(zero, one, two, three, four, five, six, seven, eight, nine, backspace, cancel, enter, unknownFields);
    }

    /* JADX INFO: compiled from: SetPinPadButtonsRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;", "()V", "backspace", "Lcom/stripe/bbpos/sdk/ButtonCoordinates;", "cancel", "eight", "enter", "five", "four", "nine", "one", "seven", "six", "three", "two", "zero", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SetPinPadButtonsRequest, Builder> {
        public ButtonCoordinates backspace;
        public ButtonCoordinates cancel;
        public ButtonCoordinates eight;
        public ButtonCoordinates enter;
        public ButtonCoordinates five;
        public ButtonCoordinates four;
        public ButtonCoordinates nine;
        public ButtonCoordinates one;
        public ButtonCoordinates seven;
        public ButtonCoordinates six;
        public ButtonCoordinates three;
        public ButtonCoordinates two;
        public ButtonCoordinates zero;

        public final Builder zero(ButtonCoordinates zero) {
            this.zero = zero;
            return this;
        }

        public final Builder one(ButtonCoordinates one) {
            this.one = one;
            return this;
        }

        public final Builder two(ButtonCoordinates two) {
            this.two = two;
            return this;
        }

        public final Builder three(ButtonCoordinates three) {
            this.three = three;
            return this;
        }

        public final Builder four(ButtonCoordinates four) {
            this.four = four;
            return this;
        }

        public final Builder five(ButtonCoordinates five) {
            this.five = five;
            return this;
        }

        public final Builder six(ButtonCoordinates six) {
            this.six = six;
            return this;
        }

        public final Builder seven(ButtonCoordinates seven) {
            this.seven = seven;
            return this;
        }

        public final Builder eight(ButtonCoordinates eight) {
            this.eight = eight;
            return this;
        }

        public final Builder nine(ButtonCoordinates nine) {
            this.nine = nine;
            return this;
        }

        public final Builder backspace(ButtonCoordinates backspace) {
            this.backspace = backspace;
            return this;
        }

        public final Builder cancel(ButtonCoordinates cancel) {
            this.cancel = cancel;
            return this;
        }

        public final Builder enter(ButtonCoordinates enter) {
            this.enter = enter;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SetPinPadButtonsRequest build() {
            return new SetPinPadButtonsRequest(this.zero, this.one, this.two, this.three, this.four, this.five, this.six, this.seven, this.eight, this.nine, this.backspace, this.cancel, this.enter, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SetPinPadButtonsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SetPinPadButtonsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetPinPadButtonsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SetPinPadButtonsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.SetPinPadButtonsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SetPinPadButtonsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.zero != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(1, value.zero);
                }
                if (value.one != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(2, value.one);
                }
                if (value.two != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(3, value.two);
                }
                if (value.three != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(4, value.three);
                }
                if (value.four != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(5, value.four);
                }
                if (value.five != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(6, value.five);
                }
                if (value.six != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(7, value.six);
                }
                if (value.seven != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(8, value.seven);
                }
                if (value.eight != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(9, value.eight);
                }
                if (value.nine != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(10, value.nine);
                }
                if (value.backspace != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(11, value.backspace);
                }
                if (value.cancel != null) {
                    size += ButtonCoordinates.ADAPTER.encodedSizeWithTag(12, value.cancel);
                }
                return value.enter != null ? size + ButtonCoordinates.ADAPTER.encodedSizeWithTag(13, value.enter) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SetPinPadButtonsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.zero != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 1, value.zero);
                }
                if (value.one != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 2, value.one);
                }
                if (value.two != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 3, value.two);
                }
                if (value.three != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 4, value.three);
                }
                if (value.four != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 5, value.four);
                }
                if (value.five != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 6, value.five);
                }
                if (value.six != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 7, value.six);
                }
                if (value.seven != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 8, value.seven);
                }
                if (value.eight != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 9, value.eight);
                }
                if (value.nine != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 10, value.nine);
                }
                if (value.backspace != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 11, value.backspace);
                }
                if (value.cancel != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 12, value.cancel);
                }
                if (value.enter != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 13, value.enter);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SetPinPadButtonsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enter != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 13, value.enter);
                }
                if (value.cancel != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 12, value.cancel);
                }
                if (value.backspace != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 11, value.backspace);
                }
                if (value.nine != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 10, value.nine);
                }
                if (value.eight != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 9, value.eight);
                }
                if (value.seven != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 8, value.seven);
                }
                if (value.six != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 7, value.six);
                }
                if (value.five != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 6, value.five);
                }
                if (value.four != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 5, value.four);
                }
                if (value.three != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 4, value.three);
                }
                if (value.two != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 3, value.two);
                }
                if (value.one != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 2, value.one);
                }
                if (value.zero != null) {
                    ButtonCoordinates.ADAPTER.encodeWithTag(writer, 1, value.zero);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SetPinPadButtonsRequest redact(SetPinPadButtonsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ButtonCoordinates buttonCoordinates = value.zero;
                ButtonCoordinates buttonCoordinatesRedact = buttonCoordinates != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates) : null;
                ButtonCoordinates buttonCoordinates2 = value.one;
                ButtonCoordinates buttonCoordinatesRedact2 = buttonCoordinates2 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates2) : null;
                ButtonCoordinates buttonCoordinates3 = value.two;
                ButtonCoordinates buttonCoordinatesRedact3 = buttonCoordinates3 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates3) : null;
                ButtonCoordinates buttonCoordinates4 = value.three;
                ButtonCoordinates buttonCoordinatesRedact4 = buttonCoordinates4 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates4) : null;
                ButtonCoordinates buttonCoordinates5 = value.four;
                ButtonCoordinates buttonCoordinatesRedact5 = buttonCoordinates5 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates5) : null;
                ButtonCoordinates buttonCoordinates6 = value.five;
                ButtonCoordinates buttonCoordinatesRedact6 = buttonCoordinates6 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates6) : null;
                ButtonCoordinates buttonCoordinates7 = value.six;
                ButtonCoordinates buttonCoordinatesRedact7 = buttonCoordinates7 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates7) : null;
                ButtonCoordinates buttonCoordinates8 = value.seven;
                ButtonCoordinates buttonCoordinatesRedact8 = buttonCoordinates8 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates8) : null;
                ButtonCoordinates buttonCoordinates9 = value.eight;
                ButtonCoordinates buttonCoordinatesRedact9 = buttonCoordinates9 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates9) : null;
                ButtonCoordinates buttonCoordinates10 = value.nine;
                ButtonCoordinates buttonCoordinatesRedact10 = buttonCoordinates10 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates10) : null;
                ButtonCoordinates buttonCoordinates11 = value.backspace;
                ButtonCoordinates buttonCoordinatesRedact11 = buttonCoordinates11 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates11) : null;
                ButtonCoordinates buttonCoordinates12 = value.cancel;
                ButtonCoordinates buttonCoordinatesRedact12 = buttonCoordinates12 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates12) : null;
                ButtonCoordinates buttonCoordinates13 = value.enter;
                return value.copy(buttonCoordinatesRedact, buttonCoordinatesRedact2, buttonCoordinatesRedact3, buttonCoordinatesRedact4, buttonCoordinatesRedact5, buttonCoordinatesRedact6, buttonCoordinatesRedact7, buttonCoordinatesRedact8, buttonCoordinatesRedact9, buttonCoordinatesRedact10, buttonCoordinatesRedact11, buttonCoordinatesRedact12, buttonCoordinates13 != null ? ButtonCoordinates.ADAPTER.redact(buttonCoordinates13) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SetPinPadButtonsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ButtonCoordinates buttonCoordinatesDecode = null;
                ButtonCoordinates buttonCoordinatesDecode2 = null;
                ButtonCoordinates buttonCoordinatesDecode3 = null;
                ButtonCoordinates buttonCoordinatesDecode4 = null;
                ButtonCoordinates buttonCoordinatesDecode5 = null;
                ButtonCoordinates buttonCoordinatesDecode6 = null;
                ButtonCoordinates buttonCoordinatesDecode7 = null;
                ButtonCoordinates buttonCoordinatesDecode8 = null;
                ButtonCoordinates buttonCoordinatesDecode9 = null;
                ButtonCoordinates buttonCoordinatesDecode10 = null;
                ButtonCoordinates buttonCoordinatesDecode11 = null;
                ButtonCoordinates buttonCoordinatesDecode12 = null;
                ButtonCoordinates buttonCoordinatesDecode13 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    ButtonCoordinates buttonCoordinates = buttonCoordinatesDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                buttonCoordinatesDecode13 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 2:
                                buttonCoordinatesDecode = ButtonCoordinates.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                buttonCoordinatesDecode2 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 4:
                                buttonCoordinatesDecode3 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 5:
                                buttonCoordinatesDecode4 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 6:
                                buttonCoordinatesDecode5 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 7:
                                buttonCoordinatesDecode6 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 8:
                                buttonCoordinatesDecode7 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 9:
                                buttonCoordinatesDecode8 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 10:
                                buttonCoordinatesDecode9 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 11:
                                buttonCoordinatesDecode10 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 12:
                                buttonCoordinatesDecode11 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            case 13:
                                buttonCoordinatesDecode12 = ButtonCoordinates.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        buttonCoordinatesDecode = buttonCoordinates;
                    } else {
                        return new SetPinPadButtonsRequest(buttonCoordinatesDecode13, buttonCoordinates, buttonCoordinatesDecode2, buttonCoordinatesDecode3, buttonCoordinatesDecode4, buttonCoordinatesDecode5, buttonCoordinatesDecode6, buttonCoordinatesDecode7, buttonCoordinatesDecode8, buttonCoordinatesDecode9, buttonCoordinatesDecode10, buttonCoordinatesDecode11, buttonCoordinatesDecode12, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
