package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.sun.jna.platform.win32.WinNT;
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

/* JADX INFO: compiled from: StartEmvRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 +2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*+BÕ\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\r\u0012\b\b\u0002\u0010\u001c\u001a\u00020\r\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010 JÛ\u0001\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u000b2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\r2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\r2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\r2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\b\u0010'\u001a\u00020\bH\u0016J\b\u0010(\u001a\u00020\u0002H\u0016J\b\u0010)\u001a\u00020\u000bH\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010!R\u0010\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/bbpos/sdk/StartEmvRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/TransactionType;", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", BbposDeviceControllerImpl.DISABLE_QUICK_CHIP_PARAM_NAME, "", BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_APPLICATION_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_ACCOUNT_TYPE_PARAM_NAME, BbposDeviceControllerImpl.ONLINE_PROCESS_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.TERMINAL_TIME_PARAM_NAME, BbposDeviceControllerImpl.QUICK_CHIP_OPTION_PARAM_NAME, "Lcom/stripe/bbpos/sdk/QuickChipOption;", "isMerchantChoiceRouting", "terminalCapabilitiesOverride", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "contactlessOnlinePinOption", "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "isAccessiblePinPad", BbposDeviceControllerImpl.PIN_ENTRY_TIMEOUT, "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/StartEmvRequest;", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StartEmvRequest extends Message<StartEmvRequest, Builder> {
    public static final ProtoAdapter<StartEmvRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String amount;

    @WireField(adapter = "com.stripe.bbpos.sdk.CheckCardMode#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CheckCardMode checkCardMode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final int checkCardTimeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.ContactlessOnlinePinOption#ADAPTER", schemaIndex = 15, tag = 16)
    public final ContactlessOnlinePinOption contactlessOnlinePinOption;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int currencyCode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int currencyExponent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean disableQuickChip;

    @WireField(adapter = "com.stripe.bbpos.sdk.DomesticDebitPriority#ADAPTER", schemaIndex = 14, tag = 15)
    public final DomesticDebitPriority domesticDebitPriority;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final boolean forcePinEntry;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final boolean isAccessiblePinPad;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final boolean isMerchantChoiceRouting;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final int onlineProcessTimeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", schemaIndex = 18, tag = 19)
    public final Integer pinEntryTimeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.QuickChipOption#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final QuickChipOption quickChipOption;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final int selectAccountTypeTimeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final int selectApplicationTimeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 13, tag = 14)
    public final String terminalCapabilitiesOverride;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String terminalTime;

    @WireField(adapter = "com.stripe.bbpos.sdk.TransactionType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TransactionType transactionType;

    public StartEmvRequest() {
        this(null, null, 0, 0, null, false, 0, 0, 0, 0, null, null, false, null, null, null, false, false, null, null, WinNT.NLS_VALID_LOCALE_MASK, null);
    }

    public /* synthetic */ StartEmvRequest(TransactionType transactionType, CheckCardMode checkCardMode, int i, int i2, String str, boolean z, int i3, int i4, int i5, int i6, String str2, QuickChipOption quickChipOption, boolean z2, String str3, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z3, boolean z4, Integer num, ByteString byteString, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this((i7 & 1) != 0 ? TransactionType.TRANSACTION_TYPE_UNKNOWN : transactionType, (i7 & 2) != 0 ? CheckCardMode.CHECK_CARD_MODE_UNKNOWN : checkCardMode, (i7 & 4) != 0 ? 0 : i, (i7 & 8) != 0 ? 0 : i2, (i7 & 16) != 0 ? "" : str, (i7 & 32) != 0 ? false : z, (i7 & 64) != 0 ? 0 : i3, (i7 & 128) != 0 ? 0 : i4, (i7 & 256) != 0 ? 0 : i5, (i7 & 512) != 0 ? 0 : i6, (i7 & 1024) == 0 ? str2 : "", (i7 & 2048) != 0 ? QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN : quickChipOption, (i7 & 4096) != 0 ? false : z2, (i7 & 8192) != 0 ? null : str3, (i7 & 16384) != 0 ? null : domesticDebitPriority, (i7 & 32768) != 0 ? null : contactlessOnlinePinOption, (i7 & 65536) != 0 ? false : z3, (i7 & 131072) != 0 ? false : z4, (i7 & 262144) == 0 ? num : null, (i7 & 524288) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartEmvRequest(TransactionType transactionType, CheckCardMode checkCardMode, int i, int i2, String amount, boolean z, int i3, int i4, int i5, int i6, String terminalTime, QuickChipOption quickChipOption, boolean z2, String str, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z3, boolean z4, Integer num, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(terminalTime, "terminalTime");
        Intrinsics.checkNotNullParameter(quickChipOption, "quickChipOption");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.transactionType = transactionType;
        this.checkCardMode = checkCardMode;
        this.currencyCode = i;
        this.currencyExponent = i2;
        this.amount = amount;
        this.disableQuickChip = z;
        this.checkCardTimeout = i3;
        this.selectApplicationTimeout = i4;
        this.selectAccountTypeTimeout = i5;
        this.onlineProcessTimeout = i6;
        this.terminalTime = terminalTime;
        this.quickChipOption = quickChipOption;
        this.isMerchantChoiceRouting = z2;
        this.terminalCapabilitiesOverride = str;
        this.domesticDebitPriority = domesticDebitPriority;
        this.contactlessOnlinePinOption = contactlessOnlinePinOption;
        this.forcePinEntry = z3;
        this.isAccessiblePinPad = z4;
        this.pinEntryTimeout = num;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.transactionType = this.transactionType;
        builder.checkCardMode = this.checkCardMode;
        builder.currencyCode = this.currencyCode;
        builder.currencyExponent = this.currencyExponent;
        builder.amount = this.amount;
        builder.disableQuickChip = this.disableQuickChip;
        builder.checkCardTimeout = this.checkCardTimeout;
        builder.selectApplicationTimeout = this.selectApplicationTimeout;
        builder.selectAccountTypeTimeout = this.selectAccountTypeTimeout;
        builder.onlineProcessTimeout = this.onlineProcessTimeout;
        builder.terminalTime = this.terminalTime;
        builder.quickChipOption = this.quickChipOption;
        builder.isMerchantChoiceRouting = this.isMerchantChoiceRouting;
        builder.terminalCapabilitiesOverride = this.terminalCapabilitiesOverride;
        builder.domesticDebitPriority = this.domesticDebitPriority;
        builder.contactlessOnlinePinOption = this.contactlessOnlinePinOption;
        builder.forcePinEntry = this.forcePinEntry;
        builder.isAccessiblePinPad = this.isAccessiblePinPad;
        builder.pinEntryTimeout = this.pinEntryTimeout;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StartEmvRequest)) {
            return false;
        }
        StartEmvRequest startEmvRequest = (StartEmvRequest) other;
        return Intrinsics.areEqual(unknownFields(), startEmvRequest.unknownFields()) && this.transactionType == startEmvRequest.transactionType && this.checkCardMode == startEmvRequest.checkCardMode && this.currencyCode == startEmvRequest.currencyCode && this.currencyExponent == startEmvRequest.currencyExponent && Intrinsics.areEqual(this.amount, startEmvRequest.amount) && this.disableQuickChip == startEmvRequest.disableQuickChip && this.checkCardTimeout == startEmvRequest.checkCardTimeout && this.selectApplicationTimeout == startEmvRequest.selectApplicationTimeout && this.selectAccountTypeTimeout == startEmvRequest.selectAccountTypeTimeout && this.onlineProcessTimeout == startEmvRequest.onlineProcessTimeout && Intrinsics.areEqual(this.terminalTime, startEmvRequest.terminalTime) && this.quickChipOption == startEmvRequest.quickChipOption && this.isMerchantChoiceRouting == startEmvRequest.isMerchantChoiceRouting && Intrinsics.areEqual(this.terminalCapabilitiesOverride, startEmvRequest.terminalCapabilitiesOverride) && this.domesticDebitPriority == startEmvRequest.domesticDebitPriority && this.contactlessOnlinePinOption == startEmvRequest.contactlessOnlinePinOption && this.forcePinEntry == startEmvRequest.forcePinEntry && this.isAccessiblePinPad == startEmvRequest.isAccessiblePinPad && Intrinsics.areEqual(this.pinEntryTimeout, startEmvRequest.pinEntryTimeout);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((((((((((((((unknownFields().hashCode() * 37) + this.transactionType.hashCode()) * 37) + this.checkCardMode.hashCode()) * 37) + Integer.hashCode(this.currencyCode)) * 37) + Integer.hashCode(this.currencyExponent)) * 37) + this.amount.hashCode()) * 37) + Boolean.hashCode(this.disableQuickChip)) * 37) + Integer.hashCode(this.checkCardTimeout)) * 37) + Integer.hashCode(this.selectApplicationTimeout)) * 37) + Integer.hashCode(this.selectAccountTypeTimeout)) * 37) + Integer.hashCode(this.onlineProcessTimeout)) * 37) + this.terminalTime.hashCode()) * 37) + this.quickChipOption.hashCode()) * 37) + Boolean.hashCode(this.isMerchantChoiceRouting)) * 37;
        String str = this.terminalCapabilitiesOverride;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        DomesticDebitPriority domesticDebitPriority = this.domesticDebitPriority;
        int iHashCode3 = (iHashCode2 + (domesticDebitPriority != null ? domesticDebitPriority.hashCode() : 0)) * 37;
        ContactlessOnlinePinOption contactlessOnlinePinOption = this.contactlessOnlinePinOption;
        int iHashCode4 = (((((iHashCode3 + (contactlessOnlinePinOption != null ? contactlessOnlinePinOption.hashCode() : 0)) * 37) + Boolean.hashCode(this.forcePinEntry)) * 37) + Boolean.hashCode(this.isAccessiblePinPad)) * 37;
        Integer num = this.pinEntryTimeout;
        int iHashCode5 = iHashCode4 + (num != null ? num.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("transactionType=" + this.transactionType);
        arrayList2.add("checkCardMode=" + this.checkCardMode);
        arrayList2.add("currencyCode=" + this.currencyCode);
        arrayList2.add("currencyExponent=" + this.currencyExponent);
        arrayList2.add("amount=" + Internal.sanitize(this.amount));
        arrayList2.add("disableQuickChip=" + this.disableQuickChip);
        arrayList2.add("checkCardTimeout=" + this.checkCardTimeout);
        arrayList2.add("selectApplicationTimeout=" + this.selectApplicationTimeout);
        arrayList2.add("selectAccountTypeTimeout=" + this.selectAccountTypeTimeout);
        arrayList2.add("onlineProcessTimeout=" + this.onlineProcessTimeout);
        arrayList2.add("terminalTime=" + Internal.sanitize(this.terminalTime));
        arrayList2.add("quickChipOption=" + this.quickChipOption);
        arrayList2.add("isMerchantChoiceRouting=" + this.isMerchantChoiceRouting);
        if (this.terminalCapabilitiesOverride != null) {
            arrayList2.add("terminalCapabilitiesOverride=" + Internal.sanitize(this.terminalCapabilitiesOverride));
        }
        if (this.domesticDebitPriority != null) {
            arrayList2.add("domesticDebitPriority=" + this.domesticDebitPriority);
        }
        if (this.contactlessOnlinePinOption != null) {
            arrayList2.add("contactlessOnlinePinOption=" + this.contactlessOnlinePinOption);
        }
        arrayList2.add("forcePinEntry=" + this.forcePinEntry);
        arrayList2.add("isAccessiblePinPad=" + this.isAccessiblePinPad);
        if (this.pinEntryTimeout != null) {
            arrayList2.add("pinEntryTimeout=" + this.pinEntryTimeout);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "StartEmvRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ StartEmvRequest copy$default(StartEmvRequest startEmvRequest, TransactionType transactionType, CheckCardMode checkCardMode, int i, int i2, String str, boolean z, int i3, int i4, int i5, int i6, String str2, QuickChipOption quickChipOption, boolean z2, String str3, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z3, boolean z4, Integer num, ByteString byteString, int i7, Object obj) {
        TransactionType transactionType2 = (i7 & 1) != 0 ? startEmvRequest.transactionType : transactionType;
        return startEmvRequest.copy(transactionType2, (i7 & 2) != 0 ? startEmvRequest.checkCardMode : checkCardMode, (i7 & 4) != 0 ? startEmvRequest.currencyCode : i, (i7 & 8) != 0 ? startEmvRequest.currencyExponent : i2, (i7 & 16) != 0 ? startEmvRequest.amount : str, (i7 & 32) != 0 ? startEmvRequest.disableQuickChip : z, (i7 & 64) != 0 ? startEmvRequest.checkCardTimeout : i3, (i7 & 128) != 0 ? startEmvRequest.selectApplicationTimeout : i4, (i7 & 256) != 0 ? startEmvRequest.selectAccountTypeTimeout : i5, (i7 & 512) != 0 ? startEmvRequest.onlineProcessTimeout : i6, (i7 & 1024) != 0 ? startEmvRequest.terminalTime : str2, (i7 & 2048) != 0 ? startEmvRequest.quickChipOption : quickChipOption, (i7 & 4096) != 0 ? startEmvRequest.isMerchantChoiceRouting : z2, (i7 & 8192) != 0 ? startEmvRequest.terminalCapabilitiesOverride : str3, (i7 & 16384) != 0 ? startEmvRequest.domesticDebitPriority : domesticDebitPriority, (i7 & 32768) != 0 ? startEmvRequest.contactlessOnlinePinOption : contactlessOnlinePinOption, (i7 & 65536) != 0 ? startEmvRequest.forcePinEntry : z3, (i7 & 131072) != 0 ? startEmvRequest.isAccessiblePinPad : z4, (i7 & 262144) != 0 ? startEmvRequest.pinEntryTimeout : num, (i7 & 524288) != 0 ? startEmvRequest.unknownFields() : byteString);
    }

    public final StartEmvRequest copy(TransactionType transactionType, CheckCardMode checkCardMode, int currencyCode, int currencyExponent, String amount, boolean disableQuickChip, int checkCardTimeout, int selectApplicationTimeout, int selectAccountTypeTimeout, int onlineProcessTimeout, String terminalTime, QuickChipOption quickChipOption, boolean isMerchantChoiceRouting, String terminalCapabilitiesOverride, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean forcePinEntry, boolean isAccessiblePinPad, Integer pinEntryTimeout, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(terminalTime, "terminalTime");
        Intrinsics.checkNotNullParameter(quickChipOption, "quickChipOption");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new StartEmvRequest(transactionType, checkCardMode, currencyCode, currencyExponent, amount, disableQuickChip, checkCardTimeout, selectApplicationTimeout, selectAccountTypeTimeout, onlineProcessTimeout, terminalTime, quickChipOption, isMerchantChoiceRouting, terminalCapabilitiesOverride, domesticDebitPriority, contactlessOnlinePinOption, forcePinEntry, isAccessiblePinPad, pinEntryTimeout, unknownFields);
    }

    /* JADX INFO: compiled from: StartEmvRequest.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010 \u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tJ\u0015\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010!J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\tJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/StartEmvRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, "", "contactlessOnlinePinOption", "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, BbposDeviceControllerImpl.DISABLE_QUICK_CHIP_PARAM_NAME, "", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "isAccessiblePinPad", "isMerchantChoiceRouting", BbposDeviceControllerImpl.ONLINE_PROCESS_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.PIN_ENTRY_TIMEOUT, "Ljava/lang/Integer;", BbposDeviceControllerImpl.QUICK_CHIP_OPTION_PARAM_NAME, "Lcom/stripe/bbpos/sdk/QuickChipOption;", BbposDeviceControllerImpl.SELECT_ACCOUNT_TYPE_PARAM_NAME, BbposDeviceControllerImpl.SELECT_APPLICATION_TIMEOUT_PARAM_NAME, "terminalCapabilitiesOverride", BbposDeviceControllerImpl.TERMINAL_TIME_PARAM_NAME, BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/TransactionType;", "build", "(Ljava/lang/Integer;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<StartEmvRequest, Builder> {
        public int checkCardTimeout;
        public ContactlessOnlinePinOption contactlessOnlinePinOption;
        public int currencyCode;
        public int currencyExponent;
        public boolean disableQuickChip;
        public DomesticDebitPriority domesticDebitPriority;
        public boolean forcePinEntry;
        public boolean isAccessiblePinPad;
        public boolean isMerchantChoiceRouting;
        public int onlineProcessTimeout;
        public Integer pinEntryTimeout;
        public int selectAccountTypeTimeout;
        public int selectApplicationTimeout;
        public String terminalCapabilitiesOverride;
        public TransactionType transactionType = TransactionType.TRANSACTION_TYPE_UNKNOWN;
        public CheckCardMode checkCardMode = CheckCardMode.CHECK_CARD_MODE_UNKNOWN;
        public String amount = "";
        public String terminalTime = "";
        public QuickChipOption quickChipOption = QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN;

        public final Builder transactionType(TransactionType transactionType) {
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            this.transactionType = transactionType;
            return this;
        }

        public final Builder checkCardMode(CheckCardMode checkCardMode) {
            Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
            this.checkCardMode = checkCardMode;
            return this;
        }

        public final Builder currencyCode(int currencyCode) {
            this.currencyCode = currencyCode;
            return this;
        }

        public final Builder currencyExponent(int currencyExponent) {
            this.currencyExponent = currencyExponent;
            return this;
        }

        public final Builder amount(String amount) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            this.amount = amount;
            return this;
        }

        public final Builder disableQuickChip(boolean disableQuickChip) {
            this.disableQuickChip = disableQuickChip;
            return this;
        }

        public final Builder checkCardTimeout(int checkCardTimeout) {
            this.checkCardTimeout = checkCardTimeout;
            return this;
        }

        public final Builder selectApplicationTimeout(int selectApplicationTimeout) {
            this.selectApplicationTimeout = selectApplicationTimeout;
            return this;
        }

        public final Builder selectAccountTypeTimeout(int selectAccountTypeTimeout) {
            this.selectAccountTypeTimeout = selectAccountTypeTimeout;
            return this;
        }

        public final Builder onlineProcessTimeout(int onlineProcessTimeout) {
            this.onlineProcessTimeout = onlineProcessTimeout;
            return this;
        }

        public final Builder terminalTime(String terminalTime) {
            Intrinsics.checkNotNullParameter(terminalTime, "terminalTime");
            this.terminalTime = terminalTime;
            return this;
        }

        public final Builder quickChipOption(QuickChipOption quickChipOption) {
            Intrinsics.checkNotNullParameter(quickChipOption, "quickChipOption");
            this.quickChipOption = quickChipOption;
            return this;
        }

        public final Builder isMerchantChoiceRouting(boolean isMerchantChoiceRouting) {
            this.isMerchantChoiceRouting = isMerchantChoiceRouting;
            return this;
        }

        public final Builder terminalCapabilitiesOverride(String terminalCapabilitiesOverride) {
            this.terminalCapabilitiesOverride = terminalCapabilitiesOverride;
            return this;
        }

        public final Builder domesticDebitPriority(DomesticDebitPriority domesticDebitPriority) {
            this.domesticDebitPriority = domesticDebitPriority;
            return this;
        }

        public final Builder contactlessOnlinePinOption(ContactlessOnlinePinOption contactlessOnlinePinOption) {
            this.contactlessOnlinePinOption = contactlessOnlinePinOption;
            return this;
        }

        public final Builder forcePinEntry(boolean forcePinEntry) {
            this.forcePinEntry = forcePinEntry;
            return this;
        }

        public final Builder isAccessiblePinPad(boolean isAccessiblePinPad) {
            this.isAccessiblePinPad = isAccessiblePinPad;
            return this;
        }

        public final Builder pinEntryTimeout(Integer pinEntryTimeout) {
            this.pinEntryTimeout = pinEntryTimeout;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public StartEmvRequest build() {
            return new StartEmvRequest(this.transactionType, this.checkCardMode, this.currencyCode, this.currencyExponent, this.amount, this.disableQuickChip, this.checkCardTimeout, this.selectApplicationTimeout, this.selectAccountTypeTimeout, this.onlineProcessTimeout, this.terminalTime, this.quickChipOption, this.isMerchantChoiceRouting, this.terminalCapabilitiesOverride, this.domesticDebitPriority, this.contactlessOnlinePinOption, this.forcePinEntry, this.isAccessiblePinPad, this.pinEntryTimeout, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: StartEmvRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/StartEmvRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ StartEmvRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StartEmvRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<StartEmvRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.StartEmvRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(StartEmvRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.transactionType != TransactionType.TRANSACTION_TYPE_UNKNOWN) {
                    size += TransactionType.ADAPTER.encodedSizeWithTag(1, value.transactionType);
                }
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    size += CheckCardMode.ADAPTER.encodedSizeWithTag(2, value.checkCardMode);
                }
                if (value.currencyCode != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.currencyCode));
                }
                if (value.currencyExponent != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(4, Integer.valueOf(value.currencyExponent));
                }
                if (!Intrinsics.areEqual(value.amount, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.amount);
                }
                if (value.disableQuickChip) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.disableQuickChip));
                }
                if (value.checkCardTimeout != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(7, Integer.valueOf(value.checkCardTimeout));
                }
                if (value.selectApplicationTimeout != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(8, Integer.valueOf(value.selectApplicationTimeout));
                }
                if (value.selectAccountTypeTimeout != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(9, Integer.valueOf(value.selectAccountTypeTimeout));
                }
                if (value.onlineProcessTimeout != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(10, Integer.valueOf(value.onlineProcessTimeout));
                }
                if (!Intrinsics.areEqual(value.terminalTime, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.terminalTime);
                }
                if (value.quickChipOption != QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN) {
                    size += QuickChipOption.ADAPTER.encodedSizeWithTag(12, value.quickChipOption);
                }
                if (value.isMerchantChoiceRouting) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(13, Boolean.valueOf(value.isMerchantChoiceRouting));
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.encodedSizeWithTag(14, value.terminalCapabilitiesOverride) + DomesticDebitPriority.ADAPTER.encodedSizeWithTag(15, value.domesticDebitPriority) + ContactlessOnlinePinOption.ADAPTER.encodedSizeWithTag(16, value.contactlessOnlinePinOption);
                if (value.forcePinEntry) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(17, Boolean.valueOf(value.forcePinEntry));
                }
                if (value.isAccessiblePinPad) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(18, Boolean.valueOf(value.isAccessiblePinPad));
                }
                return iEncodedSizeWithTag + ProtoAdapter.UINT32.encodedSizeWithTag(19, value.pinEntryTimeout);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, StartEmvRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.transactionType != TransactionType.TRANSACTION_TYPE_UNKNOWN) {
                    TransactionType.ADAPTER.encodeWithTag(writer, 1, value.transactionType);
                }
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    CheckCardMode.ADAPTER.encodeWithTag(writer, 2, value.checkCardMode);
                }
                if (value.currencyCode != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.currencyCode));
                }
                if (value.currencyExponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.currencyExponent));
                }
                if (!Intrinsics.areEqual(value.amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.amount);
                }
                if (value.disableQuickChip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.disableQuickChip));
                }
                if (value.checkCardTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 7, Integer.valueOf(value.checkCardTimeout));
                }
                if (value.selectApplicationTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 8, Integer.valueOf(value.selectApplicationTimeout));
                }
                if (value.selectAccountTypeTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 9, Integer.valueOf(value.selectAccountTypeTimeout));
                }
                if (value.onlineProcessTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 10, Integer.valueOf(value.onlineProcessTimeout));
                }
                if (!Intrinsics.areEqual(value.terminalTime, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.terminalTime);
                }
                if (value.quickChipOption != QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN) {
                    QuickChipOption.ADAPTER.encodeWithTag(writer, 12, value.quickChipOption);
                }
                if (value.isMerchantChoiceRouting) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.isMerchantChoiceRouting));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 14, value.terminalCapabilitiesOverride);
                DomesticDebitPriority.ADAPTER.encodeWithTag(writer, 15, value.domesticDebitPriority);
                ContactlessOnlinePinOption.ADAPTER.encodeWithTag(writer, 16, value.contactlessOnlinePinOption);
                if (value.forcePinEntry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.forcePinEntry));
                }
                if (value.isAccessiblePinPad) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.isAccessiblePinPad));
                }
                ProtoAdapter.UINT32.encodeWithTag(writer, 19, value.pinEntryTimeout);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, StartEmvRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.UINT32.encodeWithTag(writer, 19, value.pinEntryTimeout);
                if (value.isAccessiblePinPad) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.isAccessiblePinPad));
                }
                if (value.forcePinEntry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.forcePinEntry));
                }
                ContactlessOnlinePinOption.ADAPTER.encodeWithTag(writer, 16, value.contactlessOnlinePinOption);
                DomesticDebitPriority.ADAPTER.encodeWithTag(writer, 15, value.domesticDebitPriority);
                ProtoAdapter.STRING.encodeWithTag(writer, 14, value.terminalCapabilitiesOverride);
                if (value.isMerchantChoiceRouting) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.isMerchantChoiceRouting));
                }
                if (value.quickChipOption != QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN) {
                    QuickChipOption.ADAPTER.encodeWithTag(writer, 12, value.quickChipOption);
                }
                if (!Intrinsics.areEqual(value.terminalTime, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.terminalTime);
                }
                if (value.onlineProcessTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 10, Integer.valueOf(value.onlineProcessTimeout));
                }
                if (value.selectAccountTypeTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 9, Integer.valueOf(value.selectAccountTypeTimeout));
                }
                if (value.selectApplicationTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 8, Integer.valueOf(value.selectApplicationTimeout));
                }
                if (value.checkCardTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 7, Integer.valueOf(value.checkCardTimeout));
                }
                if (value.disableQuickChip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.disableQuickChip));
                }
                if (!Intrinsics.areEqual(value.amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.amount);
                }
                if (value.currencyExponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.currencyExponent));
                }
                if (value.currencyCode != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.currencyCode));
                }
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    CheckCardMode.ADAPTER.encodeWithTag(writer, 2, value.checkCardMode);
                }
                if (value.transactionType != TransactionType.TRANSACTION_TYPE_UNKNOWN) {
                    TransactionType.ADAPTER.encodeWithTag(writer, 1, value.transactionType);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public StartEmvRequest decode(ProtoReader reader) throws IOException {
                CheckCardMode checkCardMode;
                QuickChipOption quickChipOption;
                String str;
                Intrinsics.checkNotNullParameter(reader, "reader");
                TransactionType transactionType = TransactionType.TRANSACTION_TYPE_UNKNOWN;
                CheckCardMode checkCardMode2 = CheckCardMode.CHECK_CARD_MODE_UNKNOWN;
                QuickChipOption quickChipOption2 = QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                TransactionType transactionTypeDecode = transactionType;
                int iIntValue = 0;
                int iIntValue2 = 0;
                boolean zBooleanValue = false;
                int iIntValue3 = 0;
                int iIntValue4 = 0;
                int iIntValue5 = 0;
                int iIntValue6 = 0;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                boolean zBooleanValue4 = false;
                String strDecode2 = null;
                DomesticDebitPriority domesticDebitPriorityDecode = null;
                ContactlessOnlinePinOption contactlessOnlinePinOptionDecode = null;
                Integer numDecode = null;
                QuickChipOption quickChipOptionDecode = quickChipOption2;
                String strDecode3 = "";
                CheckCardMode checkCardModeDecode = checkCardMode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                checkCardMode = checkCardModeDecode;
                                quickChipOption = quickChipOptionDecode;
                                str = strDecode;
                                try {
                                    transactionTypeDecode = TransactionType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                checkCardModeDecode = checkCardMode;
                                quickChipOptionDecode = quickChipOption;
                                strDecode = str;
                                break;
                            case 2:
                                checkCardMode = checkCardModeDecode;
                                quickChipOption = quickChipOptionDecode;
                                str = strDecode;
                                try {
                                    checkCardModeDecode = CheckCardMode.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    checkCardModeDecode = checkCardMode;
                                }
                                quickChipOptionDecode = quickChipOption;
                                strDecode = str;
                                break;
                            case 3:
                                iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 4:
                                iIntValue2 = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 5:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 7:
                                iIntValue3 = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 8:
                                iIntValue4 = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 9:
                                iIntValue5 = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 10:
                                iIntValue6 = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            case 11:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 12:
                                checkCardMode = checkCardModeDecode;
                                quickChipOption = quickChipOptionDecode;
                                str = strDecode;
                                try {
                                    quickChipOptionDecode = QuickChipOption.ADAPTER.decode(reader);
                                    checkCardModeDecode = checkCardMode;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                                    checkCardModeDecode = checkCardMode;
                                    quickChipOptionDecode = quickChipOption;
                                }
                                strDecode = str;
                                break;
                            case 13:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 14:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 15:
                                checkCardMode = checkCardModeDecode;
                                quickChipOption = quickChipOptionDecode;
                                str = strDecode;
                                try {
                                    domesticDebitPriorityDecode = DomesticDebitPriority.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e4) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e4.value));
                                }
                                checkCardModeDecode = checkCardMode;
                                quickChipOptionDecode = quickChipOption;
                                strDecode = str;
                                break;
                            case 16:
                                try {
                                    contactlessOnlinePinOptionDecode = ContactlessOnlinePinOption.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e5) {
                                    checkCardMode = checkCardModeDecode;
                                    quickChipOption = quickChipOptionDecode;
                                    str = strDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e5.value));
                                    checkCardModeDecode = checkCardMode;
                                    quickChipOptionDecode = quickChipOption;
                                    strDecode = str;
                                }
                                break;
                            case 17:
                                zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 18:
                                zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 19:
                                numDecode = ProtoAdapter.UINT32.decode(reader);
                                break;
                            default:
                                checkCardMode = checkCardModeDecode;
                                quickChipOption = quickChipOptionDecode;
                                str = strDecode;
                                reader.readUnknownField(iNextTag);
                                checkCardModeDecode = checkCardMode;
                                quickChipOptionDecode = quickChipOption;
                                strDecode = str;
                                break;
                        }
                    } else {
                        return new StartEmvRequest(transactionTypeDecode, checkCardModeDecode, iIntValue, iIntValue2, strDecode, zBooleanValue, iIntValue3, iIntValue4, iIntValue5, iIntValue6, strDecode3, quickChipOptionDecode, zBooleanValue2, strDecode2, domesticDebitPriorityDecode, contactlessOnlinePinOptionDecode, zBooleanValue3, zBooleanValue4, numDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public StartEmvRequest redact(StartEmvRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return StartEmvRequest.copy$default(value, null, null, 0, 0, null, false, 0, 0, 0, 0, null, null, false, null, null, null, false, false, null, ByteString.EMPTY, 524287, null);
            }
        };
    }
}
