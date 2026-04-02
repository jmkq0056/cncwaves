package com.stripe.paymentcollection;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.annotation.VisibleForTesting;
import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.device.MainlandDeviceType;
import com.stripe.device.PlatformDeviceInfo;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.DisplayNonCardPaymentMethodsResult;
import com.stripe.hardware.paymentcollection.Disposition;
import com.stripe.hardware.paymentcollection.PaymentCollector;
import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.hardware.paymentcollection.PaymentMethodCollectionResult;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.status.AudioAlertType;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.hardware.tipping.InvalidTipConfig;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.hardware.tipping.TipConfigValidationResultKt;
import com.stripe.hardware.tipping.TipSelectionResult;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.manualentry.ManualEntryResultModel;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.sun.jna.platform.win32.WinError;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000â\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004ê\u0001ë\u0001B]\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001aJ\b\u0010/\u001a\u000200H\u0002J\u0006\u00101\u001a\u000202J\b\u00103\u001a\u000202H\u0002J\u0006\u00104\u001a\u000200J´\u0001\u00105\u001a\b\u0012\u0004\u0012\u000207062\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010?2\n\b\u0002\u0010@\u001a\u0004\u0018\u0001092\b\b\u0002\u0010A\u001a\u00020B2\b\b\u0002\u0010C\u001a\u00020B2\b\b\u0002\u0010D\u001a\u00020B2\n\b\u0002\u0010E\u001a\u0004\u0018\u0001092\b\b\u0002\u0010F\u001a\u00020B2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020B2\b\u0010J\u001a\u0004\u0018\u00010K2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020BH\u0086@¢\u0006\u0002\u0010QJ\u0016\u0010R\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010<\u001a\u00020=J\b\u0010U\u001a\u000200H\u0007J\b\u0010V\u001a\u00020KH\u0002J\b\u0010W\u001a\u00020XH\u0007J\u0012\u0010Y\u001a\u0004\u0018\u00010Z2\u0006\u00108\u001a\u000209H\u0002J\u0018\u0010[\u001a\u00020\\2\u0006\u00108\u001a\u0002092\u0006\u0010]\u001a\u00020^H\u0002J8\u0010_\u001a\u00020^2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\b\b\u0002\u0010A\u001a\u00020B2\b\b\u0002\u0010C\u001a\u00020B2\n\b\u0002\u0010E\u001a\u0004\u0018\u000109H\u0002J\u0010\u0010`\u001a\u0002022\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010c\u001a\u0002002\u0006\u0010d\u001a\u00020eH\u0002J\u0010\u0010f\u001a\u0002022\u0006\u0010g\u001a\u00020hH\u0002J\u0010\u0010i\u001a\u0002022\u0006\u0010j\u001a\u00020kH\u0002J\u0010\u0010l\u001a\u0002002\u0006\u0010d\u001a\u00020mH\u0002J\u0014\u0010n\u001a\b\u0012\u0004\u0012\u00020o062\u0006\u0010p\u001a\u00020qJ\u0014\u0010r\u001a\b\u0012\u0004\u0012\u00020o062\u0006\u0010p\u001a\u00020KJ\u0010\u0010s\u001a\u0002022\u0006\u0010t\u001a\u00020uH\u0002J\u000e\u0010v\u001a\u0002002\u0006\u0010w\u001a\u00020=J\u0016\u0010x\u001a\u0002002\u0006\u0010y\u001a\u00020zH\u0082@¢\u0006\u0002\u0010{J\u0010\u0010|\u001a\u0002002\u0006\u0010}\u001a\u00020~H\u0016J\b\u0010\u007f\u001a\u000200H\u0016J\u0013\u0010\u0080\u0001\u001a\u0002002\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\t\u0010\u0083\u0001\u001a\u000200H\u0016J\u0007\u0010\u0084\u0001\u001a\u000202J\u0013\u0010\u0085\u0001\u001a\u0002002\b\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0016J\t\u0010\u0088\u0001\u001a\u000200H\u0016J\u0013\u0010\u0089\u0001\u001a\u0002002\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\t\u0010\u008c\u0001\u001a\u000200H\u0016J\u0012\u0010\u008d\u0001\u001a\u0002002\u0007\u0010d\u001a\u00030\u008e\u0001H\u0016J\t\u0010\u008f\u0001\u001a\u000200H\u0016J\u0013\u0010\u0090\u0001\u001a\u0002002\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J\u0013\u0010\u0093\u0001\u001a\u0002002\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J\u0013\u0010\u0096\u0001\u001a\u0002002\b\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\u0016J)\u0010\u0099\u0001\u001a\u0002002\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010K2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010KH\u0016J\u001a\u0010\u009e\u0001\u001a\u0002002\u000f\u0010\u009f\u0001\u001a\n\u0012\u0005\u0012\u00030¡\u00010 \u0001H\u0016J\t\u0010¢\u0001\u001a\u000200H\u0016J\t\u0010£\u0001\u001a\u000200H\u0016J\u0012\u0010¤\u0001\u001a\u0002002\u0007\u0010¥\u0001\u001a\u00020KH\u0016J\u0013\u0010¦\u0001\u001a\u0002002\b\u0010§\u0001\u001a\u00030¨\u0001H\u0016J\t\u0010©\u0001\u001a\u000200H\u0016J\u0018\u0010ª\u0001\u001a\u0002002\r\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020K0MH\u0016J\t\u0010¬\u0001\u001a\u000200H\u0016J\u0012\u0010\u00ad\u0001\u001a\u0002002\u0007\u0010®\u0001\u001a\u00020KH\u0016J\u0011\u0010¯\u0001\u001a\u0002002\u0006\u0010y\u001a\u00020zH\u0016J\u0012\u0010°\u0001\u001a\u0002002\u0007\u0010±\u0001\u001a\u00020BH\u0016J\t\u0010²\u0001\u001a\u000200H\u0016J\u0013\u0010³\u0001\u001a\u0002002\b\u0010´\u0001\u001a\u00030µ\u0001H\u0016JK\u0010¶\u0001\u001a\t\u0012\u0004\u0012\u0002070·\u00012\u0006\u00108\u001a\u0002092\b\u0010@\u001a\u0004\u0018\u0001092\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010I\u001a\u00020B2\b\u0010J\u001a\u0004\u0018\u00010KH\u0082@¢\u0006\u0003\u0010¸\u0001J\"\u0010¹\u0001\u001a\n\u0012\u0004\u0012\u00020B\u0018\u0001062\b\u0010º\u0001\u001a\u00030»\u0001H\u0086@¢\u0006\u0003\u0010¼\u0001J\t\u0010½\u0001\u001a\u000200H\u0002J\t\u0010¾\u0001\u001a\u000200H\u0002J\t\u0010¿\u0001\u001a\u000200H\u0002J&\u0010À\u0001\u001a\u0002002\b\u0010Á\u0001\u001a\u00030Â\u00012\u0007\u0010Ã\u0001\u001a\u00020K2\b\u0010Ä\u0001\u001a\u00030Å\u0001H\u0002J\t\u0010Æ\u0001\u001a\u000200H\u0002J\u001d\u0010Ç\u0001\u001a\u0002002\b\u0010È\u0001\u001a\u00030É\u00012\b\u0010Ä\u0001\u001a\u00030Å\u0001H\u0002J'\u0010Ê\u0001\u001a\u0002002\b\u0010Ë\u0001\u001a\u00030Ì\u00012\b\u0010Í\u0001\u001a\u00030Î\u00012\b\u0010Ä\u0001\u001a\u00030Å\u0001H\u0002J\u0012\u0010Ï\u0001\u001a\u0002002\u0007\u0010Ð\u0001\u001a\u00020BH\u0002J\u001c\u0010Ñ\u0001\u001a\u0002002\u0007\u0010Ò\u0001\u001a\u00020N2\b\u0010Ä\u0001\u001a\u00030Å\u0001H\u0002J\u0013\u0010Ó\u0001\u001a\u0002002\b\u0010Ë\u0001\u001a\u00030Ì\u0001H\u0002J\u0012\u0010Ô\u0001\u001a\u0002002\u0007\u0010p\u001a\u00030Õ\u0001H\u0002J\t\u0010Ö\u0001\u001a\u000200H\u0002J\u0013\u0010×\u0001\u001a\u0002002\b\u0010Ø\u0001\u001a\u00030Ù\u0001H\u0007J\u0012\u0010Ú\u0001\u001a\u0002002\u0007\u0010Û\u0001\u001a\u00020BH\u0007J\u0012\u0010Ü\u0001\u001a\u0002002\u0007\u0010Û\u0001\u001a\u00020NH\u0007J#\u0010Ý\u0001\u001a\u000b\u0012\u0004\u0012\u00020B\u0018\u00010·\u00012\b\u0010º\u0001\u001a\u00030»\u0001H\u0082@¢\u0006\u0003\u0010¼\u0001J\u0011\u0010Þ\u0001\u001a\u0002022\u0006\u0010p\u001a\u00020qH\u0002J\u0011\u0010ß\u0001\u001a\u0002022\u0006\u0010p\u001a\u00020KH\u0002JÊ\u0001\u0010à\u0001\u001a\t\u0012\u0004\u0012\u0002070·\u00012\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\b\u0010@\u001a\u0004\u0018\u0001092\b\b\u0002\u0010A\u001a\u00020B2\b\b\u0002\u0010C\u001a\u00020B2\b\b\u0002\u0010D\u001a\u00020B2\n\b\u0002\u0010E\u001a\u0004\u0018\u0001092\b\b\u0002\u0010F\u001a\u00020B2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\t\b\u0002\u0010á\u0001\u001a\u00020B2\t\b\u0002\u0010â\u0001\u001a\u00020B2\t\b\u0002\u0010ã\u0001\u001a\u00020B2\u0006\u0010I\u001a\u00020B2\b\u0010J\u001a\u0004\u0018\u00010K2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020BH\u0082@¢\u0006\u0003\u0010ä\u0001J\u0013\u0010å\u0001\u001a\u0002022\n\u0010æ\u0001\u001a\u0005\u0018\u00010ç\u0001J\t\u0010è\u0001\u001a\u000200H\u0016J\u0014\u0010i\u001a\u000200*\u00020.2\u0006\u0010j\u001a\u00020kH\u0002J\u001b\u0010i\u001a\u000200*\u00020&2\u0006\u0010j\u001a\u00020kH\u0082@¢\u0006\u0003\u0010é\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b\u001f\u0010 *\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\"8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b)\u0010*R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006ì\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;", "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "paymentCollector", "Lcom/stripe/hardware/paymentcollection/PaymentCollector;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "settingsRepository", "Lcom/stripe/paymentcollection/SettingsRepository;", "localeManager", "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;", "eventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "transactionRepository", "Lcom/stripe/paymentcollection/TransactionRepository;", "paymentCollectionContextFactory", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "paymentCollectionFeatureFlagRepository", "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "transactionListener", "Lcom/stripe/paymentcollection/TransactionListener;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "deviceCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "getDeviceCapability$delegate", "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Ljava/lang/Object;", "getDeviceCapability", "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "paymentCollectionContext", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;", "platformDeviceInfo", "Lcom/stripe/device/PlatformDeviceInfo;", "getPlatformDeviceInfo", "()Lcom/stripe/device/PlatformDeviceInfo;", "platformDeviceInfo$delegate", "Lcom/stripe/device/DeviceInfoRepository;", "readerContext", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;", "cancelCurrentTransaction", "", "cancelPaymentMethodCollection", "Lkotlinx/coroutines/Job;", "cancelPaymentMethodCollectionViaCustomer", "clearReaderContext", "collectPaymentMethod", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "paymentCollectionListener", "Lcom/stripe/paymentcollection/PaymentCollectionListener;", "scaRequirement", "Lcom/stripe/paymentcollection/SCARequirement;", "tippingAmount", "skipTipping", "", "manualEntry", "isOffline", "tipEligibleAmount", "isDeferredAuthorizationCountry", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "enableCustomerCancellation", "surchargeNotice", "", "nonCardPaymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "requestIncrementalAuthorizationSupport", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "displayCart", "cart", "Lcom/stripe/cart/Cart;", "displayNonCardPaymentMethods", "getAccountBlob", "getDeviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "getLocalizedTippingConfigs", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "getTippingConfig", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "tippingState", "Lcom/stripe/paymentcollection/TippingState;", "getTippingState", "handleAutomationEvent", "automationEvent", "Lcom/stripe/paymentcollection/AutomationEvent;", "handleCollectionCompletion", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/paymentcollection/CollectionCompleteEvent;", "handleHardwareEvent", "hardwareEvent", "Lcom/stripe/paymentcollection/HardwareEvent;", "handleHardwareListenerEvent", "hardwareListenerEvent", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "handleNetworkEvent", "Lcom/stripe/paymentcollection/NetworkEvent;", "handleNonCardPaymentMethodConfirmationResponse", "Lcom/stripe/hardware/emv/TransactionResult;", "response", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "handleOnlineAuthResponse", "handleUserInteractionEvent", "userInteractionEvent", "Lcom/stripe/paymentcollection/UserInteractionEvent;", "initReaderContext", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "insertTransactionLog", "transactionResult", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "(Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAccessiblePinPadEvent", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "onBatteryCriticallyLow", "onCardSwiped", "readResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "onChipCardInitializationFailed", "onCollectPaymentMethodApiError", "onContactCardStateUpdate", "slotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "onDeviceMissingEncryptionKeys", "onDisplayAdditionalMessage", "message", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "onEmptyCandidateList", "onHandlePaymentCollectionEvent", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "onHardwareTransactionCanceled", "onIntermediateTransactionError", "error", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "onKernelTippingSelectionResult", "tipSelectionResult", "Lcom/stripe/hardware/tipping/TipSelectionResult;", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPinEntryStatusChange", "pinEntryStatus", "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "epb", "ksn", "onReaderTypesChanged", "readerTypes", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "onReadingCard", "onRequestFinalConfirm", "onRequestOnlineAuthorisation", "authorisationData", "onRequestProduceAudioTone", "audioAlertType", "Lcom/stripe/hardware/status/AudioAlertType;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onResetPaymentInterfaces", "onReturnFinalTlvBlob", "tlv", "onReturnTransactionResult", "onSetPinPadButtonsResult", "isSuccess", "onShowThankYou", "onUpdatePinEntryAsteriskCount", "count", "", "resumeExistingPaymentCollection", "Lkotlinx/coroutines/CompletableDeferred;", "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendBatteryLowResult", "sendCancelResult", "sendDeviceMissingEncryptionKeysResult", "sendEmvResult", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "emvBlob", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "sendFailedResult", "sendManualEntryResult", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;", "sendMsrResult", "result", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "collectionAuthority", "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "sendNonCardPaymentMethodActionCompletionResult", "transactionApproved", "sendNonCardPaymentMethodConfirmationResult", "paymentMethodType", "sendPassthroughConfirmationResult", "sendSecondGenACResponse", "Lcom/stripe/paymentcollection/SecondGenACResponse;", "sendTimeoutResult", "setSelectedAccountType", "accountType", "Lcom/stripe/hardware/emv/AccountType;", "setSelectedDynamicCurrencyConversionCurrency", "selected", "setSelectedNonCardPaymentMethod", "startDynamicCurrencyConversionSelection", "startHandleNonCardPaymentMethodResponse", "startHandleOnlineAuthResponse", "startPaymentCollection", "isApplicationSelectionInQuickChipEnabled", "promptPinEntryForServiceCode", "forceMagstripePin", "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateChargeAttempt", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "waitForCardPresent", "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ConnectedReaderContext", "PaymentCollectionContext", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionCoordinator implements PaymentEventReceiver, PaymentCollectionEventDelegate, OnlineAuthStateListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(PaymentCollectionCoordinator.class, "platformDeviceInfo", "getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;", 0))};
    private final CoroutineScope coroutineScope;
    private final EventLoggers eventLoggers;
    private final PaymentCollectionLocaleManager localeManager;
    private final PaymentCollectionLogger logger;
    private PaymentCollectionContext paymentCollectionContext;
    private final PaymentCollectionContext.Factory paymentCollectionContextFactory;
    private final PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository;
    private final PaymentCollector paymentCollector;

    /* JADX INFO: renamed from: platformDeviceInfo$delegate, reason: from kotlin metadata */
    private final DeviceInfoRepository platformDeviceInfo;
    private ConnectedReaderContext readerContext;
    private final SettingsRepository settingsRepository;
    private final TransactionListener transactionListener;
    private final TransactionRepository transactionRepository;

    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<DeviceType> entries$0 = EnumEntriesKt.enumEntries(DeviceType.values());
    }

    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EmvTransactionType.values().length];
            try {
                iArr[EmvTransactionType.QUICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EmvTransactionType.TRADITIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareListenerEvent$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator", f = "PaymentCollectionCoordinator.kt", i = {0, 0}, l = {844}, m = "handleHardwareListenerEvent", n = {"$this$handleHardwareListenerEvent", "hardwareListenerEvent"}, s = {"L$0", "L$1"})
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaymentCollectionCoordinator.this.handleHardwareListenerEvent(null, null, this);
        }
    }

    public PaymentCollectionCoordinator(PaymentCollector paymentCollector, CoroutineScope coroutineScope, SettingsRepository settingsRepository, PaymentCollectionLocaleManager localeManager, EventLoggers eventLoggers, TransactionRepository transactionRepository, PaymentCollectionContext.Factory paymentCollectionContextFactory, DeviceInfoRepository deviceInfoRepository, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, TransactionListener transactionListener, PaymentCollectionLogger logger) {
        Intrinsics.checkNotNullParameter(paymentCollector, "paymentCollector");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(localeManager, "localeManager");
        Intrinsics.checkNotNullParameter(eventLoggers, "eventLoggers");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(paymentCollectionContextFactory, "paymentCollectionContextFactory");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(paymentCollectionFeatureFlagRepository, "paymentCollectionFeatureFlagRepository");
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.paymentCollector = paymentCollector;
        this.coroutineScope = coroutineScope;
        this.settingsRepository = settingsRepository;
        this.localeManager = localeManager;
        this.eventLoggers = eventLoggers;
        this.transactionRepository = transactionRepository;
        this.paymentCollectionContextFactory = paymentCollectionContextFactory;
        this.paymentCollectionFeatureFlagRepository = paymentCollectionFeatureFlagRepository;
        this.transactionListener = transactionListener;
        this.logger = logger;
        this.platformDeviceInfo = deviceInfoRepository;
    }

    private final PlatformDeviceInfo getPlatformDeviceInfo() {
        return this.platformDeviceInfo.getValue(this, $$delegatedProperties[0]);
    }

    public final void initReaderContext(PaymentCollectionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.readerContext = new ConnectedReaderContext(listener);
    }

    public final void clearReaderContext() {
        this.readerContext = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaymentCollectionDeviceCapability getDeviceCapability() {
        return this.transactionRepository.getDevicePaymentCapability();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object collectPaymentMethod(Amount amount, TransactionType transactionType, PaymentCollectionListener paymentCollectionListener, SCARequirement sCARequirement, Amount amount2, boolean z, boolean z2, boolean z3, Amount amount3, boolean z4, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, String str, List<? extends PaymentMethodType> list, boolean z6, boolean z7, Continuation<? super Deferred<? extends PaymentCollectionResult>> continuation) {
        SCARequirement sCARequirement2;
        PaymentCollectionCoordinator paymentCollectionCoordinator;
        Amount amount4;
        PaymentCollectionListener paymentCollectionListener2;
        Amount amount5;
        boolean z8;
        String str2;
        Continuation<? super Deferred<? extends PaymentCollectionResult>> continuation2;
        if (transactionType == TransactionType.STRONG_CUSTOMER_AUTHENTICATION) {
            if (sCARequirement == null) {
                sCARequirement2 = SCARequirement.GENERIC;
                amount4 = amount;
                paymentCollectionListener2 = paymentCollectionListener;
                amount5 = amount2;
                z8 = z5;
                str2 = str;
                continuation2 = continuation;
                paymentCollectionCoordinator = this;
            } else {
                sCARequirement2 = sCARequirement;
                paymentCollectionCoordinator = this;
                amount4 = amount;
                paymentCollectionListener2 = paymentCollectionListener;
                amount5 = amount2;
                z8 = z5;
                str2 = str;
                continuation2 = continuation;
            }
            Object objResumeExistingPaymentCollection = paymentCollectionCoordinator.resumeExistingPaymentCollection(amount4, amount5, paymentCollectionListener2, sCARequirement2, z8, str2, continuation2);
            return objResumeExistingPaymentCollection == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objResumeExistingPaymentCollection : (Deferred) objResumeExistingPaymentCollection;
        }
        Object objStartPaymentCollection = startPaymentCollection(amount, transactionType, paymentCollectionListener, amount2, z, z2, z3, amount3, z4, domesticDebitPriority, this.paymentCollectionFeatureFlagRepository.applicationSelectionInQuickChipEnabled(), this.paymentCollectionFeatureFlagRepository.magStripePinEnabled(), this.settingsRepository.getMagstripeConfig().force_pin_entry, z5, str, list, z6, z7, continuation);
        return objStartPaymentCollection == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objStartPaymentCollection : (Deferred) objStartPaymentCollection;
    }

    static /* synthetic */ TippingState getTippingState$default(PaymentCollectionCoordinator paymentCollectionCoordinator, Amount amount, TransactionType transactionType, boolean z, boolean z2, Amount amount2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        if ((i & 16) != 0) {
            amount2 = null;
        }
        return paymentCollectionCoordinator.getTippingState(amount, transactionType, z, z2, amount2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TippingState getTippingState(Amount amount, TransactionType transactionType, boolean skipTipping, boolean manualEntry, Amount tipEligibleAmount) {
        if (manualEntry) {
            return TippingState.Ineligible.INSTANCE;
        }
        if (tipEligibleAmount != null) {
            this.eventLoggers.getTippingLogger().logTipEligible(this.transactionRepository.getIntegrationType(), tipEligibleAmount.getValue());
        }
        if ((tipEligibleAmount != null && tipEligibleAmount.getValue() == 0) || skipTipping) {
            if (skipTipping) {
                this.eventLoggers.getTippingLogger().logSkipTipping(this.transactionRepository.getIntegrationType());
            }
            return TippingState.Ineligible.INSTANCE;
        }
        if (transactionType != TransactionType.CHARGE) {
            this.logger.i("Not starting the tipping flow because TransactionType is not CHARGE. Current TransactionType: " + transactionType.name(), new Pair[0]);
            return TippingState.Ineligible.INSTANCE;
        }
        if (getLocalizedTippingConfigs(amount) == null) {
            return TippingState.Ineligible.INSTANCE;
        }
        this.logger.i("Starting tipping flow with currency: " + PaymentCollectionCoordinatorKt.getCurrencyCode(amount), new Pair[0]);
        return TippingState.SelectionNeeded.INSTANCE;
    }

    private final TippingConfigPb.LocalizedTippingConfig getLocalizedTippingConfigs(Amount amount) {
        Map<String, TippingConfigPb.LocalizedTippingConfig> map = this.settingsRepository.getTippingConfig().localized_tipping_config;
        if (map.isEmpty()) {
            this.logger.i("Not starting the tipping flow because there is no tipping config", new Pair[0]);
            return null;
        }
        TippingConfigPb.LocalizedTippingConfig localizedTippingConfig = map.get(PaymentCollectionCoordinatorKt.getCurrencyCode(amount));
        if (localizedTippingConfig == null) {
            this.eventLoggers.getTippingLogger().logCurrencyMismatch(CollectionsKt.joinToString$default(map.keySet(), ",", null, null, 0, null, null, 62, null), PaymentCollectionCoordinatorKt.getCurrencyCode(amount), this.transactionRepository.getIntegrationType());
        }
        return localizedTippingConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TipConfigValidationResult getTippingConfig(Amount amount, TippingState tippingState) {
        if (Intrinsics.areEqual(tippingState, TippingState.Ineligible.INSTANCE)) {
            return new InvalidTipConfig(InvalidTipConfig.Reason.NULL_TIP_CONFIG);
        }
        TippingConfigPb.LocalizedTippingConfig localizedTippingConfigs = getLocalizedTippingConfigs(amount);
        if (localizedTippingConfigs == null) {
            return new InvalidTipConfig(InvalidTipConfig.Reason.NULL_TIP_CONFIG);
        }
        return TipConfigValidationResultKt.generateValidatedConfig(localizedTippingConfigs, amount);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$displayCart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$displayCart$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Cart $cart;
        final /* synthetic */ PaymentCollectionListener $paymentCollectionListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03231(PaymentCollectionListener paymentCollectionListener, Cart cart, Continuation<? super C03231> continuation) {
            super(2, continuation);
            this.$paymentCollectionListener = paymentCollectionListener;
            this.$cart = cart;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03231(this.$paymentCollectionListener, this.$cart, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PaymentCollectionStateMachine paymentCollectionStateMachine;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (PaymentCollectionCoordinator.this.paymentCollectionContext == null) {
                    PaymentCollectionCoordinator paymentCollectionCoordinator = PaymentCollectionCoordinator.this;
                    paymentCollectionCoordinator.paymentCollectionContext = paymentCollectionCoordinator.paymentCollectionContextFactory.create(this.$paymentCollectionListener, this.$cart.getBalance(), TransactionType.CHARGE);
                }
                TippingState tippingState$default = PaymentCollectionCoordinator.getTippingState$default(PaymentCollectionCoordinator.this, this.$cart.getBalance(), TransactionType.CHARGE, false, false, null, 28, null);
                TipConfigValidationResult tippingConfig = PaymentCollectionCoordinator.this.getTippingConfig(this.$cart.getBalance(), tippingState$default);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null && (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) != null) {
                    Boxing.boxBoolean(paymentCollectionStateMachine.displayCart(PaymentCollectionCoordinator.this.getEmvTransactionType(), tippingState$default, tippingConfig, this.$cart, PaymentCollectionCoordinator.this.transactionRepository.getIntegrationType(), PaymentCollectionCoordinator.this.getDeviceCapability(), PaymentCollectionCoordinator.this.getDeviceType(), PaymentCollectionCoordinator.this.paymentCollectionFeatureFlagRepository.applicationSelectionInQuickChipEnabled(), PaymentCollectionCoordinator.this.paymentCollectionFeatureFlagRepository.magStripePinEnabled(), PaymentCollectionCoordinator.this.settingsRepository.getMagstripeConfig().force_pin_entry, PaymentCollectionCoordinator.this.paymentCollectionFeatureFlagRepository.predipDisabled()));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Job displayCart(Cart cart, PaymentCollectionListener paymentCollectionListener) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        Intrinsics.checkNotNullParameter(paymentCollectionListener, "paymentCollectionListener");
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03231(paymentCollectionListener, cart, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$cancelPaymentMethodCollection$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$cancelPaymentMethodCollection$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionCoordinator.this.logger.d("cancelPaymentMethodCollection", new Pair[0]);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().onTransactionCanceled(CancelReason.MERCHANT_CANCELLED);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Job cancelPaymentMethodCollection() {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$cancelPaymentMethodCollectionViaCustomer$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$cancelPaymentMethodCollectionViaCustomer$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C03221(Continuation<? super C03221> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03221(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionCoordinator.this.logger.d("cancelPaymentMethodCollectionViaCustomer", new Pair[0]);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().onTransactionCanceled(CancelReason.CUSTOMER_CANCELLED);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Job cancelPaymentMethodCollectionViaCustomer() {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03221(null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$onCollectPaymentMethodApiError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$onCollectPaymentMethodApiError$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C03281(Continuation<? super C03281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03281(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().onCollectPaymentMethodApiError();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Job onCollectPaymentMethodApiError() {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03281(null), 3, null);
    }

    public final Deferred<TransactionResult> handleOnlineAuthResponse(String response) {
        CompletableDeferred<TransactionResult> CompletableDeferred;
        Intrinsics.checkNotNullParameter(response, "response");
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[getEmvTransactionType().ordinal()];
            if (i == 1) {
                CompletableDeferred = CompletableDeferredKt.CompletableDeferred(new TransactionResult(TransactionResult.Result.APPROVED, response));
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                CompletableDeferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                paymentCollectionContext.setSecondGenACResult(CompletableDeferred);
            }
            startHandleOnlineAuthResponse(response);
            if (CompletableDeferred != null) {
                return CompletableDeferred;
            }
        }
        return CompletableDeferredKt.CompletableDeferred(new TransactionResult(TransactionResult.Result.TERMINATED, null));
    }

    public final Deferred<TransactionResult> handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData response) {
        Intrinsics.checkNotNullParameter(response, "response");
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext != null) {
            startHandleNonCardPaymentMethodResponse(response);
            CompletableDeferred<TransactionResult> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            paymentCollectionContext.setNonCardPaymentMethodResult(completableDeferredCompletableDeferred$default);
            if (completableDeferredCompletableDeferred$default != null) {
                return completableDeferredCompletableDeferred$default;
            }
        }
        return CompletableDeferredKt.CompletableDeferred(new TransactionResult(TransactionResult.Result.TERMINATED, null));
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$updateChargeAttempt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$updateChargeAttempt$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03351 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ChargeAttempt $chargeAttempt;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03351(ChargeAttempt chargeAttempt, Continuation<? super C03351> continuation) {
            super(2, continuation);
            this.$chargeAttempt = chargeAttempt;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03351(this.$chargeAttempt, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    ChargeAttempt.CompletedAttempt.UnknownChargeResult unknownChargeResult = this.$chargeAttempt;
                    if (paymentCollectionContext.getPaymentCollectionStateMachine().getState() == PaymentCollectionState.NON_CARD_PAYMENT_METHOD_CONFIRMATION && (unknownChargeResult instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge)) {
                        unknownChargeResult = ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
                    }
                    if (paymentCollectionContext.getPaymentCollectionStateMachine().getState() == PaymentCollectionState.INTERSTITIAL) {
                        return Unit.INSTANCE;
                    }
                    paymentCollectionContext.getPaymentCollectionStateMachine().updateChargeAttempt(unknownChargeResult);
                    if (unknownChargeResult != null) {
                        paymentCollectionContext.getPaymentCollectionListener().onChargeSummary(unknownChargeResult);
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Job updateChargeAttempt(ChargeAttempt chargeAttempt) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03351(chargeAttempt, null), 3, null);
    }

    public final Object selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData, Continuation<? super Deferred<Boolean>> continuation) {
        return startDynamicCurrencyConversionSelection(dynamicCurrencyConversionData, continuation);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$onOnlineAuthStateChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$onOnlineAuthStateChanged$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ OnlineAuthState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03291(OnlineAuthState onlineAuthState, Continuation<? super C03291> continuation) {
            super(2, continuation);
            this.$state = onlineAuthState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03291(this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().onOnlineAuthStateChanged(this.$state);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.paymentcollection.OnlineAuthStateListener
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03291(state, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$startHandleOnlineAuthResponse$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$startHandleOnlineAuthResponse$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03331 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $response;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03331(String str, Continuation<? super C03331> continuation) {
            super(2, continuation);
            this.$response = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03331(this.$response, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03331) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().setOnlineAuthResponse(this.$response);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final Job startHandleOnlineAuthResponse(String response) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03331(response, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$startHandleNonCardPaymentMethodResponse$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$startHandleNonCardPaymentMethodResponse$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ NonCardPaymentMethodData $response;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03321(NonCardPaymentMethodData nonCardPaymentMethodData, Continuation<? super C03321> continuation) {
            super(2, continuation);
            this.$response = nonCardPaymentMethodData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03321(this.$response, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    paymentCollectionContext.getPaymentCollectionStateMachine().setNonCardPaymentMethodData(this.$response);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final Job startHandleNonCardPaymentMethodResponse(NonCardPaymentMethodData response) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03321(response, null), 3, null);
    }

    static /* synthetic */ Object startPaymentCollection$default(PaymentCollectionCoordinator paymentCollectionCoordinator, Amount amount, TransactionType transactionType, PaymentCollectionListener paymentCollectionListener, Amount amount2, boolean z, boolean z2, boolean z3, Amount amount3, boolean z4, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, boolean z6, boolean z7, boolean z8, String str, List list, boolean z9, boolean z10, Continuation continuation, int i, Object obj) {
        return paymentCollectionCoordinator.startPaymentCollection(amount, transactionType, paymentCollectionListener, amount2, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? null : amount3, (i & 256) != 0 ? false : z4, (i & 512) != 0 ? null : domesticDebitPriority, (i & 1024) != 0 ? false : z5, (i & 2048) != 0 ? false : z6, (i & 4096) != 0 ? false : z7, z8, str, list, z9, z10, continuation);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$startPaymentCollection$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$startPaymentCollection$2", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03342 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CompletableDeferred<PaymentCollectionResult>>, Object> {
        final /* synthetic */ Amount $amount;
        final /* synthetic */ ReaderConfiguration.DomesticDebitPriority $domesticDebitPriority;
        final /* synthetic */ boolean $enableCustomerCancellation;
        final /* synthetic */ boolean $forceMagstripePin;
        final /* synthetic */ boolean $forcePinEntry;
        final /* synthetic */ boolean $isApplicationSelectionInQuickChipEnabled;
        final /* synthetic */ boolean $isDeferredAuthorizationCountry;
        final /* synthetic */ boolean $isOffline;
        final /* synthetic */ boolean $manualEntry;
        final /* synthetic */ List<PaymentMethodType> $nonCardPaymentMethodTypes;
        final /* synthetic */ PaymentCollectionListener $paymentCollectionListener;
        final /* synthetic */ boolean $promptPinEntryForServiceCode;
        final /* synthetic */ boolean $requestIncrementalAuthorizationSupport;
        final /* synthetic */ boolean $skipTipping;
        final /* synthetic */ String $surchargeNotice;
        final /* synthetic */ Amount $tipEligibleAmount;
        final /* synthetic */ Amount $tippingAmount;
        final /* synthetic */ TransactionType $transactionType;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C03342(Amount amount, TransactionType transactionType, boolean z, boolean z2, Amount amount2, PaymentCollectionListener paymentCollectionListener, Amount amount3, boolean z3, boolean z4, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, boolean z6, boolean z7, boolean z8, String str, List<? extends PaymentMethodType> list, boolean z9, boolean z10, Continuation<? super C03342> continuation) {
            super(2, continuation);
            this.$amount = amount;
            this.$transactionType = transactionType;
            this.$skipTipping = z;
            this.$manualEntry = z2;
            this.$tipEligibleAmount = amount2;
            this.$paymentCollectionListener = paymentCollectionListener;
            this.$tippingAmount = amount3;
            this.$isOffline = z3;
            this.$isDeferredAuthorizationCountry = z4;
            this.$domesticDebitPriority = domesticDebitPriority;
            this.$isApplicationSelectionInQuickChipEnabled = z5;
            this.$promptPinEntryForServiceCode = z6;
            this.$forceMagstripePin = z7;
            this.$enableCustomerCancellation = z8;
            this.$surchargeNotice = str;
            this.$nonCardPaymentMethodTypes = list;
            this.$requestIncrementalAuthorizationSupport = z9;
            this.$forcePinEntry = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03342(this.$amount, this.$transactionType, this.$skipTipping, this.$manualEntry, this.$tipEligibleAmount, this.$paymentCollectionListener, this.$tippingAmount, this.$isOffline, this.$isDeferredAuthorizationCountry, this.$domesticDebitPriority, this.$isApplicationSelectionInQuickChipEnabled, this.$promptPinEntryForServiceCode, this.$forceMagstripePin, this.$enableCustomerCancellation, this.$surchargeNotice, this.$nonCardPaymentMethodTypes, this.$requestIncrementalAuthorizationSupport, this.$forcePinEntry, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CompletableDeferred<PaymentCollectionResult>> continuation) {
            return ((C03342) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PaymentCollectionStateMachine paymentCollectionStateMachine;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                TippingState tippingState = PaymentCollectionCoordinator.this.getTippingState(this.$amount, this.$transactionType, this.$skipTipping, this.$manualEntry, this.$tipEligibleAmount);
                TipConfigValidationResult tippingConfig = PaymentCollectionCoordinator.this.getTippingConfig(this.$amount, tippingState);
                DeviceType deviceType = PaymentCollectionCoordinator.this.getDeviceType();
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null || !paymentCollectionStateMachine.canStartCollection()) {
                    PaymentCollectionCoordinator.this.cancelCurrentTransaction();
                    PaymentCollectionCoordinator paymentCollectionCoordinator = PaymentCollectionCoordinator.this;
                    paymentCollectionCoordinator.paymentCollectionContext = paymentCollectionCoordinator.paymentCollectionContextFactory.create(this.$paymentCollectionListener, this.$amount, this.$transactionType);
                }
                PaymentCollectionContext paymentCollectionContext2 = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext2 != null) {
                    TransactionType transactionType = this.$transactionType;
                    Amount amount = this.$amount;
                    PaymentCollectionCoordinator paymentCollectionCoordinator2 = PaymentCollectionCoordinator.this;
                    Amount amount2 = this.$tippingAmount;
                    boolean z = this.$manualEntry;
                    boolean z2 = this.$isOffline;
                    Amount amount3 = this.$tipEligibleAmount;
                    boolean z3 = this.$isDeferredAuthorizationCountry;
                    ReaderConfiguration.DomesticDebitPriority domesticDebitPriority = this.$domesticDebitPriority;
                    boolean z4 = this.$isApplicationSelectionInQuickChipEnabled;
                    boolean z5 = this.$promptPinEntryForServiceCode;
                    boolean z6 = this.$forceMagstripePin;
                    boolean z7 = this.$enableCustomerCancellation;
                    String str = this.$surchargeNotice;
                    List<PaymentMethodType> list = this.$nonCardPaymentMethodTypes;
                    boolean z8 = this.$requestIncrementalAuthorizationSupport;
                    paymentCollectionContext2.getPaymentCollectionStateMachine().collectPayment(transactionType, amount, paymentCollectionCoordinator2.getEmvTransactionType(), tippingState, tippingConfig, amount2, paymentCollectionCoordinator2.transactionRepository.getIntegrationType(), z, paymentCollectionCoordinator2.getDeviceCapability(), deviceType, z2, amount3, z3, domesticDebitPriority, z4, z5, z6, paymentCollectionCoordinator2.transactionRepository.getDomesticDebitAids(), z7, str, list, paymentCollectionCoordinator2.paymentCollectionFeatureFlagRepository.predipDisabled(), z8 && paymentCollectionCoordinator2.paymentCollectionFeatureFlagRepository.newIncrementalAuthUiEnabled(), this.$forcePinEntry);
                }
                PaymentCollectionContext paymentCollectionContext3 = PaymentCollectionCoordinator.this.paymentCollectionContext;
                Intrinsics.checkNotNull(paymentCollectionContext3);
                return paymentCollectionContext3.getCollectionResult();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object startPaymentCollection(Amount amount, TransactionType transactionType, PaymentCollectionListener paymentCollectionListener, Amount amount2, boolean z, boolean z2, boolean z3, Amount amount3, boolean z4, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, boolean z6, boolean z7, boolean z8, String str, List<? extends PaymentMethodType> list, boolean z9, boolean z10, Continuation<? super CompletableDeferred<PaymentCollectionResult>> continuation) {
        return BuildersKt.withContext(this.coroutineScope.getCoroutineContext(), new C03342(amount, transactionType, z, z2, amount3, paymentCollectionListener, amount2, z3, z4, domesticDebitPriority, z5, z6, z7, z8, str, list, z9, z10, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelCurrentTransaction() {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null) {
            return;
        }
        paymentCollectionStateMachine.cancel();
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$resumeExistingPaymentCollection$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$resumeExistingPaymentCollection$2", f = "PaymentCollectionCoordinator.kt", i = {}, l = {504}, m = "invokeSuspend", n = {}, s = {})
    static final class C03302 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CompletableDeferred<PaymentCollectionResult>>, Object> {
        final /* synthetic */ Amount $amount;
        final /* synthetic */ boolean $enableCustomerCancellation;
        final /* synthetic */ PaymentCollectionListener $paymentCollectionListener;
        final /* synthetic */ SCARequirement $scaRequirement;
        final /* synthetic */ String $surchargeNotice;
        final /* synthetic */ Amount $tippingAmount;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03302(Amount amount, PaymentCollectionListener paymentCollectionListener, Amount amount2, boolean z, String str, SCARequirement sCARequirement, Continuation<? super C03302> continuation) {
            super(2, continuation);
            this.$amount = amount;
            this.$paymentCollectionListener = paymentCollectionListener;
            this.$tippingAmount = amount2;
            this.$enableCustomerCancellation = z;
            this.$surchargeNotice = str;
            this.$scaRequirement = sCARequirement;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03302(this.$amount, this.$paymentCollectionListener, this.$tippingAmount, this.$enableCustomerCancellation, this.$surchargeNotice, this.$scaRequirement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CompletableDeferred<PaymentCollectionResult>> continuation) {
            return ((C03302) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objStartPaymentCollection$default;
            PaymentCollectionStateMachine paymentCollectionStateMachine;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null && (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) != null && paymentCollectionStateMachine.canResumeCollectionForSca()) {
                    PaymentCollectionCoordinator paymentCollectionCoordinator = PaymentCollectionCoordinator.this;
                    PaymentCollectionContext paymentCollectionContext2 = paymentCollectionCoordinator.paymentCollectionContext;
                    paymentCollectionCoordinator.paymentCollectionContext = paymentCollectionContext2 != null ? PaymentCollectionContext.copy$default(paymentCollectionContext2, null, null, null, null, 15, null) : null;
                    PaymentCollectionContext paymentCollectionContext3 = PaymentCollectionCoordinator.this.paymentCollectionContext;
                    if (paymentCollectionContext3 != null) {
                        paymentCollectionContext3.getPaymentCollectionStateMachine().resumePaymentForSCA(this.$scaRequirement);
                    }
                    PaymentCollectionContext paymentCollectionContext4 = PaymentCollectionCoordinator.this.paymentCollectionContext;
                    Intrinsics.checkNotNull(paymentCollectionContext4);
                    return paymentCollectionContext4.getCollectionResult();
                }
                this.label = 1;
                objStartPaymentCollection$default = PaymentCollectionCoordinator.startPaymentCollection$default(PaymentCollectionCoordinator.this, this.$amount, TransactionType.STRONG_CUSTOMER_AUTHENTICATION, this.$paymentCollectionListener, this.$tippingAmount, false, false, false, null, false, null, false, false, false, this.$enableCustomerCancellation, this.$surchargeNotice, CollectionsKt.emptyList(), false, false, this, 8176, null);
                if (objStartPaymentCollection$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objStartPaymentCollection$default = obj;
            }
            return (CompletableDeferred) objStartPaymentCollection$default;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object resumeExistingPaymentCollection(Amount amount, Amount amount2, PaymentCollectionListener paymentCollectionListener, SCARequirement sCARequirement, boolean z, String str, Continuation<? super CompletableDeferred<PaymentCollectionResult>> continuation) {
        return BuildersKt.withContext(this.coroutineScope.getCoroutineContext(), new C03302(amount, paymentCollectionListener, amount2, z, str, sCARequirement, null), continuation);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$startDynamicCurrencyConversionSelection$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CompletableDeferred;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$startDynamicCurrencyConversionSelection$2", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03312 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CompletableDeferred<Boolean>>, Object> {
        final /* synthetic */ DynamicCurrencyConversionData $dynamicCurrencyConversionData;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03312(DynamicCurrencyConversionData dynamicCurrencyConversionData, Continuation<? super C03312> continuation) {
            super(2, continuation);
            this.$dynamicCurrencyConversionData = dynamicCurrencyConversionData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03312(this.$dynamicCurrencyConversionData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CompletableDeferred<Boolean>> continuation) {
            return ((C03312) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext == null) {
                    return null;
                }
                DynamicCurrencyConversionData dynamicCurrencyConversionData = this.$dynamicCurrencyConversionData;
                paymentCollectionContext.setDccSelectionResult(CompletableDeferredKt.CompletableDeferred$default(null, 1, null));
                paymentCollectionContext.getPaymentCollectionStateMachine().startDynamicCurrencyConversionSelection(dynamicCurrencyConversionData);
                return paymentCollectionContext.getDccSelectionResult();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object startDynamicCurrencyConversionSelection(DynamicCurrencyConversionData dynamicCurrencyConversionData, Continuation<? super CompletableDeferred<Boolean>> continuation) {
        return BuildersKt.withContext(this.coroutineScope.getCoroutineContext(), new C03312(dynamicCurrencyConversionData, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EmvTransactionType getEmvTransactionType() {
        return this.settingsRepository.getSettings().getEmvTransactionType();
    }

    @VisibleForTesting
    public final DeviceType getDeviceType() {
        DeviceType next;
        Iterator<DeviceType> it = EntriesMappings.entries$0.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(new MainlandDeviceType(next.getDeviceName()), getPlatformDeviceInfo().getMainlandDeviceType())) {
                break;
            }
        }
        DeviceType deviceType = next;
        if (deviceType != null) {
            return deviceType;
        }
        this.logger.w("Failed to retrieve device type.");
        return DeviceType.UNKNOWN;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionEventDelegate
    public void onHandlePaymentCollectionEvent(PaymentCollectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.logger.i("onHandlePaymentCollectionEvent", TuplesKt.to(NotificationCompat.CATEGORY_EVENT, event));
        if (event instanceof UserInteractionEvent) {
            handleUserInteractionEvent((UserInteractionEvent) event);
            return;
        }
        if (event instanceof HardwareEvent) {
            handleHardwareEvent((HardwareEvent) event);
            return;
        }
        if (event instanceof AutomationEvent) {
            handleAutomationEvent((AutomationEvent) event);
        } else if (event instanceof HardwareListenerEvent) {
            handleHardwareListenerEvent((HardwareListenerEvent) event);
        } else if (event instanceof NetworkEvent) {
            handleNetworkEvent((NetworkEvent) event);
        }
    }

    private final void handleNetworkEvent(NetworkEvent event) {
        if (event instanceof OnlineAuthorizationRequestEvent) {
            OnlineAuthorizationRequestEvent onlineAuthorizationRequestEvent = (OnlineAuthorizationRequestEvent) event;
            sendEmvResult(onlineAuthorizationRequestEvent.getInterfaceType(), onlineAuthorizationRequestEvent.getTlv(), onlineAuthorizationRequestEvent.getTipResult());
            return;
        }
        if (event instanceof MagStripeAuthorizationRequestEvent) {
            MagStripeAuthorizationRequestEvent magStripeAuthorizationRequestEvent = (MagStripeAuthorizationRequestEvent) event;
            sendMsrResult(magStripeAuthorizationRequestEvent.getReadResult(), magStripeAuthorizationRequestEvent.getCollectionAuthority(), magStripeAuthorizationRequestEvent.getTipResult());
            return;
        }
        if (event instanceof SecondGenACResponseEvent) {
            sendSecondGenACResponse(((SecondGenACResponseEvent) event).getResponse());
            return;
        }
        if (event instanceof ManualEntryAuthorizationRequestEvent) {
            ManualEntryAuthorizationRequestEvent manualEntryAuthorizationRequestEvent = (ManualEntryAuthorizationRequestEvent) event;
            sendManualEntryResult(manualEntryAuthorizationRequestEvent.getData(), manualEntryAuthorizationRequestEvent.getTipResult());
        } else if (event instanceof NonCardPaymentMethodConfirmationRequestEvent) {
            NonCardPaymentMethodConfirmationRequestEvent nonCardPaymentMethodConfirmationRequestEvent = (NonCardPaymentMethodConfirmationRequestEvent) event;
            sendNonCardPaymentMethodConfirmationResult(nonCardPaymentMethodConfirmationRequestEvent.getPaymentMethodType(), nonCardPaymentMethodConfirmationRequestEvent.getTipResult());
        } else if (event instanceof NonCardPaymentMethodActionCompletionEvent) {
            sendNonCardPaymentMethodActionCompletionResult(((NonCardPaymentMethodActionCompletionEvent) event).getTransactionApproved());
        } else if (event instanceof PassthroughConfirmationRequestEvent) {
            sendPassthroughConfirmationResult(((PassthroughConfirmationRequestEvent) event).getReadResult());
        }
    }

    private final void sendManualEntryResult(ManualEntryResultModel data, TippingState.EndState tipResult) {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(new ManualEntryResult(data, tipResult));
    }

    private final void sendSecondGenACResponse(SecondGenACResponse response) {
        CompletableDeferred<TransactionResult> secondGenACResult;
        TransactionResult.Result result;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (secondGenACResult = paymentCollectionContext.getSecondGenACResult()) == null) {
            return;
        }
        if (response instanceof EmvSecondGenACResponse) {
            EmvSecondGenACResponse emvSecondGenACResponse = (EmvSecondGenACResponse) response;
            if (emvSecondGenACResponse.isApproved()) {
                result = TransactionResult.Result.APPROVED;
            } else {
                result = TransactionResult.Result.DECLINED;
            }
            secondGenACResult.complete(new TransactionResult(result, emvSecondGenACResponse.getTlv()));
            return;
        }
        if (!(response instanceof MagStripeSecondGenACResponse)) {
            throw new NoWhenBranchMatchedException();
        }
        secondGenACResult.complete(new TransactionResult(TransactionResult.Result.APPROVED, null));
    }

    private final void sendEmvResult(InterfaceType interfaceType, String emvBlob, TippingState.EndState tipResult) {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(new EmvResult(emvBlob, interfaceType, tipResult));
    }

    private final void sendMsrResult(MagStripeReadSuccess result, MagStripePaymentCollectionAuthority collectionAuthority, TippingState.EndState tipResult) {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(new MsrResult(result, collectionAuthority, tipResult));
    }

    private final void sendNonCardPaymentMethodConfirmationResult(PaymentMethodType paymentMethodType, TippingState.EndState tipResult) {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(new NonCardPaymentMethodConfirmationResult(paymentMethodType, tipResult));
    }

    private final void sendNonCardPaymentMethodActionCompletionResult(boolean transactionApproved) {
        CompletableDeferred<TransactionResult> nonCardPaymentMethodResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (nonCardPaymentMethodResult = paymentCollectionContext.getNonCardPaymentMethodResult()) == null) {
            return;
        }
        nonCardPaymentMethodResult.complete(new TransactionResult(transactionApproved ? TransactionResult.Result.APPROVED : TransactionResult.Result.DECLINED, null));
    }

    private final void sendPassthroughConfirmationResult(MagStripeReadSuccess result) {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(new PassthroughResult(result));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendCancelResult() {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(Cancelled.INSTANCE);
    }

    private final void sendBatteryLowResult() {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(BatteryCriticallyLow.INSTANCE);
    }

    private final void sendDeviceMissingEncryptionKeysResult() {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(DeviceMissingEncryptionKey.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendTimeoutResult() {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(Timeout.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendFailedResult() {
        CompletableDeferred<PaymentCollectionResult> collectionResult;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (collectionResult = paymentCollectionContext.getCollectionResult()) == null) {
            return;
        }
        collectionResult.complete(Failed.INSTANCE);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleAutomationEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleAutomationEvent$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AutomationEvent $automationEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03241(AutomationEvent automationEvent, Continuation<? super C03241> continuation) {
            super(2, continuation);
            this.$automationEvent = automationEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03241(this.$automationEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    AutomationEvent automationEvent = this.$automationEvent;
                    PaymentCollectionCoordinator paymentCollectionCoordinator = PaymentCollectionCoordinator.this;
                    if (automationEvent instanceof AutoSelectApplicationEvent) {
                        paymentCollectionContext.getPaymentCollectionStateMachine().setSelectedApplicationIndex(((AutoSelectApplicationEvent) automationEvent).getIndex());
                    } else if (automationEvent instanceof AutoSelectLanguageEvent) {
                        List<String> options = ((AutoSelectLanguageEvent) automationEvent).getOptions();
                        String firstSupportedISO6391Code = paymentCollectionCoordinator.localeManager.getFirstSupportedISO6391Code(options);
                        PaymentCollectionStateMachine paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine();
                        if (firstSupportedISO6391Code == null) {
                            firstSupportedISO6391Code = (String) CollectionsKt.firstOrNull((List) options);
                        }
                        paymentCollectionStateMachine.setSelectedLanguage(firstSupportedISO6391Code);
                    } else if (automationEvent instanceof ClearMagStripeStateEvent) {
                        paymentCollectionContext.getPaymentCollectionStateMachine().clearMagStripeReadState();
                    } else if (automationEvent instanceof AcknowledgeInterfaceResetEvent) {
                        paymentCollectionContext.getPaymentCollectionStateMachine().setInterfaceResetRequired(false);
                    } else if (automationEvent instanceof ManualEntryCollectionResultEvent) {
                        paymentCollectionContext.getPaymentCollectionStateMachine().setManualEntryCollectionResult(((ManualEntryCollectionResultEvent) automationEvent).getResult());
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final Job handleAutomationEvent(AutomationEvent automationEvent) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03241(automationEvent, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareEvent$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {WinError.ERROR_SERVICE_NOTIFICATION, WinError.ERROR_RESOURCE_REQUIREMENTS_CHANGED}, m = "invokeSuspend", n = {}, s = {})
    static final class C03251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ HardwareEvent $hardwareEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03251(HardwareEvent hardwareEvent, Continuation<? super C03251> continuation) {
            super(2, continuation);
            this.$hardwareEvent = hardwareEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03251(this.$hardwareEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
        
            if (r7.startReader(r1, r6) == r0) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0106, code lost:
        
            if (r7.stopReader(r1, r6) == r0) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0108, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instruction units count: 283
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.paymentcollection.PaymentCollectionCoordinator.C03251.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Job handleHardwareEvent(HardwareEvent hardwareEvent) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03251(hardwareEvent, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareListenerEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareListenerEvent$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {WinError.ERROR_COMPRESSION_DISABLED}, m = "invokeSuspend", n = {}, s = {})
    static final class C03261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ HardwareListenerEvent $hardwareListenerEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03261(HardwareListenerEvent hardwareListenerEvent, Continuation<? super C03261> continuation) {
            super(2, continuation);
            this.$hardwareListenerEvent = hardwareListenerEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03261(this.$hardwareListenerEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    this.label = 1;
                    if (PaymentCollectionCoordinator.this.handleHardwareListenerEvent(paymentCollectionContext, this.$hardwareListenerEvent, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    ConnectedReaderContext connectedReaderContext = PaymentCollectionCoordinator.this.readerContext;
                    if (connectedReaderContext != null) {
                        PaymentCollectionCoordinator.this.handleHardwareListenerEvent(connectedReaderContext, this.$hardwareListenerEvent);
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final Job handleHardwareListenerEvent(HardwareListenerEvent hardwareListenerEvent) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03261(hardwareListenerEvent, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleHardwareListenerEvent(com.stripe.paymentcollection.PaymentCollectionCoordinator.PaymentCollectionContext r6, com.stripe.paymentcollection.HardwareListenerEvent r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.paymentcollection.PaymentCollectionCoordinator.handleHardwareListenerEvent(com.stripe.paymentcollection.PaymentCollectionCoordinator$PaymentCollectionContext, com.stripe.paymentcollection.HardwareListenerEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareListenerEvent$3, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<List<? extends String>, String> {
        AnonymousClass3(Object obj) {
            super(1, obj, PaymentCollectionLocaleManager.class, "getFirstSupportedISO6391Code", "getFirstSupportedISO6391Code(Ljava/util/List;)Ljava/lang/String;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ String invoke(List<? extends String> list) {
            return invoke2((List<String>) list);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final String invoke2(List<String> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ((PaymentCollectionLocaleManager) this.receiver).getFirstSupportedISO6391Code(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleHardwareListenerEvent(ConnectedReaderContext connectedReaderContext, HardwareListenerEvent hardwareListenerEvent) {
        if (hardwareListenerEvent instanceof ContactCardUpdateEvent) {
            connectedReaderContext.getListener().onCardStateUpdate(((ContactCardUpdateEvent) hardwareListenerEvent).getUpdatedCardState());
        }
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1", f = "PaymentCollectionCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ UserInteractionEvent $userInteractionEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03271(UserInteractionEvent userInteractionEvent, Continuation<? super C03271> continuation) {
            super(2, continuation);
            this.$userInteractionEvent = userInteractionEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentCollectionCoordinator.this.new C03271(this.$userInteractionEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaymentCollectionCoordinator.this.logger.d("handleUserInteractionEvent " + this.$userInteractionEvent, new Pair[0]);
                final PaymentCollectionContext paymentCollectionContext = PaymentCollectionCoordinator.this.paymentCollectionContext;
                if (paymentCollectionContext != null) {
                    UserInteractionEvent userInteractionEvent = this.$userInteractionEvent;
                    final PaymentCollectionCoordinator paymentCollectionCoordinator = PaymentCollectionCoordinator.this;
                    if (userInteractionEvent instanceof TippingSelectionEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestTippingSelection(((TippingSelectionEvent) userInteractionEvent).getModel(), new Function1<Disposition<TippingSelectionResult>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<TippingSelectionResult> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<TippingSelectionResult> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionContext.getPaymentCollectionStateMachine().setTippingSelectionResult((TippingSelectionResult) ((Disposition.Completed) it).getResult());
                                } else if (it instanceof Disposition.Canceled) {
                                    if (((Disposition.Canceled) it).getReason() != Disposition.Canceled.Reason.RESET) {
                                        paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                    } else {
                                        paymentCollectionContext.getPaymentCollectionStateMachine().resetTipSelection();
                                    }
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof ManualEntryEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestManualEntry(((ManualEntryEvent) userInteractionEvent).getModel(), new Function1<Disposition<com.stripe.hardware.paymentcollection.ManualEntryResult>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<com.stripe.hardware.paymentcollection.ManualEntryResult> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<com.stripe.hardware.paymentcollection.ManualEntryResult> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionContext.getPaymentCollectionStateMachine().setManualEntryResult((com.stripe.hardware.paymentcollection.ManualEntryResult) ((Disposition.Completed) it).getResult());
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentPaymentMethodEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestPaymentMethodCollection(((PresentPaymentMethodEvent) userInteractionEvent).getModel(), new Function1<Disposition<PaymentMethodCollectionResult>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$3
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<PaymentMethodCollectionResult> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<PaymentMethodCollectionResult> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    if (((PaymentMethodCollectionResult) ((Disposition.Completed) it).getResult()) instanceof DisplayNonCardPaymentMethodsResult) {
                                        paymentCollectionCoordinator.displayNonCardPaymentMethods();
                                    }
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof DisplayRecoverableErrorEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestDisplayRecoverableError(((DisplayRecoverableErrorEvent) userInteractionEvent).getModel(), new Function1<Disposition<Unit>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<Unit> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<Unit> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionContext.getPaymentCollectionStateMachine().setUserRetryRequested();
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentRemoveCardEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestCardRemoval(((PresentRemoveCardEvent) userInteractionEvent).getModel());
                    } else if (userInteractionEvent instanceof CollectionCompleteEvent) {
                        paymentCollectionCoordinator.handleCollectionCompletion((CollectionCompleteEvent) userInteractionEvent);
                    } else if (userInteractionEvent instanceof PresentApplicationSelectionEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestApplicationSelection(((PresentApplicationSelectionEvent) userInteractionEvent).getModel(), new Function1<Disposition<Integer>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<Integer> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<Integer> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionContext.getPaymentCollectionStateMachine().setSelectedApplicationIndex(((Number) ((Disposition.Completed) it).getResult()).intValue());
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentAccountTypeSelectionEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestAccountTypeSelection(((PresentAccountTypeSelectionEvent) userInteractionEvent).getModel(), new Function1<Disposition<AccountType>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$6
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<AccountType> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<AccountType> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionCoordinator.setSelectedAccountType((AccountType) ((Disposition.Completed) it).getResult());
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentPinEntryEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestPinEntry(((PresentPinEntryEvent) userInteractionEvent).getModel(), new Function1<Disposition<Unit>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$7
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<Unit> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<Unit> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if ((it instanceof Disposition.Completed) || !(it instanceof Disposition.Canceled)) {
                                    return;
                                }
                                paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentProcessingEvent) {
                        PresentProcessingEvent presentProcessingEvent = (PresentProcessingEvent) userInteractionEvent;
                        paymentCollectionContext.getPaymentCollectionListener().onProcessing(presentProcessingEvent.getTransactionType(), presentProcessingEvent.getLanguage(), presentProcessingEvent.getAmount());
                    } else if (userInteractionEvent instanceof CardStateUpdateEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onCardStateUpdate(((CardStateUpdateEvent) userInteractionEvent).getCardState());
                    } else if (userInteractionEvent instanceof CollectionCancelledEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onCancelled();
                        paymentCollectionCoordinator.sendCancelResult();
                    } else if (userInteractionEvent instanceof DisplayCartEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestDisplayCart(((DisplayCartEvent) userInteractionEvent).getModel());
                    } else if (userInteractionEvent instanceof TimeoutEvent) {
                        paymentCollectionCoordinator.sendTimeoutResult();
                    } else if (userInteractionEvent instanceof CollectPaymentMethodApiErrorEvent) {
                        paymentCollectionCoordinator.sendFailedResult();
                    } else if (userInteractionEvent instanceof PresentDynamicCurrencyConversionSelectionEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestDynamicCurrencySelection(((PresentDynamicCurrencyConversionSelectionEvent) userInteractionEvent).getModel(), new Function1<Disposition<Boolean>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$8
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<Boolean> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<Boolean> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionCoordinator.setSelectedDynamicCurrencyConversionCurrency(((Boolean) ((Disposition.Completed) it).getResult()).booleanValue());
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentNonCardPaymentMethodsSelectionEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestDisplayNonCardPaymentMethodsSelection(((PresentNonCardPaymentMethodsSelectionEvent) userInteractionEvent).getModel(), new Function1<Disposition<PaymentMethodType>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$9
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<PaymentMethodType> disposition) {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<PaymentMethodType> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Completed) {
                                    paymentCollectionCoordinator.setSelectedNonCardPaymentMethod((PaymentMethodType) ((Disposition.Completed) it).getResult());
                                } else if (it instanceof Disposition.Canceled) {
                                    paymentCollectionContext.getPaymentCollectionStateMachine().returnToCardPaymentMethodCollection();
                                }
                            }
                        });
                    } else if (userInteractionEvent instanceof SelectNonCardPaymentMethodEvent) {
                        paymentCollectionCoordinator.setSelectedNonCardPaymentMethod(((SelectNonCardPaymentMethodEvent) userInteractionEvent).getPaymentMethodType());
                    } else if (userInteractionEvent instanceof PresentNonCardPaymentMethodActionRequiredEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onRequestDisplayNonCardPaymentMethodActionRequired(((PresentNonCardPaymentMethodActionRequiredEvent) userInteractionEvent).getModel(), new Function1<Disposition<Unit>, Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Disposition<Unit> disposition) throws TerminalException {
                                invoke2(disposition);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Disposition<Unit> it) throws TerminalException {
                                CompletableDeferred<TransactionResult> nonCardPaymentMethodResult;
                                Intrinsics.checkNotNullParameter(it, "it");
                                if (it instanceof Disposition.Canceled) {
                                    PaymentCollectionCoordinator.PaymentCollectionContext paymentCollectionContext2 = paymentCollectionCoordinator.paymentCollectionContext;
                                    if (paymentCollectionContext2 != null && (nonCardPaymentMethodResult = paymentCollectionContext2.getNonCardPaymentMethodResult()) != null) {
                                        nonCardPaymentMethodResult.complete(new TransactionResult(TransactionResult.Result.CANCELED, null));
                                    }
                                    paymentCollectionCoordinator.cancelPaymentMethodCollectionViaCustomer();
                                    return;
                                }
                                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected event for NonCardPaymentMethodActionRequired state.", null, null, 12, null);
                            }
                        });
                    } else if (userInteractionEvent instanceof PresentInterstitialEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onInterstitial(((PresentInterstitialEvent) userInteractionEvent).getLanguage());
                    } else if (userInteractionEvent instanceof PresentNonCardPaymentMethodLoadingEvent) {
                        paymentCollectionContext.getPaymentCollectionListener().onNonCardPaymentMethodLoading(((PresentNonCardPaymentMethodLoadingEvent) userInteractionEvent).getPaymentMethodType());
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final Job handleUserInteractionEvent(UserInteractionEvent userInteractionEvent) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C03271(userInteractionEvent, null), 3, null);
    }

    @VisibleForTesting
    public final void setSelectedAccountType(AccountType accountType) {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        Intrinsics.checkNotNullParameter(accountType, "accountType");
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null) {
            return;
        }
        paymentCollectionStateMachine.setSelectedAccountType(accountType);
    }

    @VisibleForTesting
    public final void setSelectedDynamicCurrencyConversionCurrency(boolean selected) {
        CompletableDeferred<Boolean> dccSelectionResult;
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext != null && (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) != null) {
            paymentCollectionStateMachine.setDynamicCurrencyConversionSelected(selected);
        }
        PaymentCollectionContext paymentCollectionContext2 = this.paymentCollectionContext;
        if (paymentCollectionContext2 == null || (dccSelectionResult = paymentCollectionContext2.getDccSelectionResult()) == null) {
            return;
        }
        dccSelectionResult.complete(Boolean.valueOf(selected));
    }

    @VisibleForTesting
    public final void setSelectedNonCardPaymentMethod(PaymentMethodType selected) {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        Intrinsics.checkNotNullParameter(selected, "selected");
        this.transactionRepository.setNonCardPaymentMethodType(selected);
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null) {
            return;
        }
        paymentCollectionStateMachine.setNonCardPaymentMethodSelected(selected);
    }

    @VisibleForTesting
    public final void displayNonCardPaymentMethods() {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null) {
            return;
        }
        paymentCollectionStateMachine.displayNonCardPaymentMethods();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleCollectionCompletion(CollectionCompleteEvent event) {
        this.logger.d("handleCollectionCompletion", TuplesKt.to(NotificationCompat.CATEGORY_EVENT, event));
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext != null) {
            PaymentCollectionState state = paymentCollectionContext.getPaymentCollectionStateMachine().getState();
            if (paymentCollectionContext.getPaymentCollectionStateMachine().isFinished() || state == PaymentCollectionState.INTERSTITIAL) {
                paymentCollectionContext.getPaymentCollectionListener().onCollectionComplete(event.getModel());
                CompletableDeferred<Boolean> dccSelectionResult = paymentCollectionContext.getDccSelectionResult();
                if (dccSelectionResult != null && dccSelectionResult.isActive()) {
                    dccSelectionResult.completeExceptionally(new TerminalException(TerminalErrorCode.CANCELED, "Transaction cancelled", null, null, 12, null));
                }
                CompletableDeferred<PaymentCollectionResult> collectionResult = paymentCollectionContext.getCollectionResult();
                if (collectionResult.isActive()) {
                    collectionResult.complete(Failed.INSTANCE);
                }
                CompletableDeferred<TransactionResult> secondGenACResult = paymentCollectionContext.getSecondGenACResult();
                if (secondGenACResult != null && secondGenACResult.isActive()) {
                    secondGenACResult.complete(new TransactionResult(TransactionResult.Result.TERMINATED, null));
                }
                if (state == PaymentCollectionState.INTERSTITIAL) {
                    paymentCollectionContext.setNonCardPaymentMethodResult(null);
                } else {
                    this.paymentCollectionContext = null;
                }
            }
        }
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onResetPaymentInterfaces() {
        onHandlePaymentCollectionEvent(ResetPaymentInterfacesEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onChipCardInitializationFailed() {
        onHandlePaymentCollectionEvent(ChipCardInitializationFailed.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onCardSwiped(MagStripeReadResult readResult) {
        Intrinsics.checkNotNullParameter(readResult, "readResult");
        onHandlePaymentCollectionEvent(new MagStripeReadEvent(readResult));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onContactCardStateUpdate(ContactCardSlotState slotState) {
        Intrinsics.checkNotNullParameter(slotState, "slotState");
        onHandlePaymentCollectionEvent(new ContactCardUpdateEvent(slotState));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onEmptyCandidateList() {
        onHandlePaymentCollectionEvent(EmptyCandidateListEncounteredEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onRequestSelectApplication(List<String> appList) {
        Intrinsics.checkNotNullParameter(appList, "appList");
        onHandlePaymentCollectionEvent(new RequestSelectApplicationEvent(appList));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onRequestSelectAccountType() {
        onHandlePaymentCollectionEvent(RequestSelectAccountEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onPinEntryStatusChange(PinEntryStatus pinEntryStatus, String epb, String ksn) {
        Intrinsics.checkNotNullParameter(pinEntryStatus, "pinEntryStatus");
        this.logger.i("onPinEntryStatusChange " + pinEntryStatus, new Pair[0]);
        onHandlePaymentCollectionEvent(new PinEntryStatusChangeEvent(pinEntryStatus, epb, ksn));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onUpdatePinEntryAsteriskCount(int count) {
        onHandlePaymentCollectionEvent(new SetPinEntryAsteriskCountEvent(count));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onAccessiblePinPadEvent(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent) {
        Intrinsics.checkNotNullParameter(accessiblePinPadTouchEvent, "accessiblePinPadTouchEvent");
        onHandlePaymentCollectionEvent(new OnAccessiblePinPadEvent(accessiblePinPadTouchEvent));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onRequestFinalConfirm() {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        PaymentCollectionData data;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        boolean zIsCancelled = (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null || (data = paymentCollectionStateMachine.getData()) == null) ? false : data.isCancelled();
        boolean z = !zIsCancelled;
        if (zIsCancelled) {
            this.logger.d("sending final confirm false since payment was cancelled", new Pair[0]);
        }
        onHandlePaymentCollectionEvent(new SendFinalConfirmEvent(z));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onRequestOnlineAuthorisation(String authorisationData) {
        Intrinsics.checkNotNullParameter(authorisationData, "authorisationData");
        onHandlePaymentCollectionEvent(new RequestOnlineAuthorisationEvent(authorisationData + getAccountBlob()));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onIntermediateTransactionError(IntermediateTransactionError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        onHandlePaymentCollectionEvent(new IntermediateErrorEvent(error));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onReturnTransactionResult(TransactionResult.Result transactionResult) {
        Intrinsics.checkNotNullParameter(transactionResult, "transactionResult");
        onHandlePaymentCollectionEvent(new TransactionCompletedEvent(transactionResult));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onReturnFinalTlvBlob(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        onHandlePaymentCollectionEvent(new ReaderFinalConfirmationTlvCollectedEvent(tlv + getAccountBlob()));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onReaderTypesChanged(Set<? extends ReaderConfiguration.ReaderType> readerTypes) {
        Intrinsics.checkNotNullParameter(readerTypes, "readerTypes");
        onHandlePaymentCollectionEvent(new ReaderTypeChangedEvent(readerTypes));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void waitForCardPresent() {
        onHandlePaymentCollectionEvent(WaitForCardPresentEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onReadingCard() {
        onHandlePaymentCollectionEvent(ReadingCardEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onSetPinPadButtonsResult(boolean isSuccess) {
        onHandlePaymentCollectionEvent(new SetPinPadResultEvent(isSuccess));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onKernelTippingSelectionResult(TipSelectionResult tipSelectionResult) {
        Intrinsics.checkNotNullParameter(tipSelectionResult, "tipSelectionResult");
        onHandlePaymentCollectionEvent(new HardwareTippingCollectionResultEvent(tipSelectionResult));
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onRequestProduceAudioTone(AudioAlertType audioAlertType) {
        PaymentCollectionListener paymentCollectionListener;
        Intrinsics.checkNotNullParameter(audioAlertType, "audioAlertType");
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionListener = paymentCollectionContext.getPaymentCollectionListener()) == null) {
            return;
        }
        paymentCollectionListener.onRequestProduceAudioTone(audioAlertType);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onHardwareTransactionCanceled() {
        onHandlePaymentCollectionEvent(HardwareTransactionCancelledEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onDisplayAdditionalMessage(ReaderDisplayMessage message) {
        PaymentCollectionListener paymentCollectionListener;
        Intrinsics.checkNotNullParameter(message, "message");
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        if (paymentCollectionContext == null || (paymentCollectionListener = paymentCollectionContext.getPaymentCollectionListener()) == null) {
            return;
        }
        paymentCollectionListener.onAdditionalReaderDisplayMessage(message);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onShowThankYou() {
        onHandlePaymentCollectionEvent(ShowThankYouEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onBatteryCriticallyLow() {
        onHandlePaymentCollectionEvent(BatteryCriticallyLowEvent.INSTANCE);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentEventReceiver
    public void onDeviceMissingEncryptionKeys() {
        onHandlePaymentCollectionEvent(DeviceMissingEncryptionKeyEvent.INSTANCE);
    }

    private final String getAccountBlob() {
        PaymentCollectionStateMachine paymentCollectionStateMachine;
        PaymentCollectionData data;
        AccountType selectedAccount;
        String tlvBlob;
        PaymentCollectionContext paymentCollectionContext = this.paymentCollectionContext;
        return (paymentCollectionContext == null || (paymentCollectionStateMachine = paymentCollectionContext.getPaymentCollectionStateMachine()) == null || (data = paymentCollectionStateMachine.getData()) == null || (selectedAccount = data.getSelectedAccount()) == null || (tlvBlob = selectedAccount.toTlvBlob()) == null) ? "" : tlvBlob;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a6 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object insertTransactionLog(com.stripe.hardware.emv.TransactionResult.Result r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r9 = this;
            com.stripe.hardware.emv.TransactionResult$Result r0 = com.stripe.hardware.emv.TransactionResult.Result.APPROVED
            if (r10 == r0) goto L8
            com.stripe.hardware.emv.TransactionResult$Result r0 = com.stripe.hardware.emv.TransactionResult.Result.DECLINED
            if (r10 != r0) goto La7
        L8:
            com.stripe.paymentcollection.TransactionRepository r0 = r9.transactionRepository
            java.lang.String r2 = r0.getPaymentIntentId()
            if (r2 == 0) goto La7
            com.stripe.paymentcollection.log.PaymentCollectionLogger r0 = r9.logger
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "storing transaction log (id: "
            r1.<init>(r3)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r3 = ", result: "
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.StringBuilder r1 = r1.append(r10)
            r3 = 41
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r3 = 0
            kotlin.Pair[] r3 = new kotlin.Pair[r3]
            r0.i(r1, r3)
            com.stripe.paymentcollection.PaymentCollectionCoordinator$PaymentCollectionContext r0 = r9.paymentCollectionContext
            java.lang.String r1 = ""
            if (r0 == 0) goto L5d
            com.stripe.paymentcollection.PaymentCollectionStateMachine r0 = r0.getPaymentCollectionStateMachine()
            if (r0 == 0) goto L5d
            java.lang.Object r0 = r0.getData()
            com.stripe.paymentcollection.PaymentCollectionData r0 = (com.stripe.paymentcollection.PaymentCollectionData) r0
            if (r0 == 0) goto L5d
            java.lang.String r3 = r0.getFinalTlvResponse()
            if (r3 != 0) goto L58
            java.lang.String r3 = r0.getOnlineAuthorizationData()
            if (r3 != 0) goto L58
            r3 = r1
        L58:
            if (r3 != 0) goto L5b
            goto L5d
        L5b:
            r7 = r3
            goto L5e
        L5d:
            r7 = r1
        L5e:
            com.stripe.paymentcollection.TransactionListener r1 = r9.transactionListener
            com.stripe.paymentcollection.PaymentCollectionCoordinator$PaymentCollectionContext r0 = r9.paymentCollectionContext
            r3 = 0
            if (r0 == 0) goto L74
            com.stripe.currency.Amount r0 = r0.getAmount()
            if (r0 == 0) goto L74
            long r4 = r0.getValue()
            java.lang.Long r0 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
            goto L75
        L74:
            r0 = r3
        L75:
            com.stripe.paymentcollection.TransactionRepository r4 = r9.transactionRepository
            com.stripe.currency.Amount r4 = r4.getAmountTip()
            if (r4 == 0) goto L86
            long r4 = r4.getValue()
            java.lang.Long r4 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
            goto L87
        L86:
            r4 = r3
        L87:
            com.stripe.paymentcollection.PaymentCollectionCoordinator$PaymentCollectionContext r5 = r9.paymentCollectionContext
            if (r5 == 0) goto L95
            com.stripe.currency.Amount r5 = r5.getAmount()
            if (r5 == 0) goto L95
            java.lang.String r3 = com.stripe.paymentcollection.PaymentCollectionCoordinatorKt.getCurrencyCode(r5)
        L95:
            r5 = r3
            java.lang.String r6 = r10.name()
            r8 = r11
            r3 = r0
            java.lang.Object r10 = r1.onTransactionLog(r2, r3, r4, r5, r6, r7, r8)
            java.lang.Object r11 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r10 != r11) goto La7
            return r10
        La7:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.paymentcollection.PaymentCollectionCoordinator.insertTransactionLog(com.stripe.hardware.emv.TransactionResult$Result, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001/B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\tHÆ\u0003J1\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010)\u001a\u00020\u00132\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020.HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0011\"\u0004\b\u001a\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0011\"\u0004\b!\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00060"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;", "", "paymentCollectionListener", "Lcom/stripe/paymentcollection/PaymentCollectionListener;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "paymentCollectionStateMachine", "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "collectionResult", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", "getCollectionResult", "()Lkotlinx/coroutines/CompletableDeferred;", "dccSelectionResult", "", "getDccSelectionResult", "setDccSelectionResult", "(Lkotlinx/coroutines/CompletableDeferred;)V", "nonCardPaymentMethodResult", "Lcom/stripe/hardware/emv/TransactionResult;", "getNonCardPaymentMethodResult", "setNonCardPaymentMethodResult", "getPaymentCollectionListener", "()Lcom/stripe/paymentcollection/PaymentCollectionListener;", "getPaymentCollectionStateMachine", "()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "secondGenACResult", "getSecondGenACResult", "setSecondGenACResult", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "Factory", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class PaymentCollectionContext {
        private final Amount amount;
        private final CompletableDeferred<PaymentCollectionResult> collectionResult;
        private CompletableDeferred<Boolean> dccSelectionResult;
        private CompletableDeferred<TransactionResult> nonCardPaymentMethodResult;
        private final PaymentCollectionListener paymentCollectionListener;
        private final PaymentCollectionStateMachine paymentCollectionStateMachine;
        private CompletableDeferred<TransactionResult> secondGenACResult;
        private final TransactionType transactionType;

        /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;", "", "create", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;", "paymentCollectionListener", "Lcom/stripe/paymentcollection/PaymentCollectionListener;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public interface Factory {
            PaymentCollectionContext create(PaymentCollectionListener paymentCollectionListener, Amount amount, TransactionType transactionType);
        }

        public static /* synthetic */ PaymentCollectionContext copy$default(PaymentCollectionContext paymentCollectionContext, PaymentCollectionListener paymentCollectionListener, Amount amount, TransactionType transactionType, PaymentCollectionStateMachine paymentCollectionStateMachine, int i, Object obj) {
            if ((i & 1) != 0) {
                paymentCollectionListener = paymentCollectionContext.paymentCollectionListener;
            }
            if ((i & 2) != 0) {
                amount = paymentCollectionContext.amount;
            }
            if ((i & 4) != 0) {
                transactionType = paymentCollectionContext.transactionType;
            }
            if ((i & 8) != 0) {
                paymentCollectionStateMachine = paymentCollectionContext.paymentCollectionStateMachine;
            }
            return paymentCollectionContext.copy(paymentCollectionListener, amount, transactionType, paymentCollectionStateMachine);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaymentCollectionListener getPaymentCollectionListener() {
            return this.paymentCollectionListener;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Amount getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final TransactionType getTransactionType() {
            return this.transactionType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final PaymentCollectionStateMachine getPaymentCollectionStateMachine() {
            return this.paymentCollectionStateMachine;
        }

        public final PaymentCollectionContext copy(PaymentCollectionListener paymentCollectionListener, Amount amount, TransactionType transactionType, PaymentCollectionStateMachine paymentCollectionStateMachine) {
            Intrinsics.checkNotNullParameter(paymentCollectionListener, "paymentCollectionListener");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            Intrinsics.checkNotNullParameter(paymentCollectionStateMachine, "paymentCollectionStateMachine");
            return new PaymentCollectionContext(paymentCollectionListener, amount, transactionType, paymentCollectionStateMachine);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaymentCollectionContext)) {
                return false;
            }
            PaymentCollectionContext paymentCollectionContext = (PaymentCollectionContext) other;
            return Intrinsics.areEqual(this.paymentCollectionListener, paymentCollectionContext.paymentCollectionListener) && Intrinsics.areEqual(this.amount, paymentCollectionContext.amount) && this.transactionType == paymentCollectionContext.transactionType && Intrinsics.areEqual(this.paymentCollectionStateMachine, paymentCollectionContext.paymentCollectionStateMachine);
        }

        public int hashCode() {
            return (((((this.paymentCollectionListener.hashCode() * 31) + this.amount.hashCode()) * 31) + this.transactionType.hashCode()) * 31) + this.paymentCollectionStateMachine.hashCode();
        }

        public String toString() {
            return "PaymentCollectionContext(paymentCollectionListener=" + this.paymentCollectionListener + ", amount=" + this.amount + ", transactionType=" + this.transactionType + ", paymentCollectionStateMachine=" + this.paymentCollectionStateMachine + ')';
        }

        public PaymentCollectionContext(PaymentCollectionListener paymentCollectionListener, Amount amount, TransactionType transactionType, PaymentCollectionStateMachine paymentCollectionStateMachine) {
            Intrinsics.checkNotNullParameter(paymentCollectionListener, "paymentCollectionListener");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            Intrinsics.checkNotNullParameter(paymentCollectionStateMachine, "paymentCollectionStateMachine");
            this.paymentCollectionListener = paymentCollectionListener;
            this.amount = amount;
            this.transactionType = transactionType;
            this.paymentCollectionStateMachine = paymentCollectionStateMachine;
            this.collectionResult = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        }

        public final PaymentCollectionListener getPaymentCollectionListener() {
            return this.paymentCollectionListener;
        }

        public final Amount getAmount() {
            return this.amount;
        }

        public final TransactionType getTransactionType() {
            return this.transactionType;
        }

        public final PaymentCollectionStateMachine getPaymentCollectionStateMachine() {
            return this.paymentCollectionStateMachine;
        }

        public final CompletableDeferred<PaymentCollectionResult> getCollectionResult() {
            return this.collectionResult;
        }

        public final CompletableDeferred<TransactionResult> getSecondGenACResult() {
            return this.secondGenACResult;
        }

        public final void setSecondGenACResult(CompletableDeferred<TransactionResult> completableDeferred) {
            this.secondGenACResult = completableDeferred;
        }

        public final CompletableDeferred<Boolean> getDccSelectionResult() {
            return this.dccSelectionResult;
        }

        public final void setDccSelectionResult(CompletableDeferred<Boolean> completableDeferred) {
            this.dccSelectionResult = completableDeferred;
        }

        public final CompletableDeferred<TransactionResult> getNonCardPaymentMethodResult() {
            return this.nonCardPaymentMethodResult;
        }

        public final void setNonCardPaymentMethodResult(CompletableDeferred<TransactionResult> completableDeferred) {
            this.nonCardPaymentMethodResult = completableDeferred;
        }
    }

    /* JADX INFO: compiled from: PaymentCollectionCoordinator.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/paymentcollection/PaymentCollectionListener;", "(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V", "getListener", "()Lcom/stripe/paymentcollection/PaymentCollectionListener;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ConnectedReaderContext {
        private final PaymentCollectionListener listener;

        public static /* synthetic */ ConnectedReaderContext copy$default(ConnectedReaderContext connectedReaderContext, PaymentCollectionListener paymentCollectionListener, int i, Object obj) {
            if ((i & 1) != 0) {
                paymentCollectionListener = connectedReaderContext.listener;
            }
            return connectedReaderContext.copy(paymentCollectionListener);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaymentCollectionListener getListener() {
            return this.listener;
        }

        public final ConnectedReaderContext copy(PaymentCollectionListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            return new ConnectedReaderContext(listener);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ConnectedReaderContext) && Intrinsics.areEqual(this.listener, ((ConnectedReaderContext) other).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public String toString() {
            return "ConnectedReaderContext(listener=" + this.listener + ')';
        }

        public ConnectedReaderContext(PaymentCollectionListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.listener = listener;
        }

        public final PaymentCollectionListener getListener() {
            return this.listener;
        }
    }
}
