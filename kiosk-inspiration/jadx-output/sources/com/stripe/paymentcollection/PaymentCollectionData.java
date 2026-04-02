package com.stripe.paymentcollection;

import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.SourceType;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent;
import com.stripe.hardware.paymentcollection.ApplicationSelectionModel;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PaymentCollectionResultType;
import com.stripe.hardware.paymentcollection.PinEntryRetryReason;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.tipping.InvalidTipConfig;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.DynamicCurrencyConversionSelectionStatus;
import com.stripe.paymentcollection.MagStripePinStatus;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import com.stripe.paymentcollection.metrics.PinEntryFailureReason;
import com.stripe.restclient.IntegrationType;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.PaymentCollectionDeviceCapabilityKt;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0098\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\bs\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0006\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\b\b\u0002\u0010 \u001a\u00020\f\u0012\b\b\u0002\u0010!\u001a\u00020\n\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010'\u001a\u00020\n\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010)\u001a\u00020\n\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\b\b\u0002\u0010-\u001a\u00020.\u0012\b\b\u0002\u0010/\u001a\u000200\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u00102\u001a\u00020\n\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000104\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u000106\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u000104\u0012\b\b\u0002\u00108\u001a\u00020\n\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010:\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010<\u0012\b\b\u0002\u0010=\u001a\u00020\n\u0012\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?\u0012\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?\u0012\b\b\u0002\u0010B\u001a\u00020\n\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010D\u0012\b\b\u0002\u0010E\u001a\u00020\n\u0012\b\b\u0002\u0010F\u001a\u00020\n\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010:\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010K\u0012\b\b\u0002\u0010L\u001a\u00020M\u0012\b\b\u0002\u0010N\u001a\u00020O\u0012\n\b\u0002\u0010P\u001a\u0004\u0018\u00010Q\u0012\b\b\u0002\u0010R\u001a\u00020\n\u0012\b\b\u0002\u0010S\u001a\u00020\n\u0012\u000e\b\u0002\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\n\b\u0002\u0010U\u001a\u0004\u0018\u00010V\u0012\b\b\u0002\u0010W\u001a\u00020\n\u0012\u0006\u0010X\u001a\u00020\n\u0012\b\b\u0002\u0010Y\u001a\u00020\n\u0012\b\b\u0002\u0010Z\u001a\u00020\n\u0012\b\b\u0002\u0010[\u001a\u00020\\\u0012\n\b\u0002\u0010]\u001a\u0004\u0018\u00010^\u0012\b\u0010_\u001a\u0004\u0018\u00010\u0015\u0012\f\u0010`\u001a\b\u0012\u0004\u0012\u00020a0\u0014\u0012\b\b\u0002\u0010b\u001a\u00020\n\u0012\n\b\u0002\u0010c\u001a\u0004\u0018\u00010a\u0012\b\b\u0002\u0010d\u001a\u00020\n\u0012\n\b\u0002\u0010e\u001a\u0004\u0018\u00010f\u0012\u0006\u0010g\u001a\u00020\n\u0012\u0006\u0010h\u001a\u00020\n\u0012\b\b\u0002\u0010i\u001a\u00020\n\u0012\b\b\u0002\u0010j\u001a\u00020\n¢\u0006\u0002\u0010kJ\u0012\u0010ÿ\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0002\u001a\u00020\u0015H\u0002J\n\u0010\u0081\u0002\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0082\u0002\u001a\u00020\u0012HÆ\u0003J\u0010\u0010\u0083\u0002\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014HÆ\u0003J\f\u0010\u0084\u0002\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0012\u0010\u0085\u0002\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0003\u0010Þ\u0001J\f\u0010\u0086\u0002\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\n\u0010\u0087\u0002\u001a\u00020\u001bHÆ\u0003J\n\u0010\u0088\u0002\u001a\u00020\u001dHÆ\u0003J\f\u0010\u0089\u0002\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\n\u0010\u008a\u0002\u001a\u00020\fHÆ\u0003J\n\u0010\u008b\u0002\u001a\u00020\nHÆ\u0003J\n\u0010\u008c\u0002\u001a\u00020\u0005HÆ\u0003J\f\u0010\u008d\u0002\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010\u008e\u0002\u001a\u0004\u0018\u00010%HÆ\u0003J\f\u0010\u008f\u0002\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\n\u0010\u0090\u0002\u001a\u00020\nHÆ\u0003J\f\u0010\u0091\u0002\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\n\u0010\u0092\u0002\u001a\u00020\nHÆ\u0003J\f\u0010\u0093\u0002\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\f\u0010\u0094\u0002\u001a\u0004\u0018\u00010,HÆ\u0003J\n\u0010\u0095\u0002\u001a\u00020.HÆ\u0003J\n\u0010\u0096\u0002\u001a\u000200HÆ\u0003J\n\u0010\u0097\u0002\u001a\u00020\u0005HÆ\u0003J\f\u0010\u0098\u0002\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\n\u0010\u0099\u0002\u001a\u00020\nHÆ\u0003J\f\u0010\u009a\u0002\u001a\u0004\u0018\u000104HÆ\u0003J\f\u0010\u009b\u0002\u001a\u0004\u0018\u000106HÆ\u0003J\f\u0010\u009c\u0002\u001a\u0004\u0018\u000104HÆ\u0003J\n\u0010\u009d\u0002\u001a\u00020\nHÆ\u0003J\f\u0010\u009e\u0002\u001a\u0004\u0018\u00010:HÆ\u0003J\f\u0010\u009f\u0002\u001a\u0004\u0018\u00010<HÆ\u0003J\n\u0010 \u0002\u001a\u00020\nHÆ\u0003J\u0010\u0010¡\u0002\u001a\b\u0012\u0004\u0012\u00020@0?HÆ\u0003J\n\u0010¢\u0002\u001a\u00020\bHÆ\u0003J\u0012\u0010£\u0002\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?HÆ\u0003J\n\u0010¤\u0002\u001a\u00020\nHÆ\u0003J\f\u0010¥\u0002\u001a\u0004\u0018\u00010DHÆ\u0003J\n\u0010¦\u0002\u001a\u00020\nHÆ\u0003J\n\u0010§\u0002\u001a\u00020\nHÆ\u0003J\f\u0010¨\u0002\u001a\u0004\u0018\u00010HHÆ\u0003J\f\u0010©\u0002\u001a\u0004\u0018\u00010:HÆ\u0003J\f\u0010ª\u0002\u001a\u0004\u0018\u00010KHÆ\u0003J\n\u0010«\u0002\u001a\u00020MHÆ\u0003J\n\u0010¬\u0002\u001a\u00020OHÆ\u0003J\n\u0010\u00ad\u0002\u001a\u00020\nHÆ\u0003J\f\u0010®\u0002\u001a\u0004\u0018\u00010QHÆ\u0003J\n\u0010¯\u0002\u001a\u00020\nHÆ\u0003J\n\u0010°\u0002\u001a\u00020\nHÆ\u0003J\u0010\u0010±\u0002\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014HÆ\u0003J\f\u0010²\u0002\u001a\u0004\u0018\u00010VHÆ\u0003J\n\u0010³\u0002\u001a\u00020\nHÆ\u0003J\n\u0010´\u0002\u001a\u00020\nHÆ\u0003J\n\u0010µ\u0002\u001a\u00020\nHÆ\u0003J\n\u0010¶\u0002\u001a\u00020\nHÆ\u0003J\n\u0010·\u0002\u001a\u00020\\HÆ\u0003J\n\u0010¸\u0002\u001a\u00020\fHÆ\u0003J\f\u0010¹\u0002\u001a\u0004\u0018\u00010^HÆ\u0003J\f\u0010º\u0002\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u0010\u0010»\u0002\u001a\b\u0012\u0004\u0012\u00020a0\u0014HÆ\u0003J\n\u0010¼\u0002\u001a\u00020\nHÆ\u0003J\f\u0010½\u0002\u001a\u0004\u0018\u00010aHÆ\u0003J\n\u0010¾\u0002\u001a\u00020\nHÆ\u0003J\f\u0010¿\u0002\u001a\u0004\u0018\u00010fHÆ\u0003J\n\u0010À\u0002\u001a\u00020\nHÆ\u0003J\n\u0010Á\u0002\u001a\u00020\nHÆ\u0003J\n\u0010Â\u0002\u001a\u00020\nHÆ\u0003J\f\u0010Ã\u0002\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\n\u0010Ä\u0002\u001a\u00020\nHÆ\u0003J\n\u0010Å\u0002\u001a\u00020\nHÆ\u0003J\n\u0010Æ\u0002\u001a\u00020\nHÆ\u0003J¢\u0006\u0010Ç\u0002\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\f2\b\b\u0002\u0010!\u001a\u00020\n2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010'\u001a\u00020\n2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010)\u001a\u00020\n2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\b\b\u0002\u0010-\u001a\u00020.2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u00102\u001a\u00020\n2\n\b\u0002\u00103\u001a\u0004\u0018\u0001042\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u0001042\b\b\u0002\u00108\u001a\u00020\n2\n\b\u0002\u00109\u001a\u0004\u0018\u00010:2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010<2\b\b\u0002\u0010=\u001a\u00020\n2\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?2\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?2\b\b\u0002\u0010B\u001a\u00020\n2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010D2\b\b\u0002\u0010E\u001a\u00020\n2\b\b\u0002\u0010F\u001a\u00020\n2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010:2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010K2\b\b\u0002\u0010L\u001a\u00020M2\b\b\u0002\u0010N\u001a\u00020O2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010Q2\b\b\u0002\u0010R\u001a\u00020\n2\b\b\u0002\u0010S\u001a\u00020\n2\u000e\b\u0002\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\n\b\u0002\u0010U\u001a\u0004\u0018\u00010V2\b\b\u0002\u0010W\u001a\u00020\n2\b\b\u0002\u0010X\u001a\u00020\n2\b\b\u0002\u0010Y\u001a\u00020\n2\b\b\u0002\u0010Z\u001a\u00020\n2\b\b\u0002\u0010[\u001a\u00020\\2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010^2\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00152\u000e\b\u0002\u0010`\u001a\b\u0012\u0004\u0012\u00020a0\u00142\b\b\u0002\u0010b\u001a\u00020\n2\n\b\u0002\u0010c\u001a\u0004\u0018\u00010a2\b\b\u0002\u0010d\u001a\u00020\n2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010f2\b\b\u0002\u0010g\u001a\u00020\n2\b\b\u0002\u0010h\u001a\u00020\n2\b\b\u0002\u0010i\u001a\u00020\n2\b\b\u0002\u0010j\u001a\u00020\nHÆ\u0001¢\u0006\u0003\u0010È\u0002J\u0015\u0010É\u0002\u001a\u00020\n2\t\u0010Ê\u0002\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010Ë\u0002\u001a\u00020\fHÖ\u0001J\n\u0010Ì\u0002\u001a\u00020\u0015HÖ\u0001R\u0013\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\b\n\u0000\u001a\u0004\bl\u0010mR\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\bn\u0010oR\u0019\u0010A\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?¢\u0006\b\n\u0000\u001a\u0004\bp\u0010qR\u0017\u0010r\u001a\b\u0012\u0004\u0012\u00020@0?8F¢\u0006\u0006\u001a\u0004\bs\u0010qR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bt\u0010uR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\bz\u0010{R\u0011\u0010|\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b}\u0010~R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u007f\u0010uR\u0015\u0010;\u001a\u0004\u0018\u00010<¢\u0006\n\n\u0000\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001e\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0015\u0010C\u001a\u0004\u0018\u00010D¢\u0006\n\n\u0000\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0015\u0010+\u001a\u0004\u0018\u00010,¢\u0006\n\n\u0000\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0012\u0010Y\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b\u008a\u0001\u0010~R\u0015\u0010\u008b\u0001\u001a\u00030\u008c\u00018F¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0012\u0010E\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b\u008f\u0001\u0010~R\u0018\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?¢\u0006\t\n\u0000\u001a\u0005\b\u0090\u0001\u0010qR\u0013\u0010L\u001a\u00020M¢\u0006\n\n\u0000\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0013\u0010N\u001a\u00020O¢\u0006\n\n\u0000\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0012\u0010g\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b\u0095\u0001\u0010~R\u0018\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\t\n\u0000\u001a\u0005\b\u0096\u0001\u0010wR\u0015\u0010U\u001a\u0004\u0018\u00010V¢\u0006\n\n\u0000\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0015\u0010]\u001a\u0004\u0018\u00010^¢\u0006\n\n\u0000\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0013\u0010[\u001a\u00020\\¢\u0006\n\n\u0000\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0015\u0010$\u001a\u0004\u0018\u00010%¢\u0006\n\n\u0000\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0013\u0010\u0007\u001a\u00020\b¢\u0006\n\n\u0000\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u0012\u0010X\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b¡\u0001\u0010~R\u0012\u00102\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b¢\u0001\u0010~R\"\u0010*\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0012\n\u0000\u0012\u0006\b£\u0001\u0010¤\u0001\u001a\u0006\b¥\u0001\u0010¦\u0001R\u0012\u0010\u0010\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b§\u0001\u0010~R\u0012\u0010i\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b¨\u0001\u0010~R\u0015\u00103\u001a\u0004\u0018\u000104¢\u0006\n\n\u0000\u001a\u0006\b©\u0001\u0010ª\u0001R\u0015\u0010J\u001a\u0004\u0018\u00010K¢\u0006\n\n\u0000\u001a\u0006\b«\u0001\u0010¬\u0001R\u0012\u0010\t\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b\u00ad\u0001\u0010~R\u0015\u00105\u001a\u0004\u0018\u000106¢\u0006\n\n\u0000\u001a\u0006\b®\u0001\u0010¯\u0001R\u0011\u0010W\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\bW\u0010~R\u0013\u0010°\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b°\u0001\u0010~R\u0013\u0010±\u0001\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b±\u0001\u0010~R\u0013\u0010²\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b²\u0001\u0010~R\u0011\u0010S\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\bS\u0010~R\u0016\u0010³\u0001\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b³\u0001\u0010~R\u0011\u0010R\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\bR\u0010~R\u0013\u0010´\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010~R\u0013\u0010µ\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\bµ\u0001\u0010~R\u0011\u0010B\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\bB\u0010~R\u0012\u0010=\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\b¶\u0001\u0010~R\u0015\u00107\u001a\u0004\u0018\u000104¢\u0006\n\n\u0000\u001a\u0006\b·\u0001\u0010ª\u0001R\u0017\u0010¸\u0001\u001a\u0005\u0018\u00010¹\u00018F¢\u0006\b\u001a\u0006\bº\u0001\u0010»\u0001R\u0015\u0010¼\u0001\u001a\u00030½\u00018F¢\u0006\b\u001a\u0006\b¾\u0001\u0010¿\u0001R\u0015\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\n\n\u0000\u001a\u0006\bÀ\u0001\u0010Á\u0001R\u0015\u0010P\u001a\u0004\u0018\u00010Q¢\u0006\n\n\u0000\u001a\u0006\bÂ\u0001\u0010Ã\u0001R\u0012\u0010d\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bÄ\u0001\u0010~R\u0015\u0010e\u001a\u0004\u0018\u00010f¢\u0006\n\n\u0000\u001a\u0006\bÅ\u0001\u0010Æ\u0001R\u0018\u0010`\u001a\b\u0012\u0004\u0012\u00020a0\u0014¢\u0006\t\n\u0000\u001a\u0005\bÇ\u0001\u0010wR\u0013\u0010\u000b\u001a\u00020\f¢\u0006\n\n\u0000\u001a\u0006\bÈ\u0001\u0010É\u0001R\"\u0010&\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0012\n\u0000\u0012\u0006\bÊ\u0001\u0010¤\u0001\u001a\u0006\bË\u0001\u0010¦\u0001R\u0012\u0010'\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bÌ\u0001\u0010~R\"\u0010(\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0012\n\u0000\u0012\u0006\bÍ\u0001\u0010¤\u0001\u001a\u0006\bÎ\u0001\u0010¦\u0001R\u0012\u0010)\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bÏ\u0001\u0010~R\u0013\u0010 \u001a\u00020\f¢\u0006\n\n\u0000\u001a\u0006\bÐ\u0001\u0010É\u0001R\u0012\u0010!\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bÑ\u0001\u0010~R\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\n\n\u0000\u001a\u0006\bÒ\u0001\u0010Ó\u0001R\u0013\u0010\u001c\u001a\u00020\u001d¢\u0006\n\n\u0000\u001a\u0006\bÔ\u0001\u0010Õ\u0001R\u0012\u0010\u000f\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bÖ\u0001\u0010~R\u0015\u0010G\u001a\u0004\u0018\u00010H¢\u0006\n\n\u0000\u001a\u0006\b×\u0001\u0010Ø\u0001R\u0017\u0010Ù\u0001\u001a\u0005\u0018\u00010Ú\u00018F¢\u0006\b\u001a\u0006\bÛ\u0001\u0010Ü\u0001R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\f¢\u0006\r\n\u0003\u0010ß\u0001\u001a\u0006\bÝ\u0001\u0010Þ\u0001R\u0016\u0010à\u0001\u001a\u0004\u0018\u00010\n8F¢\u0006\b\u001a\u0006\bá\u0001\u0010â\u0001R\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u0015¢\u0006\n\n\u0000\u001a\u0006\bã\u0001\u0010¦\u0001R\u0015\u0010c\u001a\u0004\u0018\u00010a¢\u0006\n\n\u0000\u001a\u0006\bä\u0001\u0010å\u0001R\u0013\u0010æ\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\bç\u0001\u0010~R\u0013\u0010è\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\bé\u0001\u0010~R\u0013\u0010ê\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\bë\u0001\u0010~R\u0012\u0010F\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bì\u0001\u0010~R\u0012\u0010b\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bí\u0001\u0010~R\u0012\u0010Z\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bî\u0001\u0010~R\u0012\u0010j\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bï\u0001\u0010~R\u0015\u00109\u001a\u0004\u0018\u00010:¢\u0006\n\n\u0000\u001a\u0006\bð\u0001\u0010ñ\u0001R\u0015\u0010I\u001a\u0004\u0018\u00010:¢\u0006\n\n\u0000\u001a\u0006\bò\u0001\u0010ñ\u0001R\u0015\u0010_\u001a\u0004\u0018\u00010\u0015¢\u0006\n\n\u0000\u001a\u0006\bó\u0001\u0010¦\u0001R\u0015\u0010ô\u0001\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0007\u001a\u0005\bõ\u0001\u0010uR\u0014\u00101\u001a\u0004\u0018\u00010\u0005¢\u0006\t\n\u0000\u001a\u0005\bö\u0001\u0010uR\u0013\u0010/\u001a\u000200¢\u0006\n\n\u0000\u001a\u0006\b÷\u0001\u0010ø\u0001R\u0013\u0010-\u001a\u00020.¢\u0006\n\n\u0000\u001a\u0006\bù\u0001\u0010ú\u0001R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0000\u001a\u0006\bû\u0001\u0010ü\u0001R\u0012\u0010h\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bý\u0001\u0010~R\u0012\u00108\u001a\u00020\n¢\u0006\t\n\u0000\u001a\u0005\bþ\u0001\u0010~¨\u0006Í\u0002"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionData;", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "baseAmount", "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "interfaceResetRequired", "", "numberOfFailedInsertions", "", "magStripeReadResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "promptPinEntryForServiceCode", "forceMagstripePin", "cardSlotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "applicationList", "", "", "applicationSelectionRetryReason", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;", "selectedApplicationIndex", "selectedLanguage", "accountSelectionStatus", "Lcom/stripe/paymentcollection/AccountSelectionStatus;", "pinEntryStatus", "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "pinEntryRetryReason", "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "pinAsterisks", "pinEntryCompleted", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "earlyTransactionAbortReason", "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "onlineAuthorizationData", "onlineAuthorizationRequested", "onlineAuthorizationResponse", "onlineAuthorizationResponseSentToKernel", "finalTlvResponse", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "tippingState", "Lcom/stripe/paymentcollection/TippingState;", "tippingConfig", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "tipEligibleAmount", "expectingHardwareCancellation", "hardwareTransactionResult", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "intermediateTransactionError", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "lastCollectionResult", "userRetryRequested", "stateWhenCancelled", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "cancelReason", "Lcom/stripe/paymentcollection/CancelReason;", "kernelConfirmedCancel", "desiredReaderInterfaces", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "activeReaderInterfaces", "isWaitingForCard", "cartToDisplay", "Lcom/stripe/cart/Cart;", "confirmedCollection", "shouldStartManualEntry", "scaRequirement", "Lcom/stripe/paymentcollection/SCARequirement;", "stateWhenTimedOut", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "deviceCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "manualEntryCollectionResult", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "isOffline", "isDeferredAuthorizationCountry", "domesticDebitAids", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "isApplicationSelectionInQuickChipEnabled", "enableCustomerCancellation", "collectPaymentMethodRequestFailed", "showThankYouReceived", "dynamicCurrencyConversionSelectionStatus", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "surchargeNotice", "nonCardPaymentMethodTypes", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "shouldStartNonCardPaymentMethodSelection", "selectedNonCardPaymentMethod", "nonCardPaymentMethodConfirmationRequested", "nonCardPaymentMethodData", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "disablePredip", "useIncrementalAuthUi", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "sposGirocardEnabled", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZ)V", "getAccessiblePinPadTouchEvent", "()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "getAccountSelectionStatus", "()Lcom/stripe/paymentcollection/AccountSelectionStatus;", "getActiveReaderInterfaces", "()Ljava/util/Set;", "activeReaderInterfacesForDisplay", "getActiveReaderInterfacesForDisplay", "getAmount", "()Lcom/stripe/currency/Amount;", "getApplicationList", "()Ljava/util/List;", "setApplicationList", "(Ljava/util/List;)V", "getApplicationSelectionRetryReason", "()Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;", "badCardRead", "getBadCardRead", "()Z", "getBaseAmount", "getCancelReason", "()Lcom/stripe/paymentcollection/CancelReason;", "getCardSlotState", "()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "setCardSlotState", "(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V", "getCartToDisplay", "()Lcom/stripe/cart/Cart;", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getCollectPaymentMethodRequestFailed", "collectionResultType", "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;", "getCollectionResultType", "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;", "getConfirmedCollection", "getDesiredReaderInterfaces", "getDeviceCapability", "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "getDeviceType", "()Lcom/stripe/stripeterminal/external/models/DeviceType;", "getDisablePredip", "getDomesticDebitAids", "getDomesticDebitPriority", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getDynamicCurrencyConversionData", "()Lcom/stripe/transaction/DynamicCurrencyConversionData;", "getDynamicCurrencyConversionSelectionStatus", "()Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "getEarlyTransactionAbortReason", "()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "getEnableCustomerCancellation", "getExpectingHardwareCancellation", "getFinalTlvResponse$annotations", "()V", "getFinalTlvResponse", "()Ljava/lang/String;", "getForceMagstripePin", "getForcePinEntry", "getHardwareTransactionResult", "()Lcom/stripe/hardware/emv/TransactionResult$Result;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "getInterfaceResetRequired", "getIntermediateTransactionError", "()Lcom/stripe/hardware/emv/IntermediateTransactionError;", "isCancelled", "isCollectionEndedWithFailure", "isDeclined", "isManualEntryFailed", "isPreDipEnabled", "isTimedOut", "getKernelConfirmedCancel", "getLastCollectionResult", "magStripePaymentCollectionAuthority", "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "getMagStripePaymentCollectionAuthority", "()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "magStripePinStatus", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "getMagStripePinStatus", "()Lcom/stripe/paymentcollection/MagStripePinStatus;", "getMagStripeReadResult", "()Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "getManualEntryCollectionResult", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "getNonCardPaymentMethodConfirmationRequested", "getNonCardPaymentMethodData", "()Lcom/stripe/transaction/NonCardPaymentMethodData;", "getNonCardPaymentMethodTypes", "getNumberOfFailedInsertions", "()I", "getOnlineAuthorizationData$annotations", "getOnlineAuthorizationData", "getOnlineAuthorizationRequested", "getOnlineAuthorizationResponse$annotations", "getOnlineAuthorizationResponse", "getOnlineAuthorizationResponseSentToKernel", "getPinAsterisks", "getPinEntryCompleted", "getPinEntryRetryReason", "()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "getPinEntryStatus", "()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "getPromptPinEntryForServiceCode", "getScaRequirement", "()Lcom/stripe/paymentcollection/SCARequirement;", "selectedAccount", "Lcom/stripe/hardware/emv/AccountType;", "getSelectedAccount", "()Lcom/stripe/hardware/emv/AccountType;", "getSelectedApplicationIndex", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "selectedDynamicCurrencyConversion", "getSelectedDynamicCurrencyConversion", "()Ljava/lang/Boolean;", "getSelectedLanguage", "getSelectedNonCardPaymentMethod", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "shouldAutoRespondOnlineAuth", "getShouldAutoRespondOnlineAuth", "shouldAutoSelectAccount", "getShouldAutoSelectAccount", "shouldAutoSelectApplication", "getShouldAutoSelectApplication", "getShouldStartManualEntry", "getShouldStartNonCardPaymentMethodSelection", "getShowThankYouReceived", "getSposGirocardEnabled", "getStateWhenCancelled", "()Lcom/stripe/paymentcollection/PaymentCollectionState;", "getStateWhenTimedOut", "getSurchargeNotice", "tipAmount", "getTipAmount", "getTipEligibleAmount", "getTippingConfig", "()Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "getTippingState", "()Lcom/stripe/paymentcollection/TippingState;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "getUseIncrementalAuthUi", "getUserRetryRequested", "applicationRequiresAccountSelection", "application", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "component6", "component60", "component61", "component62", "component63", "component64", "component65", "component66", "component67", "component68", "component69", "component7", "component70", "component8", "component9", "copy", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZ)Lcom/stripe/paymentcollection/PaymentCollectionData;", "equals", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PaymentCollectionData {
    private final AccessiblePinPadTouchEvent accessiblePinPadTouchEvent;
    private final AccountSelectionStatus accountSelectionStatus;
    private final Set<ReaderConfiguration.ReaderType> activeReaderInterfaces;
    private final Amount amount;
    private List<String> applicationList;
    private final ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason;
    private final Amount baseAmount;
    private final CancelReason cancelReason;
    private ContactCardSlotState cardSlotState;
    private final Cart cartToDisplay;
    private final ChargeAttempt chargeAttempt;
    private final boolean collectPaymentMethodRequestFailed;
    private final boolean confirmedCollection;
    private final Set<ReaderConfiguration.ReaderType> desiredReaderInterfaces;
    private final PaymentCollectionDeviceCapability deviceCapability;
    private final DeviceType deviceType;
    private final boolean disablePredip;
    private final List<String> domesticDebitAids;
    private final ReaderConfiguration.DomesticDebitPriority domesticDebitPriority;
    private final DynamicCurrencyConversionData dynamicCurrencyConversionData;
    private final DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus;
    private final EarlyTransactionAbortReason earlyTransactionAbortReason;
    private final EmvTransactionType emvTransactionType;
    private final boolean enableCustomerCancellation;
    private final boolean expectingHardwareCancellation;
    private final String finalTlvResponse;
    private final boolean forceMagstripePin;
    private final boolean forcePinEntry;
    private final TransactionResult.Result hardwareTransactionResult;
    private final IntegrationType integrationType;
    private final boolean interfaceResetRequired;
    private final IntermediateTransactionError intermediateTransactionError;
    private final boolean isApplicationSelectionInQuickChipEnabled;
    private final boolean isCollectionEndedWithFailure;
    private final boolean isDeferredAuthorizationCountry;
    private final boolean isOffline;
    private final boolean isWaitingForCard;
    private final boolean kernelConfirmedCancel;
    private final TransactionResult.Result lastCollectionResult;
    private final MagStripeReadResult magStripeReadResult;
    private final ManualEntryCollectionResult manualEntryCollectionResult;
    private final boolean nonCardPaymentMethodConfirmationRequested;
    private final NonCardPaymentMethodData nonCardPaymentMethodData;
    private final List<PaymentMethodType> nonCardPaymentMethodTypes;
    private final int numberOfFailedInsertions;
    private final String onlineAuthorizationData;
    private final boolean onlineAuthorizationRequested;
    private final String onlineAuthorizationResponse;
    private final boolean onlineAuthorizationResponseSentToKernel;
    private final int pinAsterisks;
    private final boolean pinEntryCompleted;
    private final PinEntryRetryReason pinEntryRetryReason;
    private final PinEntryStatus pinEntryStatus;
    private final boolean promptPinEntryForServiceCode;
    private final SCARequirement scaRequirement;
    private final Integer selectedApplicationIndex;
    private final String selectedLanguage;
    private final PaymentMethodType selectedNonCardPaymentMethod;
    private final boolean shouldStartManualEntry;
    private final boolean shouldStartNonCardPaymentMethodSelection;
    private final boolean showThankYouReceived;
    private final boolean sposGirocardEnabled;
    private final PaymentCollectionState stateWhenCancelled;
    private final PaymentCollectionState stateWhenTimedOut;
    private final String surchargeNotice;
    private final Amount tipEligibleAmount;
    private final TipConfigValidationResult tippingConfig;
    private final TippingState tippingState;
    private final TransactionType transactionType;
    private final boolean useIncrementalAuthUi;
    private final boolean userRetryRequested;

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PaymentCollectionResultType.values().length];
            try {
                iArr[PaymentCollectionResultType.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PaymentCollectionResultType.SCA_NEEDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PaymentCollectionResultType.NOT_FINISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PaymentCollectionResultType.DEVICE_DECLINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[EmvTransactionType.values().length];
            try {
                iArr2[EmvTransactionType.TRADITIONAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[EmvTransactionType.QUICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentCollectionData copy$default(PaymentCollectionData paymentCollectionData, TransactionType transactionType, Amount amount, Amount amount2, EmvTransactionType emvTransactionType, boolean z, int i, MagStripeReadResult magStripeReadResult, boolean z2, boolean z3, ContactCardSlotState contactCardSlotState, List list, ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason, Integer num, String str, AccountSelectionStatus accountSelectionStatus, PinEntryStatus pinEntryStatus, PinEntryRetryReason pinEntryRetryReason, int i2, boolean z4, AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, EarlyTransactionAbortReason earlyTransactionAbortReason, String str2, boolean z5, String str3, boolean z6, String str4, ChargeAttempt chargeAttempt, TippingState tippingState, TipConfigValidationResult tipConfigValidationResult, Amount amount3, boolean z7, TransactionResult.Result result, IntermediateTransactionError intermediateTransactionError, TransactionResult.Result result2, boolean z8, PaymentCollectionState paymentCollectionState, CancelReason cancelReason, boolean z9, Set set, Set set2, boolean z10, Cart cart, boolean z11, boolean z12, SCARequirement sCARequirement, PaymentCollectionState paymentCollectionState2, IntegrationType integrationType, PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, DeviceType deviceType, ManualEntryCollectionResult manualEntryCollectionResult, boolean z13, boolean z14, List list2, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z15, boolean z16, boolean z17, boolean z18, DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus, DynamicCurrencyConversionData dynamicCurrencyConversionData, String str5, List list3, boolean z19, PaymentMethodType paymentMethodType, boolean z20, NonCardPaymentMethodData nonCardPaymentMethodData, boolean z21, boolean z22, boolean z23, boolean z24, int i3, int i4, int i5, Object obj) {
        boolean z25;
        boolean z26;
        ReaderConfiguration.DomesticDebitPriority domesticDebitPriority2;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus2;
        DynamicCurrencyConversionData dynamicCurrencyConversionData2;
        String str6;
        List list4;
        boolean z31;
        boolean z32;
        NonCardPaymentMethodData nonCardPaymentMethodData2;
        boolean z33;
        boolean z34;
        PaymentMethodType paymentMethodType2;
        Set set3;
        boolean z35;
        Cart cart2;
        boolean z36;
        boolean z37;
        SCARequirement sCARequirement2;
        PaymentCollectionState paymentCollectionState3;
        IntegrationType integrationType2;
        PaymentCollectionDeviceCapability paymentCollectionDeviceCapability2;
        DeviceType deviceType2;
        ManualEntryCollectionResult manualEntryCollectionResult2;
        boolean z38;
        boolean z39;
        List list5;
        String str7;
        ChargeAttempt chargeAttempt2;
        TippingState tippingState2;
        TipConfigValidationResult tipConfigValidationResult2;
        Amount amount4;
        boolean z40;
        TransactionResult.Result result3;
        IntermediateTransactionError intermediateTransactionError2;
        TransactionResult.Result result4;
        boolean z41;
        PaymentCollectionState paymentCollectionState4;
        CancelReason cancelReason2;
        boolean z42;
        Set set4;
        AccountSelectionStatus accountSelectionStatus2;
        ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason2;
        Integer num2;
        String str8;
        PinEntryStatus pinEntryStatus2;
        PinEntryRetryReason pinEntryRetryReason2;
        int i6;
        boolean z43;
        AccessiblePinPadTouchEvent accessiblePinPadTouchEvent2;
        EarlyTransactionAbortReason earlyTransactionAbortReason2;
        String str9;
        boolean z44;
        String str10;
        boolean z45;
        Amount amount5;
        Amount amount6;
        EmvTransactionType emvTransactionType2;
        boolean z46;
        int i7;
        MagStripeReadResult magStripeReadResult2;
        boolean z47;
        boolean z48;
        ContactCardSlotState contactCardSlotState2;
        List list6;
        TransactionType transactionType2 = (i3 & 1) != 0 ? paymentCollectionData.transactionType : transactionType;
        Amount amount7 = (i3 & 2) != 0 ? paymentCollectionData.baseAmount : amount;
        Amount amount8 = (i3 & 4) != 0 ? paymentCollectionData.amount : amount2;
        EmvTransactionType emvTransactionType3 = (i3 & 8) != 0 ? paymentCollectionData.emvTransactionType : emvTransactionType;
        boolean z49 = (i3 & 16) != 0 ? paymentCollectionData.interfaceResetRequired : z;
        int i8 = (i3 & 32) != 0 ? paymentCollectionData.numberOfFailedInsertions : i;
        MagStripeReadResult magStripeReadResult3 = (i3 & 64) != 0 ? paymentCollectionData.magStripeReadResult : magStripeReadResult;
        boolean z50 = (i3 & 128) != 0 ? paymentCollectionData.promptPinEntryForServiceCode : z2;
        boolean z51 = (i3 & 256) != 0 ? paymentCollectionData.forceMagstripePin : z3;
        ContactCardSlotState contactCardSlotState3 = (i3 & 512) != 0 ? paymentCollectionData.cardSlotState : contactCardSlotState;
        List list7 = (i3 & 1024) != 0 ? paymentCollectionData.applicationList : list;
        ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason3 = (i3 & 2048) != 0 ? paymentCollectionData.applicationSelectionRetryReason : applicationSelectionRetryReason;
        Integer num3 = (i3 & 4096) != 0 ? paymentCollectionData.selectedApplicationIndex : num;
        TransactionType transactionType3 = transactionType2;
        String str11 = (i3 & 8192) != 0 ? paymentCollectionData.selectedLanguage : str;
        AccountSelectionStatus accountSelectionStatus3 = (i3 & 16384) != 0 ? paymentCollectionData.accountSelectionStatus : accountSelectionStatus;
        PinEntryStatus pinEntryStatus3 = (i3 & 32768) != 0 ? paymentCollectionData.pinEntryStatus : pinEntryStatus;
        PinEntryRetryReason pinEntryRetryReason3 = (i3 & 65536) != 0 ? paymentCollectionData.pinEntryRetryReason : pinEntryRetryReason;
        int i9 = (i3 & 131072) != 0 ? paymentCollectionData.pinAsterisks : i2;
        boolean z52 = (i3 & 262144) != 0 ? paymentCollectionData.pinEntryCompleted : z4;
        AccessiblePinPadTouchEvent accessiblePinPadTouchEvent3 = (i3 & 524288) != 0 ? paymentCollectionData.accessiblePinPadTouchEvent : accessiblePinPadTouchEvent;
        EarlyTransactionAbortReason earlyTransactionAbortReason3 = (i3 & 1048576) != 0 ? paymentCollectionData.earlyTransactionAbortReason : earlyTransactionAbortReason;
        String str12 = (i3 & 2097152) != 0 ? paymentCollectionData.onlineAuthorizationData : str2;
        boolean z53 = (i3 & 4194304) != 0 ? paymentCollectionData.onlineAuthorizationRequested : z5;
        String str13 = (i3 & 8388608) != 0 ? paymentCollectionData.onlineAuthorizationResponse : str3;
        boolean z54 = (i3 & 16777216) != 0 ? paymentCollectionData.onlineAuthorizationResponseSentToKernel : z6;
        String str14 = (i3 & 33554432) != 0 ? paymentCollectionData.finalTlvResponse : str4;
        ChargeAttempt chargeAttempt3 = (i3 & 67108864) != 0 ? paymentCollectionData.chargeAttempt : chargeAttempt;
        TippingState tippingState3 = (i3 & 134217728) != 0 ? paymentCollectionData.tippingState : tippingState;
        TipConfigValidationResult tipConfigValidationResult3 = (i3 & 268435456) != 0 ? paymentCollectionData.tippingConfig : tipConfigValidationResult;
        Amount amount9 = (i3 & 536870912) != 0 ? paymentCollectionData.tipEligibleAmount : amount3;
        boolean z55 = (i3 & 1073741824) != 0 ? paymentCollectionData.expectingHardwareCancellation : z7;
        TransactionResult.Result result5 = (i3 & Integer.MIN_VALUE) != 0 ? paymentCollectionData.hardwareTransactionResult : result;
        IntermediateTransactionError intermediateTransactionError3 = (i4 & 1) != 0 ? paymentCollectionData.intermediateTransactionError : intermediateTransactionError;
        TransactionResult.Result result6 = (i4 & 2) != 0 ? paymentCollectionData.lastCollectionResult : result2;
        boolean z56 = (i4 & 4) != 0 ? paymentCollectionData.userRetryRequested : z8;
        PaymentCollectionState paymentCollectionState5 = (i4 & 8) != 0 ? paymentCollectionData.stateWhenCancelled : paymentCollectionState;
        CancelReason cancelReason3 = (i4 & 16) != 0 ? paymentCollectionData.cancelReason : cancelReason;
        boolean z57 = (i4 & 32) != 0 ? paymentCollectionData.kernelConfirmedCancel : z9;
        Set set5 = (i4 & 64) != 0 ? paymentCollectionData.desiredReaderInterfaces : set;
        Set set6 = (i4 & 128) != 0 ? paymentCollectionData.activeReaderInterfaces : set2;
        boolean z58 = (i4 & 256) != 0 ? paymentCollectionData.isWaitingForCard : z10;
        Cart cart3 = (i4 & 512) != 0 ? paymentCollectionData.cartToDisplay : cart;
        boolean z59 = (i4 & 1024) != 0 ? paymentCollectionData.confirmedCollection : z11;
        boolean z60 = (i4 & 2048) != 0 ? paymentCollectionData.shouldStartManualEntry : z12;
        SCARequirement sCARequirement3 = (i4 & 4096) != 0 ? paymentCollectionData.scaRequirement : sCARequirement;
        PaymentCollectionState paymentCollectionState6 = (i4 & 8192) != 0 ? paymentCollectionData.stateWhenTimedOut : paymentCollectionState2;
        IntegrationType integrationType3 = (i4 & 16384) != 0 ? paymentCollectionData.integrationType : integrationType;
        PaymentCollectionDeviceCapability paymentCollectionDeviceCapability3 = (i4 & 32768) != 0 ? paymentCollectionData.deviceCapability : paymentCollectionDeviceCapability;
        DeviceType deviceType3 = (i4 & 65536) != 0 ? paymentCollectionData.deviceType : deviceType;
        ManualEntryCollectionResult manualEntryCollectionResult3 = (i4 & 131072) != 0 ? paymentCollectionData.manualEntryCollectionResult : manualEntryCollectionResult;
        boolean z61 = (i4 & 262144) != 0 ? paymentCollectionData.isOffline : z13;
        boolean z62 = (i4 & 524288) != 0 ? paymentCollectionData.isDeferredAuthorizationCountry : z14;
        List list8 = (i4 & 1048576) != 0 ? paymentCollectionData.domesticDebitAids : list2;
        ReaderConfiguration.DomesticDebitPriority domesticDebitPriority3 = (i4 & 2097152) != 0 ? paymentCollectionData.domesticDebitPriority : domesticDebitPriority;
        boolean z63 = (i4 & 4194304) != 0 ? paymentCollectionData.isApplicationSelectionInQuickChipEnabled : z15;
        boolean z64 = (i4 & 8388608) != 0 ? paymentCollectionData.enableCustomerCancellation : z16;
        boolean z65 = (i4 & 16777216) != 0 ? paymentCollectionData.collectPaymentMethodRequestFailed : z17;
        boolean z66 = (i4 & 33554432) != 0 ? paymentCollectionData.showThankYouReceived : z18;
        DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus3 = (i4 & 67108864) != 0 ? paymentCollectionData.dynamicCurrencyConversionSelectionStatus : dynamicCurrencyConversionSelectionStatus;
        DynamicCurrencyConversionData dynamicCurrencyConversionData3 = (i4 & 134217728) != 0 ? paymentCollectionData.dynamicCurrencyConversionData : dynamicCurrencyConversionData;
        String str15 = (i4 & 268435456) != 0 ? paymentCollectionData.surchargeNotice : str5;
        List list9 = (i4 & 536870912) != 0 ? paymentCollectionData.nonCardPaymentMethodTypes : list3;
        boolean z67 = (i4 & 1073741824) != 0 ? paymentCollectionData.shouldStartNonCardPaymentMethodSelection : z19;
        PaymentMethodType paymentMethodType3 = (i4 & Integer.MIN_VALUE) != 0 ? paymentCollectionData.selectedNonCardPaymentMethod : paymentMethodType;
        boolean z68 = z67;
        boolean z69 = (i5 & 1) != 0 ? paymentCollectionData.nonCardPaymentMethodConfirmationRequested : z20;
        NonCardPaymentMethodData nonCardPaymentMethodData3 = (i5 & 2) != 0 ? paymentCollectionData.nonCardPaymentMethodData : nonCardPaymentMethodData;
        boolean z70 = (i5 & 4) != 0 ? paymentCollectionData.disablePredip : z21;
        boolean z71 = (i5 & 8) != 0 ? paymentCollectionData.useIncrementalAuthUi : z22;
        boolean z72 = (i5 & 16) != 0 ? paymentCollectionData.forcePinEntry : z23;
        if ((i5 & 32) != 0) {
            z26 = z72;
            z25 = paymentCollectionData.sposGirocardEnabled;
            z27 = z63;
            z28 = z64;
            z29 = z65;
            z30 = z66;
            dynamicCurrencyConversionSelectionStatus2 = dynamicCurrencyConversionSelectionStatus3;
            dynamicCurrencyConversionData2 = dynamicCurrencyConversionData3;
            str6 = str15;
            list4 = list9;
            z31 = z68;
            z32 = z69;
            nonCardPaymentMethodData2 = nonCardPaymentMethodData3;
            z33 = z70;
            z34 = z71;
            paymentMethodType2 = paymentMethodType3;
            z35 = z58;
            cart2 = cart3;
            z36 = z59;
            z37 = z60;
            sCARequirement2 = sCARequirement3;
            paymentCollectionState3 = paymentCollectionState6;
            integrationType2 = integrationType3;
            paymentCollectionDeviceCapability2 = paymentCollectionDeviceCapability3;
            deviceType2 = deviceType3;
            manualEntryCollectionResult2 = manualEntryCollectionResult3;
            z38 = z61;
            z39 = z62;
            list5 = list8;
            domesticDebitPriority2 = domesticDebitPriority3;
            chargeAttempt2 = chargeAttempt3;
            tippingState2 = tippingState3;
            tipConfigValidationResult2 = tipConfigValidationResult3;
            amount4 = amount9;
            z40 = z55;
            result3 = result5;
            intermediateTransactionError2 = intermediateTransactionError3;
            result4 = result6;
            z41 = z56;
            paymentCollectionState4 = paymentCollectionState5;
            cancelReason2 = cancelReason3;
            z42 = z57;
            set4 = set5;
            set3 = set6;
            accountSelectionStatus2 = accountSelectionStatus3;
            num2 = num3;
            str8 = str11;
            pinEntryStatus2 = pinEntryStatus3;
            pinEntryRetryReason2 = pinEntryRetryReason3;
            i6 = i9;
            z43 = z52;
            accessiblePinPadTouchEvent2 = accessiblePinPadTouchEvent3;
            earlyTransactionAbortReason2 = earlyTransactionAbortReason3;
            str9 = str12;
            z44 = z53;
            str10 = str13;
            z45 = z54;
            str7 = str14;
            amount5 = amount7;
            amount6 = amount8;
            emvTransactionType2 = emvTransactionType3;
            z46 = z49;
            i7 = i8;
            magStripeReadResult2 = magStripeReadResult3;
            z47 = z50;
            z48 = z51;
            contactCardSlotState2 = contactCardSlotState3;
            list6 = list7;
            applicationSelectionRetryReason2 = applicationSelectionRetryReason3;
        } else {
            z25 = z24;
            z26 = z72;
            domesticDebitPriority2 = domesticDebitPriority3;
            z27 = z63;
            z28 = z64;
            z29 = z65;
            z30 = z66;
            dynamicCurrencyConversionSelectionStatus2 = dynamicCurrencyConversionSelectionStatus3;
            dynamicCurrencyConversionData2 = dynamicCurrencyConversionData3;
            str6 = str15;
            list4 = list9;
            z31 = z68;
            z32 = z69;
            nonCardPaymentMethodData2 = nonCardPaymentMethodData3;
            z33 = z70;
            z34 = z71;
            paymentMethodType2 = paymentMethodType3;
            set3 = set6;
            z35 = z58;
            cart2 = cart3;
            z36 = z59;
            z37 = z60;
            sCARequirement2 = sCARequirement3;
            paymentCollectionState3 = paymentCollectionState6;
            integrationType2 = integrationType3;
            paymentCollectionDeviceCapability2 = paymentCollectionDeviceCapability3;
            deviceType2 = deviceType3;
            manualEntryCollectionResult2 = manualEntryCollectionResult3;
            z38 = z61;
            z39 = z62;
            list5 = list8;
            str7 = str14;
            chargeAttempt2 = chargeAttempt3;
            tippingState2 = tippingState3;
            tipConfigValidationResult2 = tipConfigValidationResult3;
            amount4 = amount9;
            z40 = z55;
            result3 = result5;
            intermediateTransactionError2 = intermediateTransactionError3;
            result4 = result6;
            z41 = z56;
            paymentCollectionState4 = paymentCollectionState5;
            cancelReason2 = cancelReason3;
            z42 = z57;
            set4 = set5;
            accountSelectionStatus2 = accountSelectionStatus3;
            applicationSelectionRetryReason2 = applicationSelectionRetryReason3;
            num2 = num3;
            str8 = str11;
            pinEntryStatus2 = pinEntryStatus3;
            pinEntryRetryReason2 = pinEntryRetryReason3;
            i6 = i9;
            z43 = z52;
            accessiblePinPadTouchEvent2 = accessiblePinPadTouchEvent3;
            earlyTransactionAbortReason2 = earlyTransactionAbortReason3;
            str9 = str12;
            z44 = z53;
            str10 = str13;
            z45 = z54;
            amount5 = amount7;
            amount6 = amount8;
            emvTransactionType2 = emvTransactionType3;
            z46 = z49;
            i7 = i8;
            magStripeReadResult2 = magStripeReadResult3;
            z47 = z50;
            z48 = z51;
            contactCardSlotState2 = contactCardSlotState3;
            list6 = list7;
        }
        return paymentCollectionData.copy(transactionType3, amount5, amount6, emvTransactionType2, z46, i7, magStripeReadResult2, z47, z48, contactCardSlotState2, list6, applicationSelectionRetryReason2, num2, str8, accountSelectionStatus2, pinEntryStatus2, pinEntryRetryReason2, i6, z43, accessiblePinPadTouchEvent2, earlyTransactionAbortReason2, str9, z44, str10, z45, str7, chargeAttempt2, tippingState2, tipConfigValidationResult2, amount4, z40, result3, intermediateTransactionError2, result4, z41, paymentCollectionState4, cancelReason2, z42, set4, set3, z35, cart2, z36, z37, sCARequirement2, paymentCollectionState3, integrationType2, paymentCollectionDeviceCapability2, deviceType2, manualEntryCollectionResult2, z38, z39, list5, domesticDebitPriority2, z27, z28, z29, z30, dynamicCurrencyConversionSelectionStatus2, dynamicCurrencyConversionData2, str6, list4, z31, paymentMethodType2, z32, nonCardPaymentMethodData2, z33, z34, z26, z25);
    }

    public static /* synthetic */ void getFinalTlvResponse$annotations() {
    }

    public static /* synthetic */ void getOnlineAuthorizationData$annotations() {
    }

    public static /* synthetic */ void getOnlineAuthorizationResponse$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final ContactCardSlotState getCardSlotState() {
        return this.cardSlotState;
    }

    public final List<String> component11() {
        return this.applicationList;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final ApplicationSelectionModel.ApplicationSelectionRetryReason getApplicationSelectionRetryReason() {
        return this.applicationSelectionRetryReason;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getSelectedApplicationIndex() {
        return this.selectedApplicationIndex;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getSelectedLanguage() {
        return this.selectedLanguage;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final AccountSelectionStatus getAccountSelectionStatus() {
        return this.accountSelectionStatus;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final PinEntryStatus getPinEntryStatus() {
        return this.pinEntryStatus;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final PinEntryRetryReason getPinEntryRetryReason() {
        return this.pinEntryRetryReason;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final int getPinAsterisks() {
        return this.pinAsterisks;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getPinEntryCompleted() {
        return this.pinEntryCompleted;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getBaseAmount() {
        return this.baseAmount;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final AccessiblePinPadTouchEvent getAccessiblePinPadTouchEvent() {
        return this.accessiblePinPadTouchEvent;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final EarlyTransactionAbortReason getEarlyTransactionAbortReason() {
        return this.earlyTransactionAbortReason;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getOnlineAuthorizationData() {
        return this.onlineAuthorizationData;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final boolean getOnlineAuthorizationRequested() {
        return this.onlineAuthorizationRequested;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getOnlineAuthorizationResponse() {
        return this.onlineAuthorizationResponse;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final boolean getOnlineAuthorizationResponseSentToKernel() {
        return this.onlineAuthorizationResponseSentToKernel;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getFinalTlvResponse() {
        return this.finalTlvResponse;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final ChargeAttempt getChargeAttempt() {
        return this.chargeAttempt;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final TippingState getTippingState() {
        return this.tippingState;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final TipConfigValidationResult getTippingConfig() {
        return this.tippingConfig;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final Amount getTipEligibleAmount() {
        return this.tipEligibleAmount;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final boolean getExpectingHardwareCancellation() {
        return this.expectingHardwareCancellation;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final TransactionResult.Result getHardwareTransactionResult() {
        return this.hardwareTransactionResult;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final IntermediateTransactionError getIntermediateTransactionError() {
        return this.intermediateTransactionError;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final TransactionResult.Result getLastCollectionResult() {
        return this.lastCollectionResult;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final boolean getUserRetryRequested() {
        return this.userRetryRequested;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final PaymentCollectionState getStateWhenCancelled() {
        return this.stateWhenCancelled;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final CancelReason getCancelReason() {
        return this.cancelReason;
    }

    /* JADX INFO: renamed from: component38, reason: from getter */
    public final boolean getKernelConfirmedCancel() {
        return this.kernelConfirmedCancel;
    }

    public final Set<ReaderConfiguration.ReaderType> component39() {
        return this.desiredReaderInterfaces;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final Set<ReaderConfiguration.ReaderType> component40() {
        return this.activeReaderInterfaces;
    }

    /* JADX INFO: renamed from: component41, reason: from getter */
    public final boolean getIsWaitingForCard() {
        return this.isWaitingForCard;
    }

    /* JADX INFO: renamed from: component42, reason: from getter */
    public final Cart getCartToDisplay() {
        return this.cartToDisplay;
    }

    /* JADX INFO: renamed from: component43, reason: from getter */
    public final boolean getConfirmedCollection() {
        return this.confirmedCollection;
    }

    /* JADX INFO: renamed from: component44, reason: from getter */
    public final boolean getShouldStartManualEntry() {
        return this.shouldStartManualEntry;
    }

    /* JADX INFO: renamed from: component45, reason: from getter */
    public final SCARequirement getScaRequirement() {
        return this.scaRequirement;
    }

    /* JADX INFO: renamed from: component46, reason: from getter */
    public final PaymentCollectionState getStateWhenTimedOut() {
        return this.stateWhenTimedOut;
    }

    /* JADX INFO: renamed from: component47, reason: from getter */
    public final IntegrationType getIntegrationType() {
        return this.integrationType;
    }

    /* JADX INFO: renamed from: component48, reason: from getter */
    public final PaymentCollectionDeviceCapability getDeviceCapability() {
        return this.deviceCapability;
    }

    /* JADX INFO: renamed from: component49, reason: from getter */
    public final DeviceType getDeviceType() {
        return this.deviceType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getInterfaceResetRequired() {
        return this.interfaceResetRequired;
    }

    /* JADX INFO: renamed from: component50, reason: from getter */
    public final ManualEntryCollectionResult getManualEntryCollectionResult() {
        return this.manualEntryCollectionResult;
    }

    /* JADX INFO: renamed from: component51, reason: from getter */
    public final boolean getIsOffline() {
        return this.isOffline;
    }

    /* JADX INFO: renamed from: component52, reason: from getter */
    public final boolean getIsDeferredAuthorizationCountry() {
        return this.isDeferredAuthorizationCountry;
    }

    public final List<String> component53() {
        return this.domesticDebitAids;
    }

    /* JADX INFO: renamed from: component54, reason: from getter */
    public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
        return this.domesticDebitPriority;
    }

    /* JADX INFO: renamed from: component55, reason: from getter */
    public final boolean getIsApplicationSelectionInQuickChipEnabled() {
        return this.isApplicationSelectionInQuickChipEnabled;
    }

    /* JADX INFO: renamed from: component56, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component57, reason: from getter */
    public final boolean getCollectPaymentMethodRequestFailed() {
        return this.collectPaymentMethodRequestFailed;
    }

    /* JADX INFO: renamed from: component58, reason: from getter */
    public final boolean getShowThankYouReceived() {
        return this.showThankYouReceived;
    }

    /* JADX INFO: renamed from: component59, reason: from getter */
    public final DynamicCurrencyConversionSelectionStatus getDynamicCurrencyConversionSelectionStatus() {
        return this.dynamicCurrencyConversionSelectionStatus;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getNumberOfFailedInsertions() {
        return this.numberOfFailedInsertions;
    }

    /* JADX INFO: renamed from: component60, reason: from getter */
    public final DynamicCurrencyConversionData getDynamicCurrencyConversionData() {
        return this.dynamicCurrencyConversionData;
    }

    /* JADX INFO: renamed from: component61, reason: from getter */
    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    public final List<PaymentMethodType> component62() {
        return this.nonCardPaymentMethodTypes;
    }

    /* JADX INFO: renamed from: component63, reason: from getter */
    public final boolean getShouldStartNonCardPaymentMethodSelection() {
        return this.shouldStartNonCardPaymentMethodSelection;
    }

    /* JADX INFO: renamed from: component64, reason: from getter */
    public final PaymentMethodType getSelectedNonCardPaymentMethod() {
        return this.selectedNonCardPaymentMethod;
    }

    /* JADX INFO: renamed from: component65, reason: from getter */
    public final boolean getNonCardPaymentMethodConfirmationRequested() {
        return this.nonCardPaymentMethodConfirmationRequested;
    }

    /* JADX INFO: renamed from: component66, reason: from getter */
    public final NonCardPaymentMethodData getNonCardPaymentMethodData() {
        return this.nonCardPaymentMethodData;
    }

    /* JADX INFO: renamed from: component67, reason: from getter */
    public final boolean getDisablePredip() {
        return this.disablePredip;
    }

    /* JADX INFO: renamed from: component68, reason: from getter */
    public final boolean getUseIncrementalAuthUi() {
        return this.useIncrementalAuthUi;
    }

    /* JADX INFO: renamed from: component69, reason: from getter */
    public final boolean getForcePinEntry() {
        return this.forcePinEntry;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final MagStripeReadResult getMagStripeReadResult() {
        return this.magStripeReadResult;
    }

    /* JADX INFO: renamed from: component70, reason: from getter */
    public final boolean getSposGirocardEnabled() {
        return this.sposGirocardEnabled;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getPromptPinEntryForServiceCode() {
        return this.promptPinEntryForServiceCode;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getForceMagstripePin() {
        return this.forceMagstripePin;
    }

    public final PaymentCollectionData copy(TransactionType transactionType, Amount baseAmount, Amount amount, EmvTransactionType emvTransactionType, boolean interfaceResetRequired, int numberOfFailedInsertions, MagStripeReadResult magStripeReadResult, boolean promptPinEntryForServiceCode, boolean forceMagstripePin, ContactCardSlotState cardSlotState, List<String> applicationList, ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason, Integer selectedApplicationIndex, String selectedLanguage, AccountSelectionStatus accountSelectionStatus, PinEntryStatus pinEntryStatus, PinEntryRetryReason pinEntryRetryReason, int pinAsterisks, boolean pinEntryCompleted, AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, EarlyTransactionAbortReason earlyTransactionAbortReason, String onlineAuthorizationData, boolean onlineAuthorizationRequested, String onlineAuthorizationResponse, boolean onlineAuthorizationResponseSentToKernel, String finalTlvResponse, ChargeAttempt chargeAttempt, TippingState tippingState, TipConfigValidationResult tippingConfig, Amount tipEligibleAmount, boolean expectingHardwareCancellation, TransactionResult.Result hardwareTransactionResult, IntermediateTransactionError intermediateTransactionError, TransactionResult.Result lastCollectionResult, boolean userRetryRequested, PaymentCollectionState stateWhenCancelled, CancelReason cancelReason, boolean kernelConfirmedCancel, Set<? extends ReaderConfiguration.ReaderType> desiredReaderInterfaces, Set<? extends ReaderConfiguration.ReaderType> activeReaderInterfaces, boolean isWaitingForCard, Cart cartToDisplay, boolean confirmedCollection, boolean shouldStartManualEntry, SCARequirement scaRequirement, PaymentCollectionState stateWhenTimedOut, IntegrationType integrationType, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, ManualEntryCollectionResult manualEntryCollectionResult, boolean isOffline, boolean isDeferredAuthorizationCountry, List<String> domesticDebitAids, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean isApplicationSelectionInQuickChipEnabled, boolean enableCustomerCancellation, boolean collectPaymentMethodRequestFailed, boolean showThankYouReceived, DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus, DynamicCurrencyConversionData dynamicCurrencyConversionData, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean shouldStartNonCardPaymentMethodSelection, PaymentMethodType selectedNonCardPaymentMethod, boolean nonCardPaymentMethodConfirmationRequested, NonCardPaymentMethodData nonCardPaymentMethodData, boolean disablePredip, boolean useIncrementalAuthUi, boolean forcePinEntry, boolean sposGirocardEnabled) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(baseAmount, "baseAmount");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(cardSlotState, "cardSlotState");
        Intrinsics.checkNotNullParameter(applicationList, "applicationList");
        Intrinsics.checkNotNullParameter(accountSelectionStatus, "accountSelectionStatus");
        Intrinsics.checkNotNullParameter(pinEntryStatus, "pinEntryStatus");
        Intrinsics.checkNotNullParameter(tippingState, "tippingState");
        Intrinsics.checkNotNullParameter(tippingConfig, "tippingConfig");
        Intrinsics.checkNotNullParameter(desiredReaderInterfaces, "desiredReaderInterfaces");
        Intrinsics.checkNotNullParameter(deviceCapability, "deviceCapability");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionSelectionStatus, "dynamicCurrencyConversionSelectionStatus");
        Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
        return new PaymentCollectionData(transactionType, baseAmount, amount, emvTransactionType, interfaceResetRequired, numberOfFailedInsertions, magStripeReadResult, promptPinEntryForServiceCode, forceMagstripePin, cardSlotState, applicationList, applicationSelectionRetryReason, selectedApplicationIndex, selectedLanguage, accountSelectionStatus, pinEntryStatus, pinEntryRetryReason, pinAsterisks, pinEntryCompleted, accessiblePinPadTouchEvent, earlyTransactionAbortReason, onlineAuthorizationData, onlineAuthorizationRequested, onlineAuthorizationResponse, onlineAuthorizationResponseSentToKernel, finalTlvResponse, chargeAttempt, tippingState, tippingConfig, tipEligibleAmount, expectingHardwareCancellation, hardwareTransactionResult, intermediateTransactionError, lastCollectionResult, userRetryRequested, stateWhenCancelled, cancelReason, kernelConfirmedCancel, desiredReaderInterfaces, activeReaderInterfaces, isWaitingForCard, cartToDisplay, confirmedCollection, shouldStartManualEntry, scaRequirement, stateWhenTimedOut, integrationType, deviceCapability, deviceType, manualEntryCollectionResult, isOffline, isDeferredAuthorizationCountry, domesticDebitAids, domesticDebitPriority, isApplicationSelectionInQuickChipEnabled, enableCustomerCancellation, collectPaymentMethodRequestFailed, showThankYouReceived, dynamicCurrencyConversionSelectionStatus, dynamicCurrencyConversionData, surchargeNotice, nonCardPaymentMethodTypes, shouldStartNonCardPaymentMethodSelection, selectedNonCardPaymentMethod, nonCardPaymentMethodConfirmationRequested, nonCardPaymentMethodData, disablePredip, useIncrementalAuthUi, forcePinEntry, sposGirocardEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentCollectionData)) {
            return false;
        }
        PaymentCollectionData paymentCollectionData = (PaymentCollectionData) other;
        return this.transactionType == paymentCollectionData.transactionType && Intrinsics.areEqual(this.baseAmount, paymentCollectionData.baseAmount) && Intrinsics.areEqual(this.amount, paymentCollectionData.amount) && this.emvTransactionType == paymentCollectionData.emvTransactionType && this.interfaceResetRequired == paymentCollectionData.interfaceResetRequired && this.numberOfFailedInsertions == paymentCollectionData.numberOfFailedInsertions && Intrinsics.areEqual(this.magStripeReadResult, paymentCollectionData.magStripeReadResult) && this.promptPinEntryForServiceCode == paymentCollectionData.promptPinEntryForServiceCode && this.forceMagstripePin == paymentCollectionData.forceMagstripePin && this.cardSlotState == paymentCollectionData.cardSlotState && Intrinsics.areEqual(this.applicationList, paymentCollectionData.applicationList) && this.applicationSelectionRetryReason == paymentCollectionData.applicationSelectionRetryReason && Intrinsics.areEqual(this.selectedApplicationIndex, paymentCollectionData.selectedApplicationIndex) && Intrinsics.areEqual(this.selectedLanguage, paymentCollectionData.selectedLanguage) && Intrinsics.areEqual(this.accountSelectionStatus, paymentCollectionData.accountSelectionStatus) && this.pinEntryStatus == paymentCollectionData.pinEntryStatus && this.pinEntryRetryReason == paymentCollectionData.pinEntryRetryReason && this.pinAsterisks == paymentCollectionData.pinAsterisks && this.pinEntryCompleted == paymentCollectionData.pinEntryCompleted && Intrinsics.areEqual(this.accessiblePinPadTouchEvent, paymentCollectionData.accessiblePinPadTouchEvent) && this.earlyTransactionAbortReason == paymentCollectionData.earlyTransactionAbortReason && Intrinsics.areEqual(this.onlineAuthorizationData, paymentCollectionData.onlineAuthorizationData) && this.onlineAuthorizationRequested == paymentCollectionData.onlineAuthorizationRequested && Intrinsics.areEqual(this.onlineAuthorizationResponse, paymentCollectionData.onlineAuthorizationResponse) && this.onlineAuthorizationResponseSentToKernel == paymentCollectionData.onlineAuthorizationResponseSentToKernel && Intrinsics.areEqual(this.finalTlvResponse, paymentCollectionData.finalTlvResponse) && Intrinsics.areEqual(this.chargeAttempt, paymentCollectionData.chargeAttempt) && Intrinsics.areEqual(this.tippingState, paymentCollectionData.tippingState) && Intrinsics.areEqual(this.tippingConfig, paymentCollectionData.tippingConfig) && Intrinsics.areEqual(this.tipEligibleAmount, paymentCollectionData.tipEligibleAmount) && this.expectingHardwareCancellation == paymentCollectionData.expectingHardwareCancellation && this.hardwareTransactionResult == paymentCollectionData.hardwareTransactionResult && this.intermediateTransactionError == paymentCollectionData.intermediateTransactionError && this.lastCollectionResult == paymentCollectionData.lastCollectionResult && this.userRetryRequested == paymentCollectionData.userRetryRequested && this.stateWhenCancelled == paymentCollectionData.stateWhenCancelled && this.cancelReason == paymentCollectionData.cancelReason && this.kernelConfirmedCancel == paymentCollectionData.kernelConfirmedCancel && Intrinsics.areEqual(this.desiredReaderInterfaces, paymentCollectionData.desiredReaderInterfaces) && Intrinsics.areEqual(this.activeReaderInterfaces, paymentCollectionData.activeReaderInterfaces) && this.isWaitingForCard == paymentCollectionData.isWaitingForCard && Intrinsics.areEqual(this.cartToDisplay, paymentCollectionData.cartToDisplay) && this.confirmedCollection == paymentCollectionData.confirmedCollection && this.shouldStartManualEntry == paymentCollectionData.shouldStartManualEntry && this.scaRequirement == paymentCollectionData.scaRequirement && this.stateWhenTimedOut == paymentCollectionData.stateWhenTimedOut && this.integrationType == paymentCollectionData.integrationType && Intrinsics.areEqual(this.deviceCapability, paymentCollectionData.deviceCapability) && this.deviceType == paymentCollectionData.deviceType && Intrinsics.areEqual(this.manualEntryCollectionResult, paymentCollectionData.manualEntryCollectionResult) && this.isOffline == paymentCollectionData.isOffline && this.isDeferredAuthorizationCountry == paymentCollectionData.isDeferredAuthorizationCountry && Intrinsics.areEqual(this.domesticDebitAids, paymentCollectionData.domesticDebitAids) && this.domesticDebitPriority == paymentCollectionData.domesticDebitPriority && this.isApplicationSelectionInQuickChipEnabled == paymentCollectionData.isApplicationSelectionInQuickChipEnabled && this.enableCustomerCancellation == paymentCollectionData.enableCustomerCancellation && this.collectPaymentMethodRequestFailed == paymentCollectionData.collectPaymentMethodRequestFailed && this.showThankYouReceived == paymentCollectionData.showThankYouReceived && Intrinsics.areEqual(this.dynamicCurrencyConversionSelectionStatus, paymentCollectionData.dynamicCurrencyConversionSelectionStatus) && Intrinsics.areEqual(this.dynamicCurrencyConversionData, paymentCollectionData.dynamicCurrencyConversionData) && Intrinsics.areEqual(this.surchargeNotice, paymentCollectionData.surchargeNotice) && Intrinsics.areEqual(this.nonCardPaymentMethodTypes, paymentCollectionData.nonCardPaymentMethodTypes) && this.shouldStartNonCardPaymentMethodSelection == paymentCollectionData.shouldStartNonCardPaymentMethodSelection && this.selectedNonCardPaymentMethod == paymentCollectionData.selectedNonCardPaymentMethod && this.nonCardPaymentMethodConfirmationRequested == paymentCollectionData.nonCardPaymentMethodConfirmationRequested && Intrinsics.areEqual(this.nonCardPaymentMethodData, paymentCollectionData.nonCardPaymentMethodData) && this.disablePredip == paymentCollectionData.disablePredip && this.useIncrementalAuthUi == paymentCollectionData.useIncrementalAuthUi && this.forcePinEntry == paymentCollectionData.forcePinEntry && this.sposGirocardEnabled == paymentCollectionData.sposGirocardEnabled;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.transactionType.hashCode() * 31) + this.baseAmount.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.emvTransactionType.hashCode()) * 31) + Boolean.hashCode(this.interfaceResetRequired)) * 31) + Integer.hashCode(this.numberOfFailedInsertions)) * 31;
        MagStripeReadResult magStripeReadResult = this.magStripeReadResult;
        int iHashCode2 = (((((((((iHashCode + (magStripeReadResult == null ? 0 : magStripeReadResult.hashCode())) * 31) + Boolean.hashCode(this.promptPinEntryForServiceCode)) * 31) + Boolean.hashCode(this.forceMagstripePin)) * 31) + this.cardSlotState.hashCode()) * 31) + this.applicationList.hashCode()) * 31;
        ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason = this.applicationSelectionRetryReason;
        int iHashCode3 = (iHashCode2 + (applicationSelectionRetryReason == null ? 0 : applicationSelectionRetryReason.hashCode())) * 31;
        Integer num = this.selectedApplicationIndex;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.selectedLanguage;
        int iHashCode5 = (((((iHashCode4 + (str == null ? 0 : str.hashCode())) * 31) + this.accountSelectionStatus.hashCode()) * 31) + this.pinEntryStatus.hashCode()) * 31;
        PinEntryRetryReason pinEntryRetryReason = this.pinEntryRetryReason;
        int iHashCode6 = (((((iHashCode5 + (pinEntryRetryReason == null ? 0 : pinEntryRetryReason.hashCode())) * 31) + Integer.hashCode(this.pinAsterisks)) * 31) + Boolean.hashCode(this.pinEntryCompleted)) * 31;
        AccessiblePinPadTouchEvent accessiblePinPadTouchEvent = this.accessiblePinPadTouchEvent;
        int iHashCode7 = (iHashCode6 + (accessiblePinPadTouchEvent == null ? 0 : accessiblePinPadTouchEvent.hashCode())) * 31;
        EarlyTransactionAbortReason earlyTransactionAbortReason = this.earlyTransactionAbortReason;
        int iHashCode8 = (iHashCode7 + (earlyTransactionAbortReason == null ? 0 : earlyTransactionAbortReason.hashCode())) * 31;
        String str2 = this.onlineAuthorizationData;
        int iHashCode9 = (((iHashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31) + Boolean.hashCode(this.onlineAuthorizationRequested)) * 31;
        String str3 = this.onlineAuthorizationResponse;
        int iHashCode10 = (((iHashCode9 + (str3 == null ? 0 : str3.hashCode())) * 31) + Boolean.hashCode(this.onlineAuthorizationResponseSentToKernel)) * 31;
        String str4 = this.finalTlvResponse;
        int iHashCode11 = (iHashCode10 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ChargeAttempt chargeAttempt = this.chargeAttempt;
        int iHashCode12 = (((((iHashCode11 + (chargeAttempt == null ? 0 : chargeAttempt.hashCode())) * 31) + this.tippingState.hashCode()) * 31) + this.tippingConfig.hashCode()) * 31;
        Amount amount = this.tipEligibleAmount;
        int iHashCode13 = (((iHashCode12 + (amount == null ? 0 : amount.hashCode())) * 31) + Boolean.hashCode(this.expectingHardwareCancellation)) * 31;
        TransactionResult.Result result = this.hardwareTransactionResult;
        int iHashCode14 = (iHashCode13 + (result == null ? 0 : result.hashCode())) * 31;
        IntermediateTransactionError intermediateTransactionError = this.intermediateTransactionError;
        int iHashCode15 = (iHashCode14 + (intermediateTransactionError == null ? 0 : intermediateTransactionError.hashCode())) * 31;
        TransactionResult.Result result2 = this.lastCollectionResult;
        int iHashCode16 = (((iHashCode15 + (result2 == null ? 0 : result2.hashCode())) * 31) + Boolean.hashCode(this.userRetryRequested)) * 31;
        PaymentCollectionState paymentCollectionState = this.stateWhenCancelled;
        int iHashCode17 = (iHashCode16 + (paymentCollectionState == null ? 0 : paymentCollectionState.hashCode())) * 31;
        CancelReason cancelReason = this.cancelReason;
        int iHashCode18 = (((((iHashCode17 + (cancelReason == null ? 0 : cancelReason.hashCode())) * 31) + Boolean.hashCode(this.kernelConfirmedCancel)) * 31) + this.desiredReaderInterfaces.hashCode()) * 31;
        Set<ReaderConfiguration.ReaderType> set = this.activeReaderInterfaces;
        int iHashCode19 = (((iHashCode18 + (set == null ? 0 : set.hashCode())) * 31) + Boolean.hashCode(this.isWaitingForCard)) * 31;
        Cart cart = this.cartToDisplay;
        int iHashCode20 = (((((iHashCode19 + (cart == null ? 0 : cart.hashCode())) * 31) + Boolean.hashCode(this.confirmedCollection)) * 31) + Boolean.hashCode(this.shouldStartManualEntry)) * 31;
        SCARequirement sCARequirement = this.scaRequirement;
        int iHashCode21 = (iHashCode20 + (sCARequirement == null ? 0 : sCARequirement.hashCode())) * 31;
        PaymentCollectionState paymentCollectionState2 = this.stateWhenTimedOut;
        int iHashCode22 = (iHashCode21 + (paymentCollectionState2 == null ? 0 : paymentCollectionState2.hashCode())) * 31;
        IntegrationType integrationType = this.integrationType;
        int iHashCode23 = (((((iHashCode22 + (integrationType == null ? 0 : integrationType.hashCode())) * 31) + this.deviceCapability.hashCode()) * 31) + this.deviceType.hashCode()) * 31;
        ManualEntryCollectionResult manualEntryCollectionResult = this.manualEntryCollectionResult;
        int iHashCode24 = (((((((iHashCode23 + (manualEntryCollectionResult == null ? 0 : manualEntryCollectionResult.hashCode())) * 31) + Boolean.hashCode(this.isOffline)) * 31) + Boolean.hashCode(this.isDeferredAuthorizationCountry)) * 31) + this.domesticDebitAids.hashCode()) * 31;
        ReaderConfiguration.DomesticDebitPriority domesticDebitPriority = this.domesticDebitPriority;
        int iHashCode25 = (((((((((((iHashCode24 + (domesticDebitPriority == null ? 0 : domesticDebitPriority.hashCode())) * 31) + Boolean.hashCode(this.isApplicationSelectionInQuickChipEnabled)) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31) + Boolean.hashCode(this.collectPaymentMethodRequestFailed)) * 31) + Boolean.hashCode(this.showThankYouReceived)) * 31) + this.dynamicCurrencyConversionSelectionStatus.hashCode()) * 31;
        DynamicCurrencyConversionData dynamicCurrencyConversionData = this.dynamicCurrencyConversionData;
        int iHashCode26 = (iHashCode25 + (dynamicCurrencyConversionData == null ? 0 : dynamicCurrencyConversionData.hashCode())) * 31;
        String str5 = this.surchargeNotice;
        int iHashCode27 = (((((iHashCode26 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.nonCardPaymentMethodTypes.hashCode()) * 31) + Boolean.hashCode(this.shouldStartNonCardPaymentMethodSelection)) * 31;
        PaymentMethodType paymentMethodType = this.selectedNonCardPaymentMethod;
        int iHashCode28 = (((iHashCode27 + (paymentMethodType == null ? 0 : paymentMethodType.hashCode())) * 31) + Boolean.hashCode(this.nonCardPaymentMethodConfirmationRequested)) * 31;
        NonCardPaymentMethodData nonCardPaymentMethodData = this.nonCardPaymentMethodData;
        return ((((((((iHashCode28 + (nonCardPaymentMethodData != null ? nonCardPaymentMethodData.hashCode() : 0)) * 31) + Boolean.hashCode(this.disablePredip)) * 31) + Boolean.hashCode(this.useIncrementalAuthUi)) * 31) + Boolean.hashCode(this.forcePinEntry)) * 31) + Boolean.hashCode(this.sposGirocardEnabled);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PaymentCollectionData(transactionType=");
        sb.append(this.transactionType).append(", baseAmount=").append(this.baseAmount).append(", amount=").append(this.amount).append(", emvTransactionType=").append(this.emvTransactionType).append(", interfaceResetRequired=").append(this.interfaceResetRequired).append(", numberOfFailedInsertions=").append(this.numberOfFailedInsertions).append(", magStripeReadResult=").append(this.magStripeReadResult).append(", promptPinEntryForServiceCode=").append(this.promptPinEntryForServiceCode).append(", forceMagstripePin=").append(this.forceMagstripePin).append(", cardSlotState=").append(this.cardSlotState).append(", applicationList=").append(this.applicationList).append(", applicationSelectionRetryReason=");
        sb.append(this.applicationSelectionRetryReason).append(", selectedApplicationIndex=").append(this.selectedApplicationIndex).append(", selectedLanguage=").append(this.selectedLanguage).append(", accountSelectionStatus=").append(this.accountSelectionStatus).append(", pinEntryStatus=").append(this.pinEntryStatus).append(", pinEntryRetryReason=").append(this.pinEntryRetryReason).append(", pinAsterisks=").append(this.pinAsterisks).append(", pinEntryCompleted=").append(this.pinEntryCompleted).append(", accessiblePinPadTouchEvent=").append(this.accessiblePinPadTouchEvent).append(", earlyTransactionAbortReason=").append(this.earlyTransactionAbortReason).append(", onlineAuthorizationData=██, onlineAuthorizationRequested=").append(this.onlineAuthorizationRequested).append(", onlineAuthorizationResponse=██, onlineAuthorizationResponseSentToKernel=").append(this.onlineAuthorizationResponseSentToKernel);
        sb.append(", finalTlvResponse=██, chargeAttempt=").append(this.chargeAttempt).append(", tippingState=").append(this.tippingState).append(", tippingConfig=").append(this.tippingConfig).append(", tipEligibleAmount=").append(this.tipEligibleAmount).append(", expectingHardwareCancellation=").append(this.expectingHardwareCancellation).append(", hardwareTransactionResult=").append(this.hardwareTransactionResult).append(", intermediateTransactionError=").append(this.intermediateTransactionError).append(", lastCollectionResult=").append(this.lastCollectionResult).append(", userRetryRequested=").append(this.userRetryRequested).append(", stateWhenCancelled=").append(this.stateWhenCancelled).append(", cancelReason=").append(this.cancelReason).append(", kernelConfirmedCancel=");
        sb.append(this.kernelConfirmedCancel).append(", desiredReaderInterfaces=").append(this.desiredReaderInterfaces).append(", activeReaderInterfaces=").append(this.activeReaderInterfaces).append(", isWaitingForCard=").append(this.isWaitingForCard).append(", cartToDisplay=").append(this.cartToDisplay).append(", confirmedCollection=").append(this.confirmedCollection).append(", shouldStartManualEntry=").append(this.shouldStartManualEntry).append(", scaRequirement=").append(this.scaRequirement).append(", stateWhenTimedOut=").append(this.stateWhenTimedOut).append(", integrationType=").append(this.integrationType).append(", deviceCapability=").append(this.deviceCapability).append(", deviceType=").append(this.deviceType);
        sb.append(", manualEntryCollectionResult=").append(this.manualEntryCollectionResult).append(", isOffline=").append(this.isOffline).append(", isDeferredAuthorizationCountry=").append(this.isDeferredAuthorizationCountry).append(", domesticDebitAids=").append(this.domesticDebitAids).append(", domesticDebitPriority=").append(this.domesticDebitPriority).append(", isApplicationSelectionInQuickChipEnabled=").append(this.isApplicationSelectionInQuickChipEnabled).append(", enableCustomerCancellation=").append(this.enableCustomerCancellation).append(", collectPaymentMethodRequestFailed=").append(this.collectPaymentMethodRequestFailed).append(", showThankYouReceived=").append(this.showThankYouReceived).append(", dynamicCurrencyConversionSelectionStatus=").append(this.dynamicCurrencyConversionSelectionStatus).append(", dynamicCurrencyConversionData=").append(this.dynamicCurrencyConversionData).append(", surchargeNotice=");
        sb.append(this.surchargeNotice).append(", nonCardPaymentMethodTypes=").append(this.nonCardPaymentMethodTypes).append(", shouldStartNonCardPaymentMethodSelection=").append(this.shouldStartNonCardPaymentMethodSelection).append(", selectedNonCardPaymentMethod=").append(this.selectedNonCardPaymentMethod).append(", nonCardPaymentMethodConfirmationRequested=").append(this.nonCardPaymentMethodConfirmationRequested).append(", nonCardPaymentMethodData=").append(this.nonCardPaymentMethodData).append(", disablePredip=").append(this.disablePredip).append(", useIncrementalAuthUi=").append(this.useIncrementalAuthUi).append(", forcePinEntry=").append(this.forcePinEntry).append(", sposGirocardEnabled=").append(this.sposGirocardEnabled).append(')');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaymentCollectionData(TransactionType transactionType, Amount baseAmount, Amount amount, EmvTransactionType emvTransactionType, boolean z, int i, MagStripeReadResult magStripeReadResult, boolean z2, boolean z3, ContactCardSlotState cardSlotState, List<String> applicationList, ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason, Integer num, String str, AccountSelectionStatus accountSelectionStatus, PinEntryStatus pinEntryStatus, PinEntryRetryReason pinEntryRetryReason, int i2, boolean z4, AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, EarlyTransactionAbortReason earlyTransactionAbortReason, String str2, boolean z5, String str3, boolean z6, String str4, ChargeAttempt chargeAttempt, TippingState tippingState, TipConfigValidationResult tippingConfig, Amount amount2, boolean z7, TransactionResult.Result result, IntermediateTransactionError intermediateTransactionError, TransactionResult.Result result2, boolean z8, PaymentCollectionState paymentCollectionState, CancelReason cancelReason, boolean z9, Set<? extends ReaderConfiguration.ReaderType> desiredReaderInterfaces, Set<? extends ReaderConfiguration.ReaderType> set, boolean z10, Cart cart, boolean z11, boolean z12, SCARequirement sCARequirement, PaymentCollectionState paymentCollectionState2, IntegrationType integrationType, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, ManualEntryCollectionResult manualEntryCollectionResult, boolean z13, boolean z14, List<String> domesticDebitAids, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z15, boolean z16, boolean z17, boolean z18, DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus, DynamicCurrencyConversionData dynamicCurrencyConversionData, String str5, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean z19, PaymentMethodType paymentMethodType, boolean z20, NonCardPaymentMethodData nonCardPaymentMethodData, boolean z21, boolean z22, boolean z23, boolean z24) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(baseAmount, "baseAmount");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(cardSlotState, "cardSlotState");
        Intrinsics.checkNotNullParameter(applicationList, "applicationList");
        Intrinsics.checkNotNullParameter(accountSelectionStatus, "accountSelectionStatus");
        Intrinsics.checkNotNullParameter(pinEntryStatus, "pinEntryStatus");
        Intrinsics.checkNotNullParameter(tippingState, "tippingState");
        Intrinsics.checkNotNullParameter(tippingConfig, "tippingConfig");
        Intrinsics.checkNotNullParameter(desiredReaderInterfaces, "desiredReaderInterfaces");
        Intrinsics.checkNotNullParameter(deviceCapability, "deviceCapability");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionSelectionStatus, "dynamicCurrencyConversionSelectionStatus");
        Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
        this.transactionType = transactionType;
        this.baseAmount = baseAmount;
        this.amount = amount;
        this.emvTransactionType = emvTransactionType;
        this.interfaceResetRequired = z;
        this.numberOfFailedInsertions = i;
        this.magStripeReadResult = magStripeReadResult;
        this.promptPinEntryForServiceCode = z2;
        this.forceMagstripePin = z3;
        this.cardSlotState = cardSlotState;
        this.applicationList = applicationList;
        this.applicationSelectionRetryReason = applicationSelectionRetryReason;
        this.selectedApplicationIndex = num;
        this.selectedLanguage = str;
        this.accountSelectionStatus = accountSelectionStatus;
        this.pinEntryStatus = pinEntryStatus;
        this.pinEntryRetryReason = pinEntryRetryReason;
        this.pinAsterisks = i2;
        this.pinEntryCompleted = z4;
        this.accessiblePinPadTouchEvent = accessiblePinPadTouchEvent;
        this.earlyTransactionAbortReason = earlyTransactionAbortReason;
        this.onlineAuthorizationData = str2;
        this.onlineAuthorizationRequested = z5;
        this.onlineAuthorizationResponse = str3;
        this.onlineAuthorizationResponseSentToKernel = z6;
        this.finalTlvResponse = str4;
        this.chargeAttempt = chargeAttempt;
        this.tippingState = tippingState;
        this.tippingConfig = tippingConfig;
        this.tipEligibleAmount = amount2;
        this.expectingHardwareCancellation = z7;
        this.hardwareTransactionResult = result;
        this.intermediateTransactionError = intermediateTransactionError;
        this.lastCollectionResult = result2;
        this.userRetryRequested = z8;
        this.stateWhenCancelled = paymentCollectionState;
        this.cancelReason = cancelReason;
        this.kernelConfirmedCancel = z9;
        this.desiredReaderInterfaces = desiredReaderInterfaces;
        this.activeReaderInterfaces = set;
        this.isWaitingForCard = z10;
        this.cartToDisplay = cart;
        this.confirmedCollection = z11;
        this.shouldStartManualEntry = z12;
        this.scaRequirement = sCARequirement;
        this.stateWhenTimedOut = paymentCollectionState2;
        this.integrationType = integrationType;
        this.deviceCapability = deviceCapability;
        this.deviceType = deviceType;
        this.manualEntryCollectionResult = manualEntryCollectionResult;
        this.isOffline = z13;
        this.isDeferredAuthorizationCountry = z14;
        this.domesticDebitAids = domesticDebitAids;
        this.domesticDebitPriority = domesticDebitPriority;
        this.isApplicationSelectionInQuickChipEnabled = z15;
        this.enableCustomerCancellation = z16;
        this.collectPaymentMethodRequestFailed = z17;
        this.showThankYouReceived = z18;
        this.dynamicCurrencyConversionSelectionStatus = dynamicCurrencyConversionSelectionStatus;
        this.dynamicCurrencyConversionData = dynamicCurrencyConversionData;
        this.surchargeNotice = str5;
        this.nonCardPaymentMethodTypes = nonCardPaymentMethodTypes;
        this.shouldStartNonCardPaymentMethodSelection = z19;
        this.selectedNonCardPaymentMethod = paymentMethodType;
        this.nonCardPaymentMethodConfirmationRequested = z20;
        this.nonCardPaymentMethodData = nonCardPaymentMethodData;
        this.disablePredip = z21;
        this.useIncrementalAuthUi = z22;
        this.forcePinEntry = z23;
        this.sposGirocardEnabled = z24;
        int i3 = WhenMappings.$EnumSwitchMapping$0[getCollectionResultType().ordinal()];
        boolean z25 = false;
        if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
            z25 = true;
        }
        this.isCollectionEndedWithFailure = z25;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final Amount getBaseAmount() {
        return this.baseAmount;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final boolean getInterfaceResetRequired() {
        return this.interfaceResetRequired;
    }

    public final int getNumberOfFailedInsertions() {
        return this.numberOfFailedInsertions;
    }

    public final MagStripeReadResult getMagStripeReadResult() {
        return this.magStripeReadResult;
    }

    public final boolean getPromptPinEntryForServiceCode() {
        return this.promptPinEntryForServiceCode;
    }

    public final boolean getForceMagstripePin() {
        return this.forceMagstripePin;
    }

    public /* synthetic */ PaymentCollectionData(TransactionType transactionType, Amount amount, Amount amount2, EmvTransactionType emvTransactionType, boolean z, int i, MagStripeReadResult magStripeReadResult, boolean z2, boolean z3, ContactCardSlotState contactCardSlotState, List list, ApplicationSelectionModel.ApplicationSelectionRetryReason applicationSelectionRetryReason, Integer num, String str, AccountSelectionStatus accountSelectionStatus, PinEntryStatus pinEntryStatus, PinEntryRetryReason pinEntryRetryReason, int i2, boolean z4, AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, EarlyTransactionAbortReason earlyTransactionAbortReason, String str2, boolean z5, String str3, boolean z6, String str4, ChargeAttempt chargeAttempt, TippingState tippingState, TipConfigValidationResult tipConfigValidationResult, Amount amount3, boolean z7, TransactionResult.Result result, IntermediateTransactionError intermediateTransactionError, TransactionResult.Result result2, boolean z8, PaymentCollectionState paymentCollectionState, CancelReason cancelReason, boolean z9, Set set, Set set2, boolean z10, Cart cart, boolean z11, boolean z12, SCARequirement sCARequirement, PaymentCollectionState paymentCollectionState2, IntegrationType integrationType, PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, DeviceType deviceType, ManualEntryCollectionResult manualEntryCollectionResult, boolean z13, boolean z14, List list2, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z15, boolean z16, boolean z17, boolean z18, DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus, DynamicCurrencyConversionData dynamicCurrencyConversionData, String str5, List list3, boolean z19, PaymentMethodType paymentMethodType, boolean z20, NonCardPaymentMethodData nonCardPaymentMethodData, boolean z21, boolean z22, boolean z23, boolean z24, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(transactionType, amount, amount2, emvTransactionType, (i3 & 16) != 0 ? false : z, (i3 & 32) != 0 ? 0 : i, (i3 & 64) != 0 ? null : magStripeReadResult, (i3 & 128) != 0 ? false : z2, (i3 & 256) != 0 ? false : z3, (i3 & 512) != 0 ? ContactCardSlotState.EMPTY : contactCardSlotState, (i3 & 1024) != 0 ? CollectionsKt.emptyList() : list, (i3 & 2048) != 0 ? null : applicationSelectionRetryReason, (i3 & 4096) != 0 ? null : num, (i3 & 8192) != 0 ? null : str, (i3 & 16384) != 0 ? AccountSelectionStatus.NotRequested.INSTANCE : accountSelectionStatus, (i3 & 32768) != 0 ? PinEntryStatus.NOT_REQUESTED : pinEntryStatus, (i3 & 65536) != 0 ? null : pinEntryRetryReason, (i3 & 131072) != 0 ? 0 : i2, (i3 & 262144) != 0 ? false : z4, (i3 & 524288) != 0 ? null : accessiblePinPadTouchEvent, (i3 & 1048576) != 0 ? null : earlyTransactionAbortReason, (i3 & 2097152) != 0 ? null : str2, (i3 & 4194304) != 0 ? false : z5, (i3 & 8388608) != 0 ? null : str3, (i3 & 16777216) != 0 ? false : z6, (i3 & 33554432) != 0 ? null : str4, (i3 & 67108864) != 0 ? null : chargeAttempt, (i3 & 134217728) != 0 ? TippingState.Ineligible.INSTANCE : tippingState, (i3 & 268435456) != 0 ? new InvalidTipConfig(InvalidTipConfig.Reason.NULL_TIP_CONFIG) : tipConfigValidationResult, (536870912 & i3) != 0 ? null : amount3, (i3 & 1073741824) != 0 ? false : z7, (i3 & Integer.MIN_VALUE) != 0 ? null : result, (i4 & 1) != 0 ? null : intermediateTransactionError, (i4 & 2) != 0 ? null : result2, (i4 & 4) != 0 ? false : z8, (i4 & 8) != 0 ? null : paymentCollectionState, (i4 & 16) != 0 ? null : cancelReason, (i4 & 32) != 0 ? false : z9, (i4 & 64) != 0 ? ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP() : set, (i4 & 128) != 0 ? null : set2, (i4 & 256) != 0 ? false : z10, (i4 & 512) != 0 ? null : cart, (i4 & 1024) != 0 ? true : z11, (i4 & 2048) != 0 ? false : z12, (i4 & 4096) != 0 ? null : sCARequirement, (i4 & 8192) != 0 ? null : paymentCollectionState2, (i4 & 16384) != 0 ? null : integrationType, (i4 & 32768) != 0 ? PaymentCollectionDeviceCapabilityKt.getDEFAULT_PAYMENT_COLLECTION_CAPABILITY() : paymentCollectionDeviceCapability, (i4 & 65536) != 0 ? DeviceType.UNKNOWN : deviceType, (i4 & 131072) != 0 ? null : manualEntryCollectionResult, (i4 & 262144) != 0 ? false : z13, (i4 & 524288) != 0 ? false : z14, (i4 & 1048576) != 0 ? CollectionsKt.emptyList() : list2, (i4 & 2097152) != 0 ? null : domesticDebitPriority, (i4 & 4194304) != 0 ? false : z15, z16, (16777216 & i4) != 0 ? false : z17, (33554432 & i4) != 0 ? false : z18, (67108864 & i4) != 0 ? DynamicCurrencyConversionSelectionStatus.NotRequested.INSTANCE : dynamicCurrencyConversionSelectionStatus, (134217728 & i4) != 0 ? null : dynamicCurrencyConversionData, str5, list3, (1073741824 & i4) != 0 ? false : z19, (i4 & Integer.MIN_VALUE) != 0 ? null : paymentMethodType, (i5 & 1) != 0 ? false : z20, (i5 & 2) != 0 ? null : nonCardPaymentMethodData, z21, z22, (i5 & 16) != 0 ? false : z23, (i5 & 32) != 0 ? false : z24);
    }

    public final ContactCardSlotState getCardSlotState() {
        return this.cardSlotState;
    }

    public final void setCardSlotState(ContactCardSlotState contactCardSlotState) {
        Intrinsics.checkNotNullParameter(contactCardSlotState, "<set-?>");
        this.cardSlotState = contactCardSlotState;
    }

    public final List<String> getApplicationList() {
        return this.applicationList;
    }

    public final void setApplicationList(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.applicationList = list;
    }

    public final ApplicationSelectionModel.ApplicationSelectionRetryReason getApplicationSelectionRetryReason() {
        return this.applicationSelectionRetryReason;
    }

    public final Integer getSelectedApplicationIndex() {
        return this.selectedApplicationIndex;
    }

    public final String getSelectedLanguage() {
        return this.selectedLanguage;
    }

    public final AccountSelectionStatus getAccountSelectionStatus() {
        return this.accountSelectionStatus;
    }

    public final PinEntryStatus getPinEntryStatus() {
        return this.pinEntryStatus;
    }

    public final PinEntryRetryReason getPinEntryRetryReason() {
        return this.pinEntryRetryReason;
    }

    public final int getPinAsterisks() {
        return this.pinAsterisks;
    }

    public final boolean getPinEntryCompleted() {
        return this.pinEntryCompleted;
    }

    public final AccessiblePinPadTouchEvent getAccessiblePinPadTouchEvent() {
        return this.accessiblePinPadTouchEvent;
    }

    public final EarlyTransactionAbortReason getEarlyTransactionAbortReason() {
        return this.earlyTransactionAbortReason;
    }

    public final String getOnlineAuthorizationData() {
        return this.onlineAuthorizationData;
    }

    public final boolean getOnlineAuthorizationRequested() {
        return this.onlineAuthorizationRequested;
    }

    public final String getOnlineAuthorizationResponse() {
        return this.onlineAuthorizationResponse;
    }

    public final boolean getOnlineAuthorizationResponseSentToKernel() {
        return this.onlineAuthorizationResponseSentToKernel;
    }

    public final String getFinalTlvResponse() {
        return this.finalTlvResponse;
    }

    public final ChargeAttempt getChargeAttempt() {
        return this.chargeAttempt;
    }

    public final TippingState getTippingState() {
        return this.tippingState;
    }

    public final TipConfigValidationResult getTippingConfig() {
        return this.tippingConfig;
    }

    public final Amount getTipEligibleAmount() {
        return this.tipEligibleAmount;
    }

    public final boolean getExpectingHardwareCancellation() {
        return this.expectingHardwareCancellation;
    }

    public final TransactionResult.Result getHardwareTransactionResult() {
        return this.hardwareTransactionResult;
    }

    public final IntermediateTransactionError getIntermediateTransactionError() {
        return this.intermediateTransactionError;
    }

    public final TransactionResult.Result getLastCollectionResult() {
        return this.lastCollectionResult;
    }

    public final boolean getUserRetryRequested() {
        return this.userRetryRequested;
    }

    public final PaymentCollectionState getStateWhenCancelled() {
        return this.stateWhenCancelled;
    }

    public final CancelReason getCancelReason() {
        return this.cancelReason;
    }

    public final boolean getKernelConfirmedCancel() {
        return this.kernelConfirmedCancel;
    }

    public final Set<ReaderConfiguration.ReaderType> getDesiredReaderInterfaces() {
        return this.desiredReaderInterfaces;
    }

    public final Set<ReaderConfiguration.ReaderType> getActiveReaderInterfaces() {
        return this.activeReaderInterfaces;
    }

    public final boolean isWaitingForCard() {
        return this.isWaitingForCard;
    }

    public final Cart getCartToDisplay() {
        return this.cartToDisplay;
    }

    public final boolean getConfirmedCollection() {
        return this.confirmedCollection;
    }

    public final boolean getShouldStartManualEntry() {
        return this.shouldStartManualEntry;
    }

    public final SCARequirement getScaRequirement() {
        return this.scaRequirement;
    }

    public final PaymentCollectionState getStateWhenTimedOut() {
        return this.stateWhenTimedOut;
    }

    public final IntegrationType getIntegrationType() {
        return this.integrationType;
    }

    public final PaymentCollectionDeviceCapability getDeviceCapability() {
        return this.deviceCapability;
    }

    public final DeviceType getDeviceType() {
        return this.deviceType;
    }

    public final ManualEntryCollectionResult getManualEntryCollectionResult() {
        return this.manualEntryCollectionResult;
    }

    public final boolean isOffline() {
        return this.isOffline;
    }

    public final boolean isDeferredAuthorizationCountry() {
        return this.isDeferredAuthorizationCountry;
    }

    public final List<String> getDomesticDebitAids() {
        return this.domesticDebitAids;
    }

    public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
        return this.domesticDebitPriority;
    }

    public final boolean isApplicationSelectionInQuickChipEnabled() {
        return this.isApplicationSelectionInQuickChipEnabled;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final boolean getCollectPaymentMethodRequestFailed() {
        return this.collectPaymentMethodRequestFailed;
    }

    public final boolean getShowThankYouReceived() {
        return this.showThankYouReceived;
    }

    public final DynamicCurrencyConversionSelectionStatus getDynamicCurrencyConversionSelectionStatus() {
        return this.dynamicCurrencyConversionSelectionStatus;
    }

    public final DynamicCurrencyConversionData getDynamicCurrencyConversionData() {
        return this.dynamicCurrencyConversionData;
    }

    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    public final List<PaymentMethodType> getNonCardPaymentMethodTypes() {
        return this.nonCardPaymentMethodTypes;
    }

    public final boolean getShouldStartNonCardPaymentMethodSelection() {
        return this.shouldStartNonCardPaymentMethodSelection;
    }

    public final PaymentMethodType getSelectedNonCardPaymentMethod() {
        return this.selectedNonCardPaymentMethod;
    }

    public final boolean getNonCardPaymentMethodConfirmationRequested() {
        return this.nonCardPaymentMethodConfirmationRequested;
    }

    public final NonCardPaymentMethodData getNonCardPaymentMethodData() {
        return this.nonCardPaymentMethodData;
    }

    public final boolean getDisablePredip() {
        return this.disablePredip;
    }

    public final boolean getUseIncrementalAuthUi() {
        return this.useIncrementalAuthUi;
    }

    public final boolean getForcePinEntry() {
        return this.forcePinEntry;
    }

    public final boolean getSposGirocardEnabled() {
        return this.sposGirocardEnabled;
    }

    public final Set<ReaderConfiguration.ReaderType> getActiveReaderInterfacesForDisplay() {
        Set<ReaderConfiguration.ReaderType> set = this.activeReaderInterfaces;
        return set == null ? this.desiredReaderInterfaces : set;
    }

    public final PaymentCollectionResultType getCollectionResultType() {
        if (UtilsKt.isFatalError(this.hardwareTransactionResult)) {
            return PaymentCollectionResultType.DEVICE_FAILURE;
        }
        if (isCancelled()) {
            return PaymentCollectionResultType.CANCELLED;
        }
        if (isTimedOut()) {
            return PaymentCollectionResultType.TIMEOUT;
        }
        if (isManualEntryFailed() || isDeclined()) {
            return PaymentCollectionResultType.DEVICE_DECLINED;
        }
        if (this.collectPaymentMethodRequestFailed) {
            return PaymentCollectionResultType.COLLECT_PAYMENT_METHOD_API_ERROR;
        }
        ChargeAttempt chargeAttempt = this.chargeAttempt;
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulRefund ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE) ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.PendingNextActionAttempt ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData) {
            return PaymentCollectionResultType.SUCCESS;
        }
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedRefund ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.AlreadyRefunded ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
            return PaymentCollectionResultType.ONLINE_CONFIRMATION_DECLINED;
        }
        if (Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE)) {
            return PaymentCollectionResultType.ONLINE_CONFIRMATION_UNKNOWN_FAILURE;
        }
        if (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) {
            return PaymentCollectionResultType.SCA_NEEDED;
        }
        if (chargeAttempt instanceof ChargeAttempt.IncompleteAttempt) {
            return PaymentCollectionResultType.TIMEOUT;
        }
        if (chargeAttempt == null) {
            return PaymentCollectionResultType.NOT_FINISHED;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final boolean isManualEntryFailed() {
        return this.manualEntryCollectionResult instanceof ManualEntryCollectionResult.Failure;
    }

    /* JADX INFO: renamed from: isCollectionEndedWithFailure, reason: from getter */
    public final boolean getIsCollectionEndedWithFailure() {
        return this.isCollectionEndedWithFailure;
    }

    public final boolean isCancelled() {
        return this.stateWhenCancelled != null;
    }

    public final boolean isTimedOut() {
        return this.stateWhenTimedOut != null;
    }

    public final boolean isPreDipEnabled() {
        return this.emvTransactionType == EmvTransactionType.QUICK && !this.disablePredip;
    }

    public final boolean isDeclined() {
        if (this.hardwareTransactionResult == TransactionResult.Result.TERMINATED && this.onlineAuthorizationData != null && this.onlineAuthorizationResponse != null) {
            return true;
        }
        if (this.hardwareTransactionResult != TransactionResult.Result.DECLINED) {
            return false;
        }
        return !getShouldAutoRespondOnlineAuth() || this.onlineAuthorizationData == null || this.onlineAuthorizationResponse == null;
    }

    public final MagStripePaymentCollectionAuthority getMagStripePaymentCollectionAuthority() {
        if (this.magStripeReadResult instanceof MagStripeReadSuccess) {
            boolean z = this.numberOfFailedInsertions >= 3 || Intrinsics.areEqual(this.activeReaderInterfaces, ReaderConfiguration.INSTANCE.getSWIPE());
            boolean z2 = this.lastCollectionResult == TransactionResult.Result.EMPTY_CANDIDATE_LIST;
            boolean iccCapable = ((MagStripeReadSuccess) this.magStripeReadResult).getIccCapable();
            boolean z3 = this.transactionType == TransactionType.MAGSTRIPE_PASSTHROUGH;
            if (z) {
                return MagStripePaymentCollectionAuthority.TECHNICAL_FALLBACK;
            }
            if (z2) {
                return MagStripePaymentCollectionAuthority.EMPTY_CANDIDATE_LIST_FALLBACK;
            }
            if (!iccCapable) {
                return MagStripePaymentCollectionAuthority.NON_ICC;
            }
            if (z3) {
                return MagStripePaymentCollectionAuthority.PASSTHROUGH;
            }
        }
        return null;
    }

    public final MagStripePinStatus getMagStripePinStatus() {
        if (getMagStripePaymentCollectionAuthority() != null) {
            MagStripeReadResult magStripeReadResult = this.magStripeReadResult;
            if ((magStripeReadResult instanceof MagStripeReadSuccess) && (this.forceMagstripePin || (((MagStripeReadSuccess) magStripeReadResult).getNeedMagStripePin() && this.promptPinEntryForServiceCode))) {
                MagStripeReadResult magStripeReadResult2 = this.magStripeReadResult;
                Intrinsics.checkNotNull(magStripeReadResult2, "null cannot be cast to non-null type com.stripe.hardware.magstripe.MagStripeReadSuccess");
                if (((MagStripeReadSuccess) magStripeReadResult2).getEpb() != null && ((MagStripeReadSuccess) this.magStripeReadResult).getEpbKsn() != null) {
                    return MagStripePinStatus.Collected.INSTANCE;
                }
                if (UtilsKt.toFailureReason(this.pinEntryStatus) != null) {
                    PinEntryFailureReason failureReason = UtilsKt.toFailureReason(this.pinEntryStatus);
                    Intrinsics.checkNotNull(failureReason);
                    if (failureReason == PinEntryFailureReason.BYPASSED) {
                        return MagStripePinStatus.Bypassed.INSTANCE;
                    }
                    return new MagStripePinStatus.Failed(failureReason);
                }
                if (((MagStripeReadSuccess) this.magStripeReadResult).getEpb() == null || ((MagStripeReadSuccess) this.magStripeReadResult).getEpbKsn() == null) {
                    return MagStripePinStatus.ToCollect.INSTANCE;
                }
                return MagStripePinStatus.NotNeeded.INSTANCE;
            }
        }
        return MagStripePinStatus.NotNeeded.INSTANCE;
    }

    public final boolean getShouldAutoSelectApplication() {
        if (this.applicationList.size() == 1) {
            return true;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[this.emvTransactionType.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return !this.isApplicationSelectionInQuickChipEnabled;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean getShouldAutoRespondOnlineAuth() {
        return this.emvTransactionType == EmvTransactionType.QUICK && this.deviceCapability.getQuickEmvAutoResponse();
    }

    public final boolean getShouldAutoSelectAccount() {
        String str;
        Integer num = this.selectedApplicationIndex;
        if (num != null) {
            str = (String) CollectionsKt.getOrNull(this.applicationList, num.intValue());
        } else {
            str = null;
        }
        if (str != null) {
            return !applicationRequiresAccountSelection(str);
        }
        return false;
    }

    public final AccountType getSelectedAccount() {
        AccountSelectionStatus accountSelectionStatus = this.accountSelectionStatus;
        AccountSelectionStatus.AccountSelected accountSelected = accountSelectionStatus instanceof AccountSelectionStatus.AccountSelected ? (AccountSelectionStatus.AccountSelected) accountSelectionStatus : null;
        if (accountSelected != null) {
            return accountSelected.getSelectedAccount();
        }
        return null;
    }

    public final boolean getBadCardRead() {
        return this.earlyTransactionAbortReason == EarlyTransactionAbortReason.CHIP_CARD_INITIALIZATION_FAILED || this.hardwareTransactionResult == TransactionResult.Result.ICC_CARD_REMOVED;
    }

    public final Amount getTipAmount() {
        TippingSelectionResult result;
        TippingState tippingState = this.tippingState;
        TippingState.Completed completed = tippingState instanceof TippingState.Completed ? (TippingState.Completed) tippingState : null;
        if (completed == null || (result = completed.getResult()) == null) {
            return null;
        }
        return result.getAmount();
    }

    private final boolean applicationRequiresAccountSelection(String application) {
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(application);
        return tlvMap != null && tlvMap.getSourceType() == SourceType.INTERAC_PRESENT;
    }

    public final Boolean getSelectedDynamicCurrencyConversion() {
        DynamicCurrencyConversionSelectionStatus dynamicCurrencyConversionSelectionStatus = this.dynamicCurrencyConversionSelectionStatus;
        DynamicCurrencyConversionSelectionStatus.DynamicCurrencyConversionSelected dynamicCurrencyConversionSelected = dynamicCurrencyConversionSelectionStatus instanceof DynamicCurrencyConversionSelectionStatus.DynamicCurrencyConversionSelected ? (DynamicCurrencyConversionSelectionStatus.DynamicCurrencyConversionSelected) dynamicCurrencyConversionSelectionStatus : null;
        if (dynamicCurrencyConversionSelected != null) {
            return Boolean.valueOf(dynamicCurrencyConversionSelected.getSelected());
        }
        return null;
    }
}
