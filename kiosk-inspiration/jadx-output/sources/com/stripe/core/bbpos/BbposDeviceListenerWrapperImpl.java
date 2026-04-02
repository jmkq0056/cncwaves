package com.stripe.core.bbpos;

import android.bluetooth.BluetoothDevice;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.CAPK;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.bbpos.sdk.CheckCardResult;
import com.stripe.bbpos.sdk.ContactlessStatusTone;
import com.stripe.bbpos.sdk.DisplayText;
import com.stripe.bbpos.sdk.Error;
import com.stripe.bbpos.sdk.ManualPanEntryType;
import com.stripe.bbpos.sdk.PinData;
import com.stripe.bbpos.sdk.PinEntryResult;
import com.stripe.bbpos.sdk.PinEntrySource;
import com.stripe.bbpos.sdk.PinPadTouchEvent;
import com.stripe.bbpos.sdk.TransactionResult;
import com.stripe.core.bbpos.hardware.api.AmountInputResult;
import com.stripe.core.bbpos.hardware.api.BatteryStatus;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceResetReason;
import com.stripe.core.bbpos.hardware.api.SessionError;
import com.stripe.core.bbpos.hardware.api.TerminalSettingStatus;
import com.stripe.core.bbpos.mappers.CardDataMapperKt;
import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import com.stripe.core.bbpos.mappers.DeviceInfoMapperKt;
import com.stripe.core.bbpos.mappers.ReadTerminalSettingResultMapperKt;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposDeviceListenerWrapperImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ò\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\rH\u0016J\u0016\u0010\u0012\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013H\u0016J\b\u0010\u0014\u001a\u00020\rH\u0016J\b\u0010\u0015\u001a\u00020\rH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0016J\b\u0010\u0017\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\rH\u0016J\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020%H\u0016J\"\u0010&\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020!2\b\u0010'\u001a\u0004\u0018\u00010%H\u0016J\b\u0010(\u001a\u00020\rH\u0016J\u001c\u0010)\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010*2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010+\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010*H\u0016J\b\u0010,\u001a\u00020\rH\u0016J\b\u0010-\u001a\u00020\rH\u0016J\b\u0010.\u001a\u00020\rH\u0016J\u001e\u0010/\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\b\u00101\u001a\u00020\rH\u0016J\u0018\u00102\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020!H\u0016J\u0010\u00103\u001a\u00020\r2\u0006\u0010\u000e\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\r2\u0006\u0010\u000e\u001a\u0002062\u0006\u0010\u001e\u001a\u00020%H\u0016J\b\u00107\u001a\u00020\rH\u0016J\b\u00108\u001a\u00020\rH\u0016J\u0010\u00109\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0012\u0010<\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010=H\u0016J\u0010\u0010>\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020?H\u0016J\u0018\u0010@\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016J\u0010\u0010A\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020BH\u0016J\b\u0010C\u001a\u00020\rH\u0016J \u0010D\u001a\u00020\r2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020%0Ej\b\u0012\u0004\u0012\u00020%`FH\u0016J\b\u0010G\u001a\u00020\rH\u0016J\b\u0010H\u001a\u00020\rH\u0016J\b\u0010I\u001a\u00020\rH\u0016J&\u0010J\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J&\u0010K\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010L\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020MH\u0016J\u001a\u0010N\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010O2\u0006\u0010\u001e\u001a\u00020!H\u0016J$\u0010P\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020Q2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010R\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J&\u0010S\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J\u0012\u0010U\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010V\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0012\u0010W\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010XH\u0016J\u001a\u0010Y\u001a\u00020\r2\u0010\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010X\u0018\u00010\u0013H\u0016J\u0012\u0010Z\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010[\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J$\u0010\\\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020]2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u001a\u0010^\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u001c\u0010_\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u001c\u0010`\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0018\u0010c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020%H\u0016J\u0010\u0010d\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010e\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010fH\u0016J\u001a\u0010g\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u001a\u0010h\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010i\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u001e\u0010j\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010k\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010l\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010m\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J$\u0010n\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010o\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020pH\u0016J&\u0010q\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J(\u0010r\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010s2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J&\u0010t\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020u2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010v\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J,\u0010w\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010%2\b\u0010'\u001a\u0004\u0018\u00010%2\u0006\u0010x\u001a\u00020!H\u0016J\u0010\u0010y\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020zH\u0016J\u001c\u0010{\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J&\u0010|\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J&\u0010}\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u001c\u0010~\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u0010\u0010\u007f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0011\u0010\u0081\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0011\u0010\u0082\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0084\u0001H\u0016J\u001d\u0010\u0085\u0001\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u0011\u0010\u0086\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0088\u0001H\u0016J\u0019\u0010\u0089\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020%H\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u008c\u0001H\u0016J\u001e\u0010\u008d\u0001\u001a\u00020\r2\u0013\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020%\u0012\u0005\u0012\u00030\u008c\u000100H\u0016J*\u0010\u008e\u0001\u001a\u00020\r2\t\u0010\u000e\u001a\u0005\u0018\u00010\u008f\u00012\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J'\u0010\u0090\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J(\u0010\u0091\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0015\u0010\u0092\u0001\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\t\u0010\u0093\u0001\u001a\u00020\rH\u0016J\t\u0010\u0094\u0001\u001a\u00020\rH\u0016J\t\u0010\u0095\u0001\u001a\u00020\rH\u0016J\u001a\u0010\u0096\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0097\u00012\u0006\u0010\u001e\u001a\u00020%H\u0016J\t\u0010\u0098\u0001\u001a\u00020\rH\u0016J\t\u0010\u0099\u0001\u001a\u00020\rH\u0016J\t\u0010\u009a\u0001\u001a\u00020\rH\u0016J\t\u0010\u009b\u0001\u001a\u00020\rH\u0016J\t\u0010\u009c\u0001\u001a\u00020\rH\u0016J\u0012\u0010\u009d\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u009e\u0001H\u0016J\t\u0010\u009f\u0001\u001a\u00020\rH\u0016J\u000e\u0010 \u0001\u001a\u00030¡\u0001*\u00020QH\u0002J\u000e\u0010 \u0001\u001a\u00030¢\u0001*\u00020\u0019H\u0002J\u000f\u0010 \u0001\u001a\u00030£\u0001*\u00030\u009e\u0001H\u0002J\u000e\u0010 \u0001\u001a\u00030¤\u0001*\u00020]H\u0002J\u000e\u0010 \u0001\u001a\u00030¥\u0001*\u00020BH\u0002J\u000e\u0010 \u0001\u001a\u00030¦\u0001*\u00020\u001fH\u0002J\u000e\u0010 \u0001\u001a\u00030§\u0001*\u000206H\u0002J\u000e\u0010 \u0001\u001a\u00030¨\u0001*\u00020$H\u0002J\u000e\u0010 \u0001\u001a\u00030©\u0001*\u00020:H\u0002J\u000e\u0010 \u0001\u001a\u00030ª\u0001*\u00020uH\u0002J\u000e\u0010 \u0001\u001a\u00030«\u0001*\u00020?H\u0002J\u000e\u0010 \u0001\u001a\u00030¬\u0001*\u00020MH\u0002J\u000f\u0010 \u0001\u001a\u00030\u00ad\u0001*\u00030\u0097\u0001H\u0002J\u000f\u0010 \u0001\u001a\u00030®\u0001*\u00030\u008c\u0001H\u0002J\u000f\u0010 \u0001\u001a\u00030¯\u0001*\u00030\u0084\u0001H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006°\u0001"}, d2 = {"Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;", "Lcom/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "deviceInfoCache", "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onBTConnected", "", "p0", "Landroid/bluetooth/BluetoothDevice;", "onBTDisconnected", "onBTRequestPairing", "onBTReturnScanResults", "", "onBTScanStopped", "onBTScanTimeout", "onBarcodeReaderConnected", "onBarcodeReaderDisconnected", "onBatteryLow", "Lcom/bbpos/bbdevice/BBDeviceController$BatteryStatus;", "onDeviceDisplayingPrompt", "onDeviceHere", "", "onDeviceReset", "p1", "Lcom/bbpos/bbdevice/BBDeviceController$DeviceResetReason;", "onDeviceResetAlert", "", "onEnterStandbyMode", "onError", "Lcom/bbpos/bbdevice/BBDeviceController$Error;", "", "onHardwareFunctionalTestResult", "p2", "onPowerButtonPressed", "onPowerConnected", "Lcom/bbpos/bbdevice/BBDeviceController$PowerSource;", "onPowerDisconnected", "onPowerDown", "onPrintDataCancelled", "onPrintDataEnd", "onRequestAmountConfirm", "Ljava/util/Hashtable;", "onRequestClearDisplay", "onRequestDisplayAsterisk", "onRequestDisplayLEDIndicator", "Lcom/bbpos/bbdevice/BBDeviceController$ContactlessStatus;", "onRequestDisplayText", "Lcom/bbpos/bbdevice/BBDeviceController$DisplayText;", "onRequestFinalConfirm", "onRequestKeypadResponse", "onRequestManualPanEntry", "Lcom/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;", "onRequestOnlineProcess", "onRequestOtherAmount", "Lcom/bbpos/bbdevice/BBDeviceController$AmountInputType;", "onRequestPinEntry", "Lcom/bbpos/bbdevice/BBDeviceController$PinEntrySource;", "onRequestPrintData", "onRequestProduceAudioTone", "Lcom/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "onRequestSetAmount", "onRequestStartEmv", "onRequestTerminalTime", "onRequestVirtuCryptPEDIResponse", "onRequestVirtuCryptPEDKResponse", "onReturnAccessiblePINPadTouchEvent", "Lcom/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;", "onReturnAccountSelectionResult", "Lcom/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;", "onReturnAmount", "Lcom/bbpos/bbdevice/BBDeviceController$AmountInputResult;", "onReturnAmountConfirmResult", "onReturnApduResult", "", "onReturnBarcode", "onReturnBatchData", "onReturnCAPKDetail", "Lcom/bbpos/bbdevice/CAPK;", "onReturnCAPKList", "onReturnCAPKLocation", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardResult;", "onReturnControlLEDResult", "onReturnDebugLog", "onReturnDeviceInfo", "onReturnDisableAccountSelectionResult", "onReturnDisableBluetoothResult", "onReturnDisableFactoryModeResult", "onReturnDisableInputAmountResult", "onReturnDisplayPromptResult", "Lcom/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;", "onReturnEmvCardDataResult", "onReturnEmvCardNumber", "onReturnEmvReport", "onReturnEmvReportList", "onReturnEnableAccountSelectionResult", "onReturnEnableBluetoothResult", "onReturnEnableInputAmountResult", "onReturnEncryptDataResult", "onReturnFunctionKey", "Lcom/bbpos/bbdevice/BBDeviceController$FunctionKey;", "onReturnNfcDataExchangeResult", "onReturnNfcDetectCardResult", "Lcom/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;", "onReturnPinEntryResult", "Lcom/bbpos/bbdevice/BBDeviceController$PinEntryResult;", "onReturnPowerOffIccResult", "onReturnPowerOnIccResult", "p3", "onReturnPrintResult", "Lcom/bbpos/bbdevice/BBDeviceController$PrintResult;", "onReturnReadAIDResult", "onReturnReadDisplaySettingsResult", "onReturnReadDisplayStringResult", "onReturnReadTerminalSettingResult", "onReturnRemoveCAPKResult", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnSetPinPadOrientationResult", "onReturnTransactionResult", "Lcom/bbpos/bbdevice/BBDeviceController$TransactionResult;", "onReturnUpdateAIDResult", "onReturnUpdateCAPKResult", "onReturnUpdateDisplaySettingsProgress", "", "onReturnUpdateDisplaySettingsResult", "onReturnUpdateDisplayStringResult", "onReturnUpdateTerminalSettingResult", "Lcom/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;", "onReturnUpdateTerminalSettingsResult", "onReturnVasResult", "Lcom/bbpos/bbdevice/BBDeviceController$VASResult;", "onReturnVirtuCryptPEDICommandResult", "onReturnVirtuCryptPEDKCommandResult", "data", "onReturnWatchdogTimerReset", "onSerialConnected", "onSerialDisconnected", "onSessionError", "Lcom/bbpos/bbdevice/BBDeviceController$SessionError;", "onSessionInitialized", "onTestChannelConnected", "onTestChannelDisconnected", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardMode;", "onWaitingReprintOrPrintNext", "convert", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "Lcom/stripe/bbpos/sdk/DisplayText;", "Lcom/stripe/bbpos/sdk/Error;", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposDeviceListenerWrapperImpl implements BBDeviceController.BBDeviceControllerListener {
    private final DeviceInfoCache deviceInfoCache;
    private final DeviceListenerWrapper listener;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    /* JADX INFO: compiled from: BbposDeviceListenerWrapperImpl.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$10;
        public static final /* synthetic */ int[] $EnumSwitchMapping$11;
        public static final /* synthetic */ int[] $EnumSwitchMapping$12;
        public static final /* synthetic */ int[] $EnumSwitchMapping$13;
        public static final /* synthetic */ int[] $EnumSwitchMapping$14;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;
        public static final /* synthetic */ int[] $EnumSwitchMapping$6;
        public static final /* synthetic */ int[] $EnumSwitchMapping$7;
        public static final /* synthetic */ int[] $EnumSwitchMapping$8;
        public static final /* synthetic */ int[] $EnumSwitchMapping$9;

        static {
            int[] iArr = new int[BBDeviceController.CheckCardMode.values().length];
            try {
                iArr[BBDeviceController.CheckCardMode.SWIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.TAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.SWIPE_OR_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.SWIPE_OR_TAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.SWIPE_OR_INSERT_OR_TAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.INSERT_OR_TAP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.MANUAL_PAN_ENTRY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[BBDeviceController.CheckCardMode.QR_CODE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BBDeviceController.CheckCardResult.values().length];
            try {
                iArr2[BBDeviceController.CheckCardResult.NO_CARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.INSERTED_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.NOT_ICC.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.BAD_SWIPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.MSR.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.MAG_HEAD_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.USE_ICC_CARD.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.TAP_CARD_DETECTED.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.MANUAL_PAN_ENTRY.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[BBDeviceController.CheckCardResult.CARD_NOT_SUPPORTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[BBDeviceController.TransactionResult.values().length];
            try {
                iArr3[BBDeviceController.TransactionResult.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.TERMINATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.DECLINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CANCELED_OR_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CAPK_FAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.NOT_ICC.ordinal()] = 6;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CARD_BLOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.DEVICE_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.SELECT_APP_FAIL.ordinal()] = 9;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CARD_NOT_SUPPORTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.MISSING_MANDATORY_DATA.ordinal()] = 11;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.NO_EMV_APPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.INVALID_ICC_DATA.ordinal()] = 13;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CONDITION_NOT_SATISFIED.ordinal()] = 14;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.APPLICATION_BLOCKED.ordinal()] = 15;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.ICC_CARD_REMOVED.ordinal()] = 16;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CARD_SCHEME_NOT_MATCHED.ordinal()] = 17;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.CANCELED.ordinal()] = 18;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr3[BBDeviceController.TransactionResult.TIMEOUT.ordinal()] = 19;
            } catch (NoSuchFieldError unused38) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[BBDeviceController.PinEntryResult.values().length];
            try {
                iArr4[BBDeviceController.PinEntryResult.ENTERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.BYPASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.WRONG_PIN_LENGTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.INCORRECT_PIN.ordinal()] = 6;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr4[BBDeviceController.PinEntryResult.ICC_REMOVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused45) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[BBDeviceController.AmountInputResult.values().length];
            try {
                iArr5[BBDeviceController.AmountInputResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr5[BBDeviceController.AmountInputResult.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr5[BBDeviceController.AmountInputResult.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr5[BBDeviceController.AmountInputResult.INVALID_AMOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused49) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[BBDeviceController.TerminalSettingStatus.values().length];
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.TLV_INCORRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.TAG_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.LENGTH_INCORRECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.BOOTLOADER_NOT_SUPPORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.TAG_NOT_WRITTEN_CORRECTLY.ordinal()] = 7;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.INVALID_VALUE.ordinal()] = 8;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.USER_DEFINED_DATA_NOT_ENALBLED.ordinal()] = 9;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.TAG_NOT_UPDATED.ordinal()] = 10;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr6[BBDeviceController.TerminalSettingStatus.UNKNOWN.ordinal()] = 11;
            } catch (NoSuchFieldError unused60) {
            }
            $EnumSwitchMapping$5 = iArr6;
            int[] iArr7 = new int[BBDeviceController.PinEntrySource.values().length];
            try {
                iArr7[BBDeviceController.PinEntrySource.PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr7[BBDeviceController.PinEntrySource.KEYPAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr7[BBDeviceController.PinEntrySource.SMARTPOS.ordinal()] = 3;
            } catch (NoSuchFieldError unused63) {
            }
            $EnumSwitchMapping$6 = iArr7;
            int[] iArr8 = new int[BBDeviceController.DisplayText.values().length];
            try {
                iArr8[BBDeviceController.DisplayText.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CALL_YOUR_BANK.ordinal()] = 2;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.DECLINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.ENTER_AMOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.ENTER_PIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INCORRECT_PIN.ordinal()] = 6;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INSERT_CARD.ordinal()] = 7;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.NOT_ACCEPTED.ordinal()] = 8;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PIN_OK.ordinal()] = 9;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PLEASE_WAIT.ordinal()] = 10;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.REMOVE_CARD.ordinal()] = 11;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.USE_MAG_STRIPE.ordinal()] = 12;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TRY_AGAIN.ordinal()] = 13;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE.ordinal()] = 14;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TRANSACTION_TERMINATED.ordinal()] = 15;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PROCESSING.ordinal()] = 16;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.LAST_PIN_TRY.ordinal()] = 17;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.SELECT_ACCOUNT.ordinal()] = 18;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PRESENT_CARD.ordinal()] = 19;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.APPROVED_PLEASE_SIGN.ordinal()] = 20;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PRESENT_CARD_AGAIN.ordinal()] = 21;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.AUTHORISING.ordinal()] = 22;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD.ordinal()] = 23;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INSERT_OR_SWIPE_CARD.ordinal()] = 24;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.MULTIPLE_CARDS_DETECTED.ordinal()] = 25;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TIMEOUT.ordinal()] = 26;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.APPLICATION_EXPIRED.ordinal()] = 27;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.FINAL_CONFIRM.ordinal()] = 28;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.SHOW_THANK_YOU.ordinal()] = 29;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PIN_TRY_LIMIT_EXCEEDED.ordinal()] = 30;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.NOT_ICC_CARD.ordinal()] = 31;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_INSERTED.ordinal()] = 32;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_REMOVED.ordinal()] = 33;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.NO_EMV_APPS.ordinal()] = 34;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CTL_NO_EMV_APPS.ordinal()] = 35;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CTL_APP_NOT_SUPPORTED.ordinal()] = 36;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED.ordinal()] = 37;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INVALID_INPUT.ordinal()] = 38;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_ERROR.ordinal()] = 39;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TOO_MANY_TAPS.ordinal()] = 40;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_IS_STILL_INSERTED.ordinal()] = 41;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.DPAS_CDCVM.ordinal()] = 42;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_NOT_ADMITTED.ordinal()] = 43;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INVALID_TRANSACTION.ordinal()] = 44;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INVALID_CARD_NUMBER.ordinal()] = 45;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.SYSTEM_MALFUNCTION.ordinal()] = 46;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.EXPIRED_CARD.ordinal()] = 47;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TRANSACTION_NOT_PERMITTED.ordinal()] = 48;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INVALID_FUNCTION.ordinal()] = 49;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.INVALID_CARD.ordinal()] = 50;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.WRONG_CARD.ordinal()] = 51;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.TERMINAL_NOT_PERMITTED.ordinal()] = 52;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.ORIGINAL_AMOUNT_INCORRECT.ordinal()] = 53;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_NOT_READABLE.ordinal()] = 54;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.AUTHENTICATION_REQUIRED.ordinal()] = 55;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.DECLINED_WITH_RESPONSE_CODE_05.ordinal()] = 56;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.NOT_ACCEPTED_TRY_AGAIN.ordinal()] = 57;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN.ordinal()] = 58;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 59;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD.ordinal()] = 60;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                iArr8[BBDeviceController.DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 61;
            } catch (NoSuchFieldError unused124) {
            }
            $EnumSwitchMapping$7 = iArr8;
            int[] iArr9 = new int[BBDeviceController.ManualPanEntryType.values().length];
            try {
                iArr9[BBDeviceController.ManualPanEntryType.PAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                iArr9[BBDeviceController.ManualPanEntryType.EXPIRY_DATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                iArr9[BBDeviceController.ManualPanEntryType.CVV.ordinal()] = 3;
            } catch (NoSuchFieldError unused127) {
            }
            $EnumSwitchMapping$8 = iArr9;
            int[] iArr10 = new int[BBDeviceController.ContactlessStatusTone.values().length];
            try {
                iArr10[BBDeviceController.ContactlessStatusTone.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                iArr10[BBDeviceController.ContactlessStatusTone.ALERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused129) {
            }
            $EnumSwitchMapping$9 = iArr10;
            int[] iArr11 = new int[BBDeviceController.BatteryStatus.values().length];
            try {
                iArr11[BBDeviceController.BatteryStatus.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused130) {
            }
            try {
                iArr11[BBDeviceController.BatteryStatus.CRITICALLY_LOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused131) {
            }
            try {
                iArr11[BBDeviceController.BatteryStatus.IS_CHARGING.ordinal()] = 3;
            } catch (NoSuchFieldError unused132) {
            }
            try {
                iArr11[BBDeviceController.BatteryStatus.NOT_CHARGING.ordinal()] = 4;
            } catch (NoSuchFieldError unused133) {
            }
            $EnumSwitchMapping$10 = iArr11;
            int[] iArr12 = new int[BBDeviceController.Error.values().length];
            try {
                iArr12[BBDeviceController.Error.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused134) {
            }
            try {
                iArr12[BBDeviceController.Error.CMD_NOT_AVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused135) {
            }
            try {
                iArr12[BBDeviceController.Error.DEVICE_BUSY.ordinal()] = 3;
            } catch (NoSuchFieldError unused136) {
            }
            try {
                iArr12[BBDeviceController.Error.INPUT_OUT_OF_RANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused137) {
            }
            try {
                iArr12[BBDeviceController.Error.INPUT_INVALID_FORMAT.ordinal()] = 5;
            } catch (NoSuchFieldError unused138) {
            }
            try {
                iArr12[BBDeviceController.Error.INPUT_INVALID.ordinal()] = 6;
            } catch (NoSuchFieldError unused139) {
            }
            try {
                iArr12[BBDeviceController.Error.CASHBACK_NOT_SUPPORTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused140) {
            }
            try {
                iArr12[BBDeviceController.Error.COMM_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused141) {
            }
            try {
                iArr12[BBDeviceController.Error.FAIL_TO_START_BT.ordinal()] = 9;
            } catch (NoSuchFieldError unused142) {
            }
            try {
                iArr12[BBDeviceController.Error.VOLUME_WARNING_NOT_ACCEPTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused143) {
            }
            try {
                iArr12[BBDeviceController.Error.FAIL_TO_START_AUDIO.ordinal()] = 11;
            } catch (NoSuchFieldError unused144) {
            }
            try {
                iArr12[BBDeviceController.Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE.ordinal()] = 12;
            } catch (NoSuchFieldError unused145) {
            }
            try {
                iArr12[BBDeviceController.Error.COMM_LINK_UNINITIALIZED.ordinal()] = 13;
            } catch (NoSuchFieldError unused146) {
            }
            try {
                iArr12[BBDeviceController.Error.BTV4_NOT_SUPPORTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused147) {
            }
            try {
                iArr12[BBDeviceController.Error.FAIL_TO_START_SERIAL.ordinal()] = 15;
            } catch (NoSuchFieldError unused148) {
            }
            try {
                iArr12[BBDeviceController.Error.FAIL_TO_START_USB.ordinal()] = 16;
            } catch (NoSuchFieldError unused149) {
            }
            try {
                iArr12[BBDeviceController.Error.USB_DEVICE_NOT_FOUND.ordinal()] = 17;
            } catch (NoSuchFieldError unused150) {
            }
            try {
                iArr12[BBDeviceController.Error.USB_DEVICE_PERMISSION_DENIED.ordinal()] = 18;
            } catch (NoSuchFieldError unused151) {
            }
            try {
                iArr12[BBDeviceController.Error.USB_NOT_SUPPORTED.ordinal()] = 19;
            } catch (NoSuchFieldError unused152) {
            }
            try {
                iArr12[BBDeviceController.Error.CHANNEL_BUFFER_FULL.ordinal()] = 20;
            } catch (NoSuchFieldError unused153) {
            }
            try {
                iArr12[BBDeviceController.Error.BLUETOOTH_PERMISSION_DENIED.ordinal()] = 21;
            } catch (NoSuchFieldError unused154) {
            }
            try {
                iArr12[BBDeviceController.Error.HARDWARE_NOT_SUPPORTED.ordinal()] = 22;
            } catch (NoSuchFieldError unused155) {
            }
            try {
                iArr12[BBDeviceController.Error.TAMPER.ordinal()] = 23;
            } catch (NoSuchFieldError unused156) {
            }
            try {
                iArr12[BBDeviceController.Error.PCI_ERROR.ordinal()] = 24;
            } catch (NoSuchFieldError unused157) {
            }
            try {
                iArr12[BBDeviceController.Error.AUDIO_PERMISSION_DENIED.ordinal()] = 25;
            } catch (NoSuchFieldError unused158) {
            }
            try {
                iArr12[BBDeviceController.Error.BLUETOOTH_LOCATION_PERMISSION_DENIED.ordinal()] = 26;
            } catch (NoSuchFieldError unused159) {
            }
            try {
                iArr12[BBDeviceController.Error.SERIAL_PERMISSION_DENIED.ordinal()] = 27;
            } catch (NoSuchFieldError unused160) {
            }
            try {
                iArr12[BBDeviceController.Error.PAIRING_ERROR.ordinal()] = 28;
            } catch (NoSuchFieldError unused161) {
            }
            try {
                iArr12[BBDeviceController.Error.PAIRING_ERROR_INCORRECT_PASSKEY.ordinal()] = 29;
            } catch (NoSuchFieldError unused162) {
            }
            try {
                iArr12[BBDeviceController.Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE.ordinal()] = 30;
            } catch (NoSuchFieldError unused163) {
            }
            try {
                iArr12[BBDeviceController.Error.BLE_SECURE_CONNECTION_NOT_SUPPORTED.ordinal()] = 31;
            } catch (NoSuchFieldError unused164) {
            }
            try {
                iArr12[BBDeviceController.Error.NFC_NOT_SUPPORTED.ordinal()] = 32;
            } catch (NoSuchFieldError unused165) {
            }
            try {
                iArr12[BBDeviceController.Error.NFC_PERMISSION_DENIED.ordinal()] = 33;
            } catch (NoSuchFieldError unused166) {
            }
            try {
                iArr12[BBDeviceController.Error.NFC_DISABLED.ordinal()] = 34;
            } catch (NoSuchFieldError unused167) {
            }
            try {
                iArr12[BBDeviceController.Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE.ordinal()] = 35;
            } catch (NoSuchFieldError unused168) {
            }
            try {
                iArr12[BBDeviceController.Error.CONTACTLESS_ERROR.ordinal()] = 36;
            } catch (NoSuchFieldError unused169) {
            }
            try {
                iArr12[BBDeviceController.Error.NOT_COMPATIBLE_ERROR.ordinal()] = 37;
            } catch (NoSuchFieldError unused170) {
            }
            try {
                iArr12[BBDeviceController.Error.INTEGRITY_CHECK_ERROR.ordinal()] = 38;
            } catch (NoSuchFieldError unused171) {
            }
            try {
                iArr12[BBDeviceController.Error.FAIL_TO_START_TEST_CHANNEL.ordinal()] = 39;
            } catch (NoSuchFieldError unused172) {
            }
            $EnumSwitchMapping$11 = iArr12;
            int[] iArr13 = new int[BBDeviceController.SessionError.values().length];
            try {
                iArr13[BBDeviceController.SessionError.FIRMWARE_NOT_SUPPORTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused173) {
            }
            try {
                iArr13[BBDeviceController.SessionError.SESSION_NOT_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused174) {
            }
            try {
                iArr13[BBDeviceController.SessionError.INVALID_VENDOR_TOKEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused175) {
            }
            try {
                iArr13[BBDeviceController.SessionError.INVALID_SESSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused176) {
            }
            $EnumSwitchMapping$12 = iArr13;
            int[] iArr14 = new int[BBDeviceController.DeviceResetReason.values().length];
            try {
                iArr14[BBDeviceController.DeviceResetReason.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused177) {
            }
            try {
                iArr14[BBDeviceController.DeviceResetReason.APP_RESET_DEVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused178) {
            }
            try {
                iArr14[BBDeviceController.DeviceResetReason.FIRMWARE_SELF_TEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused179) {
            }
            try {
                iArr14[BBDeviceController.DeviceResetReason.RECOVERY_ATTEMPT.ordinal()] = 4;
            } catch (NoSuchFieldError unused180) {
            }
            try {
                iArr14[BBDeviceController.DeviceResetReason.WATCHDOG_TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused181) {
            }
            $EnumSwitchMapping$13 = iArr14;
            int[] iArr15 = new int[BBDeviceController.PinPadTouchEvent.values().length];
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.BACKSPACE_KEY_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused182) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.OUT_OF_PIN_PAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused183) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.NEW_KEY_DETECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused184) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.CLEAR_KEY_DETECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused185) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.CANCEL_KEY_DETECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused186) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.ENTER_KEY_DETECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused187) {
            }
            try {
                iArr15[BBDeviceController.PinPadTouchEvent.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH.ordinal()] = 7;
            } catch (NoSuchFieldError unused188) {
            }
            $EnumSwitchMapping$14 = iArr15;
        }
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTRequestPairing() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTScanStopped() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTScanTimeout() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBarcodeReaderConnected() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBarcodeReaderDisconnected() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onDeviceDisplayingPrompt() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onDeviceHere(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onEnterStandbyMode() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPowerConnected(BBDeviceController.PowerSource powerSource, BBDeviceController.BatteryStatus batteryStatus) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPowerDisconnected(BBDeviceController.PowerSource powerSource) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPrintDataCancelled() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPrintDataEnd() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestAmountConfirm(Hashtable<String, String> p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestClearDisplay() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestDisplayLEDIndicator(BBDeviceController.ContactlessStatus p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestKeypadResponse() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestOtherAmount(BBDeviceController.AmountInputType amountInputType) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestPrintData(int p0, boolean p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestSetAmount() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestStartEmv() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestTerminalTime() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestVirtuCryptPEDIResponse(boolean p0, Hashtable<String, String> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestVirtuCryptPEDKResponse(boolean p0, Hashtable<String, String> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnAccountSelectionResult(BBDeviceController.AccountSelectionResult accountSelectionResult, int i) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnAmountConfirmResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnApduResult(boolean p0, Hashtable<String, Object> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnBarcode(String p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnCAPKDetail(CAPK capk) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnCAPKList(List<CAPK> p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnCAPKLocation(String p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnControlLEDResult(boolean p0, String p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDisableAccountSelectionResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDisableBluetoothResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDisableFactoryModeResult(boolean p0, String p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDisplayPromptResult(BBDeviceController.DisplayPromptResult displayPromptResult) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEmvCardDataResult(boolean p0, String p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEmvCardNumber(boolean p0, String p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEmvReport(String p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEmvReportList(Hashtable<String, String> p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEnableAccountSelectionResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEnableBluetoothResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEnableInputAmountResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnFunctionKey(BBDeviceController.FunctionKey p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnNfcDataExchangeResult(boolean p0, Hashtable<String, String> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnNfcDetectCardResult(BBDeviceController.NfcDetectCardResult nfcDetectCardResult, Hashtable<String, Object> hashtable) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnPowerOffIccResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnPowerOnIccResult(boolean p0, String p1, String p2, int p3) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnPrintResult(BBDeviceController.PrintResult p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnReadDisplaySettingsResult(boolean p0, Hashtable<String, Object> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnReadDisplayStringResult(boolean p0, Hashtable<String, String> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnRemoveCAPKResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnSetPinPadOrientationResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateCAPKResult(boolean p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateDisplaySettingsProgress(double p0) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateDisplayStringResult(boolean p0, String p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnVasResult(BBDeviceController.VASResult vASResult, Hashtable<String, Object> hashtable) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnVirtuCryptPEDICommandResult(boolean p0, Hashtable<String, String> p1) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnVirtuCryptPEDKCommandResult(boolean p0, Hashtable<String, String> data) {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnWatchdogTimerReset() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onTestChannelConnected() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onTestChannelDisconnected() {
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onWaitingReprintOrPrintNext() {
    }

    public BbposDeviceListenerWrapperImpl(DeviceListenerWrapper listener, DeviceInfoCache deviceInfoCache, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.listener = listener;
        this.deviceInfoCache = deviceInfoCache;
        this.logger = logger;
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onWaitingForCard(BBDeviceController.CheckCardMode p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onWaitingForCard(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTReturnScanResults(List<BluetoothDevice> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onBtReturnScanResults(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTConnected(BluetoothDevice p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onBtConnected(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBTDisconnected() {
        this.listener.onBtDisconnected();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onUsbConnected() {
        this.listener.onUsbConnected();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onUsbDisconnected() {
        this.listener.onUsbDisconnected();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onSerialConnected() {
        this.logger.i("onSerialConnected", new Pair[0]);
        this.listener.onSerialConnected();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onSerialDisconnected() {
        this.logger.i("onSerialDisconnected", new Pair[0]);
        this.listener.onSerialDisconnected();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnCheckCardResult(BBDeviceController.CheckCardResult p0, Hashtable<String, String> p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onReturnCheckCardResult(convert(p0), CardDataMapperKt.toCardData(p1));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnCancelCheckCardResult(boolean p0) {
        this.listener.onReturnCancelCheckCardResult(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDeviceInfo(Hashtable<String, String> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Hashtable<String, String> hashtable = p0;
        this.listener.onReturnDeviceInfo(DeviceInfoMapperKt.toDeviceInfo(hashtable, this.deviceInfoCache), hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnTransactionResult(BBDeviceController.TransactionResult p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnTransactionResult(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnBatchData(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnBatchData(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnReversalData(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnReversalData(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnPinEntryResult(BBDeviceController.PinEntryResult p0, Hashtable<String, String> hashtable) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        DeviceListenerWrapper deviceListenerWrapper = this.listener;
        PinEntryResult.Type typeConvert = convert(p0);
        deviceListenerWrapper.onReturnPinEntryResult(typeConvert, new PinData(hashtable != null ? hashtable.get("ksn") : null, hashtable != null ? hashtable.get("epb") : null, null, 4, null));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnAmount(BBDeviceController.AmountInputResult p0, Hashtable<String, String> p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onReturnAmount(convert(p0), p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateAIDResult(Hashtable<String, Object> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        DeviceListenerWrapper deviceListenerWrapper = this.listener;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : p0.entrySet()) {
            if (entry.getValue() instanceof BBDeviceController.TerminalSettingStatus) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap2.size()));
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            Object key = entry2.getKey();
            Object value = entry2.getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type com.bbpos.bbdevice.BBDeviceController.TerminalSettingStatus");
            linkedHashMap3.put(key, convert((BBDeviceController.TerminalSettingStatus) value));
        }
        deviceListenerWrapper.onReturnUpdateAidResult(linkedHashMap3);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateTerminalSettingResult(BBDeviceController.TerminalSettingStatus p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnUpdateTerminalSettingResult(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateTerminalSettingsResult(Hashtable<String, BBDeviceController.TerminalSettingStatus> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        DeviceListenerWrapper deviceListenerWrapper = this.listener;
        Hashtable<String, BBDeviceController.TerminalSettingStatus> hashtable = p0;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(hashtable.size()));
        Iterator<T> it = hashtable.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            linkedHashMap.put(key, convert((BBDeviceController.TerminalSettingStatus) value));
        }
        deviceListenerWrapper.onReturnUpdateTerminalSettingsResult(linkedHashMap);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnReadAIDResult(Hashtable<String, Object> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnReadAidResult(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnReadTerminalSettingResult(Hashtable<String, Object> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Set<Map.Entry<String, Object>> setEntrySet = p0.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Intrinsics.checkNotNull(entry);
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if ((value instanceof BBDeviceController.TerminalSettingStatus) && value != BBDeviceController.TerminalSettingStatus.SUCCESS) {
                this.logger.e("Failed to read terminal setting", TuplesKt.to(str, value));
            } else if (!(value instanceof String)) {
                this.logger.e("Unsupported terminal setting type", TuplesKt.to("class", value.getClass()), TuplesKt.to(str, value));
            }
        }
        this.listener.onReturnReadTerminalSettingResult(ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_ACQUIRER_IDENTIFIER)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TERMINAL_COUNTRY_CODE)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TRANSACTION_CURRENCY_CODE)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_MERCHANT_NAME)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_MERCHANT_IDENTIFIER)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TERMINAL_IDENTIFICATION)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TERMINAL_CAPABILITIES)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_TERMINAL_TYPE)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_ADDITIONAL_TERMINAL_CAPABILITIES)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_NORMAL_MODE_TIMEOUT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_STANDBY_MODE_TIMEOUT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_MSR_PIN_ENTRY_TIMEOUT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_FIRMWARE_FALLBACK_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_CUSTOM_BLUETOOTH_NAME_PREFIX)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_CUSTOM_BLUETOOTH_SERIAL_SUFFIX)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_FIRMWARE_FORCE_CHIP_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_ICC_TRANSACTION_BEEP_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_KEYPAD_EVENT_BEEP_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_SPOC_MODE_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_DOMESTIC_DEBIT_AID_LIST)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_VISA_DYNAMIC_READER_LIMIT)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_BUZZER_SOUND_ENABLED)), ReadTerminalSettingResultMapperKt.convert(p0.get(TlvMap.TAG_CONFIG_HASH)));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDisableInputAmountResult(boolean p0) {
        this.listener.onReturnDisableInputAmountResult(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnEncryptDataResult(boolean p0, Hashtable<String, String> p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onReturnEncryptDataResult(p0, p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestSelectApplication(ArrayList<String> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestSelectApplication(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestSelectAccountType() {
        this.listener.onRequestSelectAccountType();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestPinEntry(BBDeviceController.PinEntrySource p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestPinEntry(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestManualPanEntry(BBDeviceController.ManualPanEntryType p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestManualPanEntry(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnSetPinPadButtonsResult(boolean p0) {
        this.listener.onReturnSetPinPadButtonsResult(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnUpdateDisplaySettingsResult(boolean p0, String p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onReturnUpdateDisplaySettingsResult(p0, p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestOnlineProcess(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestOnlineProcess(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestDisplayText(BBDeviceController.DisplayText p0, String p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onRequestDisplayText(convert(p0), p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestDisplayAsterisk(String p0, int p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestDisplayAsterisk(p0, p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestProduceAudioTone(BBDeviceController.ContactlessStatusTone p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onRequestProduceAudioTone(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnAccessiblePINPadTouchEvent(BBDeviceController.PinPadTouchEvent p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        DeviceListenerWrapper deviceListenerWrapper = this.listener;
        PinPadTouchEvent pinPadTouchEventConvert = convert(p0);
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        deviceListenerWrapper.onReturnAccessiblePinPadTouchEvent(pinPadTouchEventConvert, uuidRandomUUID);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onRequestFinalConfirm() {
        this.listener.onRequestFinalConfirm();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onBatteryLow(BBDeviceController.BatteryStatus p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onBatteryLow(convert(p0));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onError(BBDeviceController.Error p0, String p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onError(convert(p0), p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onSessionInitialized() {
        this.listener.onSessionInitialized();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onSessionError(BBDeviceController.SessionError p0, String p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onSessionError(convert(p0), p1);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onReturnDebugLog(Hashtable<String, Object> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.listener.onReturnDebugLog(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onHardwareFunctionalTestResult(int p0, int p1, String p2) {
        this.listener.onHardwareFunctionalTestResult(p0, p1, p2);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onDeviceResetAlert(int p0) {
        this.listener.onDeviceResetAlert(p0);
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onDeviceReset(boolean z, BBDeviceController.DeviceResetReason p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        this.listener.onDeviceReset(z, convert(p1));
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPowerButtonPressed() {
        this.listener.onPowerButtonPressed();
    }

    @Override // com.stripe.bbpos.bbdevice.BBDeviceController.BBDeviceControllerListener
    public void onPowerDown() {
        this.listener.onPowerDown();
    }

    private final CheckCardMode convert(BBDeviceController.CheckCardMode checkCardMode) {
        switch (WhenMappings.$EnumSwitchMapping$0[checkCardMode.ordinal()]) {
            case 1:
                return CheckCardMode.SWIPE;
            case 2:
                return CheckCardMode.INSERT;
            case 3:
                return CheckCardMode.TAP;
            case 4:
                return CheckCardMode.SWIPE_OR_INSERT;
            case 5:
                return CheckCardMode.SWIPE_OR_TAP;
            case 6:
                return CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
            case 7:
                return CheckCardMode.INSERT_OR_TAP;
            case 8:
                return CheckCardMode.MANUAL_PAN_ENTRY;
            case 9:
                return CheckCardMode.QR_CODE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final CheckCardResult.Type convert(BBDeviceController.CheckCardResult checkCardResult) {
        switch (WhenMappings.$EnumSwitchMapping$1[checkCardResult.ordinal()]) {
            case 1:
                return CheckCardResult.Type.NO_CARD;
            case 2:
                return CheckCardResult.Type.INSERTED_CARD;
            case 3:
                return CheckCardResult.Type.NOT_ICC;
            case 4:
                return CheckCardResult.Type.BAD_SWIPE;
            case 5:
                return CheckCardResult.Type.MSR;
            case 6:
                return CheckCardResult.Type.MAG_HEAD_FAIL;
            case 7:
                return CheckCardResult.Type.USE_ICC_CARD;
            case 8:
                return CheckCardResult.Type.TAP_CARD_DETECTED;
            case 9:
                return CheckCardResult.Type.MANUAL_PAN_ENTRY;
            case 10:
                return CheckCardResult.Type.CARD_NOT_SUPPORTED;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final TransactionResult.Type convert(BBDeviceController.TransactionResult transactionResult) {
        switch (WhenMappings.$EnumSwitchMapping$2[transactionResult.ordinal()]) {
            case 1:
                return TransactionResult.Type.APPROVED;
            case 2:
                return TransactionResult.Type.TERMINATED;
            case 3:
                return TransactionResult.Type.DECLINED;
            case 4:
                return TransactionResult.Type.CANCELED_OR_TIMEOUT;
            case 5:
                return TransactionResult.Type.CAPK_FAIL;
            case 6:
                return TransactionResult.Type.NOT_ICC;
            case 7:
                return TransactionResult.Type.CARD_BLOCKED;
            case 8:
                return TransactionResult.Type.DEVICE_ERROR;
            case 9:
                return TransactionResult.Type.SELECT_APP_FAIL;
            case 10:
                return TransactionResult.Type.CARD_NOT_SUPPORTED;
            case 11:
                return TransactionResult.Type.MISSING_MANDATORY_DATA;
            case 12:
                return TransactionResult.Type.NO_EMV_APPS;
            case 13:
                return TransactionResult.Type.INVALID_ICC_DATA;
            case 14:
                return TransactionResult.Type.CONDITION_NOT_SATISFIED;
            case 15:
                return TransactionResult.Type.APPLICATION_BLOCKED;
            case 16:
                return TransactionResult.Type.ICC_CARD_REMOVED;
            case 17:
                return TransactionResult.Type.CARD_SCHEME_NOT_MATCHED;
            case 18:
                return TransactionResult.Type.CANCELED;
            case 19:
                return TransactionResult.Type.TIMEOUT;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final PinEntryResult.Type convert(BBDeviceController.PinEntryResult pinEntryResult) {
        switch (WhenMappings.$EnumSwitchMapping$3[pinEntryResult.ordinal()]) {
            case 1:
                return PinEntryResult.Type.ENTERED;
            case 2:
                return PinEntryResult.Type.CANCEL;
            case 3:
                return PinEntryResult.Type.TIMEOUT;
            case 4:
                return PinEntryResult.Type.BYPASS;
            case 5:
                return PinEntryResult.Type.WRONG_PIN_LENGTH;
            case 6:
                return PinEntryResult.Type.INCORRECT_PIN;
            case 7:
                return PinEntryResult.Type.ICC_REMOVED;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final AmountInputResult convert(BBDeviceController.AmountInputResult amountInputResult) {
        int i = WhenMappings.$EnumSwitchMapping$4[amountInputResult.ordinal()];
        if (i == 1) {
            return AmountInputResult.SUCCESS;
        }
        if (i == 2) {
            return AmountInputResult.CANCEL;
        }
        if (i == 3) {
            return AmountInputResult.TIMEOUT;
        }
        if (i == 4) {
            return AmountInputResult.INVALID_AMOUNT;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final TerminalSettingStatus convert(BBDeviceController.TerminalSettingStatus terminalSettingStatus) {
        switch (WhenMappings.$EnumSwitchMapping$5[terminalSettingStatus.ordinal()]) {
            case 1:
                return TerminalSettingStatus.SUCCESS;
            case 2:
                return TerminalSettingStatus.TLV_INCORRECT;
            case 3:
                return TerminalSettingStatus.TAG_NOT_FOUND;
            case 4:
                return TerminalSettingStatus.LENGTH_INCORRECT;
            case 5:
                return TerminalSettingStatus.BOOTLOADER_NOT_SUPPORT;
            case 6:
                return TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS;
            case 7:
                return TerminalSettingStatus.TAG_NOT_WRITTEN_CORRECTLY;
            case 8:
                return TerminalSettingStatus.INVALID_VALUE;
            case 9:
                return TerminalSettingStatus.USER_DEFINED_DATA_NOT_ENABLED;
            case 10:
                return TerminalSettingStatus.TAG_NOT_UPDATED;
            case 11:
                return TerminalSettingStatus.UNKNOWN;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final PinEntrySource convert(BBDeviceController.PinEntrySource pinEntrySource) {
        int i = WhenMappings.$EnumSwitchMapping$6[pinEntrySource.ordinal()];
        if (i == 1) {
            return PinEntrySource.PHONE;
        }
        if (i == 2) {
            return PinEntrySource.KEYPAD;
        }
        if (i == 3) {
            return PinEntrySource.SMARTPOS;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final DisplayText convert(BBDeviceController.DisplayText displayText) {
        switch (WhenMappings.$EnumSwitchMapping$7[displayText.ordinal()]) {
            case 1:
                return DisplayText.APPROVED;
            case 2:
                return DisplayText.CALL_YOUR_BANK;
            case 3:
                return DisplayText.DECLINED;
            case 4:
                return DisplayText.ENTER_AMOUNT;
            case 5:
                return DisplayText.ENTER_PIN;
            case 6:
                return DisplayText.INCORRECT_PIN;
            case 7:
                return DisplayText.INSERT_CARD;
            case 8:
                return DisplayText.NOT_ACCEPTED;
            case 9:
                return DisplayText.PIN_OK;
            case 10:
                return DisplayText.PLEASE_WAIT;
            case 11:
                return DisplayText.REMOVE_CARD;
            case 12:
                return DisplayText.USE_MAG_STRIPE;
            case 13:
                return DisplayText.TRY_AGAIN;
            case 14:
                return DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE;
            case 15:
                return DisplayText.TRANSACTION_TERMINATED;
            case 16:
                return DisplayText.PROCESSING;
            case 17:
                return DisplayText.LAST_PIN_TRY;
            case 18:
                return DisplayText.SELECT_ACCOUNT;
            case 19:
                return DisplayText.PRESENT_CARD;
            case 20:
                return DisplayText.APPROVED_PLEASE_SIGN;
            case 21:
                return DisplayText.PRESENT_CARD_AGAIN;
            case 22:
                return DisplayText.AUTHORISING;
            case 23:
                return DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD;
            case 24:
                return DisplayText.INSERT_OR_SWIPE_CARD;
            case 25:
                return DisplayText.MULTIPLE_CARDS_DETECTED;
            case 26:
                return DisplayText.TIMEOUT;
            case 27:
                return DisplayText.APPLICATION_EXPIRED;
            case 28:
                return DisplayText.FINAL_CONFIRM;
            case 29:
                return DisplayText.SHOW_THANK_YOU;
            case 30:
                return DisplayText.PIN_TRY_LIMIT_EXCEEDED;
            case 31:
                return DisplayText.NOT_ICC_CARD;
            case 32:
                return DisplayText.CARD_INSERTED;
            case 33:
                return DisplayText.CARD_REMOVED;
            case 34:
                return DisplayText.NO_EMV_APPS;
            case 35:
                return DisplayText.CTL_NO_EMV_APPS;
            case 36:
                return DisplayText.CTL_APP_NOT_SUPPORTED;
            case 37:
                return DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED;
            case 38:
                return DisplayText.INVALID_INPUT;
            case 39:
                return DisplayText.CARD_ERROR;
            case 40:
                return DisplayText.TOO_MANY_TAPS;
            case 41:
                return DisplayText.CARD_IS_STILL_INSERTED;
            case 42:
                return DisplayText.DPAS_CDCVM;
            case 43:
                return DisplayText.CARD_NOT_ADMITTED;
            case 44:
                return DisplayText.INVALID_TRANSACTION;
            case 45:
                return DisplayText.INVALID_CARD_NUMBER;
            case 46:
                return DisplayText.SYSTEM_MALFUNCTION;
            case 47:
                return DisplayText.EXPIRED_CARD;
            case 48:
                return DisplayText.TRANSACTION_NOT_PERMITTED;
            case 49:
                return DisplayText.INVALID_FUNCTION;
            case 50:
                return DisplayText.INVALID_CARD;
            case 51:
                return DisplayText.WRONG_CARD;
            case 52:
                return DisplayText.TERMINAL_NOT_PERMITTED;
            case 53:
                return DisplayText.ORIGINAL_AMOUNT_INCORRECT;
            case 54:
                return DisplayText.CARD_NOT_READABLE;
            case 55:
                return DisplayText.AUTHENTICATION_REQUIRED;
            case 56:
                return DisplayText.DECLINED_WITH_RESPONSE_CODE_05;
            case 57:
                return DisplayText.NOT_ACCEPTED_TRY_AGAIN;
            case 58:
                return DisplayText.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN;
            case 59:
                return DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD;
            case 60:
                return DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD;
            case 61:
                return DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final ManualPanEntryType convert(BBDeviceController.ManualPanEntryType manualPanEntryType) {
        int i = WhenMappings.$EnumSwitchMapping$8[manualPanEntryType.ordinal()];
        if (i == 1) {
            return ManualPanEntryType.PAN;
        }
        if (i == 2) {
            return ManualPanEntryType.EXPIRY_DATE;
        }
        if (i == 3) {
            return ManualPanEntryType.CVV;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final ContactlessStatusTone convert(BBDeviceController.ContactlessStatusTone contactlessStatusTone) {
        int i = WhenMappings.$EnumSwitchMapping$9[contactlessStatusTone.ordinal()];
        if (i == 1) {
            return ContactlessStatusTone.SUCCESS;
        }
        if (i == 2) {
            return ContactlessStatusTone.ALERT;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final BatteryStatus convert(BBDeviceController.BatteryStatus batteryStatus) {
        int i = WhenMappings.$EnumSwitchMapping$10[batteryStatus.ordinal()];
        if (i == 1) {
            return BatteryStatus.LOW;
        }
        if (i == 2) {
            return BatteryStatus.CRITICALLY_LOW;
        }
        if (i == 3) {
            return BatteryStatus.CHARGING;
        }
        if (i == 4) {
            return BatteryStatus.NOT_CHARGING;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final Error convert(BBDeviceController.Error error) {
        switch (WhenMappings.$EnumSwitchMapping$11[error.ordinal()]) {
            case 1:
                return Error.UNKNOWN;
            case 2:
                return Error.CMD_NOT_AVAILABLE;
            case 3:
                return Error.DEVICE_BUSY;
            case 4:
                return Error.INPUT_OUT_OF_RANGE;
            case 5:
                return Error.INPUT_INVALID_FORMAT;
            case 6:
                return Error.INPUT_INVALID;
            case 7:
                return Error.CASHBACK_NOT_SUPPORTED;
            case 8:
                return Error.COMM_ERROR;
            case 9:
                return Error.FAIL_TO_START_BT;
            case 10:
                return Error.VOLUME_WARNING_NOT_ACCEPTED;
            case 11:
                return Error.FAIL_TO_START_AUDIO;
            case 12:
                return Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE;
            case 13:
                return Error.COMM_LINK_UNINITIALIZED;
            case 14:
                return Error.BTV4_NOT_SUPPORTED;
            case 15:
                return Error.FAIL_TO_START_SERIAL;
            case 16:
                return Error.FAIL_TO_START_USB;
            case 17:
                return Error.USB_DEVICE_NOT_FOUND;
            case 18:
                return Error.USB_DEVICE_PERMISSION_DENIED;
            case 19:
                return Error.USB_NOT_SUPPORTED;
            case 20:
                return Error.CHANNEL_BUFFER_FULL;
            case 21:
                return Error.BLUETOOTH_PERMISSION_DENIED;
            case 22:
                return Error.HARDWARE_NOT_SUPPORTED;
            case 23:
                return Error.TAMPER;
            case 24:
                return Error.PCI_ERROR;
            case 25:
                return Error.AUDIO_PERMISSION_DENIED;
            case 26:
                return Error.BLUETOOTH_LOCATION_PERMISSION_DENIED;
            case 27:
                return Error.SERIAL_PERMISSION_DENIED;
            case 28:
                return Error.PAIRING_ERROR;
            case 29:
                return Error.PAIRING_ERROR_INCORRECT_PASSKEY;
            case 30:
                return Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE;
            case 31:
                return Error.BLE_SECURE_CONNECTION_NOT_SUPPORTED;
            case 32:
                return Error.NFC_NOT_SUPPORTED;
            case 33:
                return Error.NFC_PERMISSION_DENIED;
            case 34:
                return Error.NFC_DISABLED;
            case 35:
                return Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE;
            case 36:
                return Error.CONTACTLESS_ERROR;
            case 37:
                return Error.NOT_COMPATIBLE_ERROR;
            case 38:
                return Error.INTEGRITY_CHECK_ERROR;
            case 39:
                return Error.FAIL_TO_START_TEST_CHANNEL;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final SessionError convert(BBDeviceController.SessionError sessionError) {
        int i = WhenMappings.$EnumSwitchMapping$12[sessionError.ordinal()];
        if (i == 1) {
            return SessionError.FIRMWARE_NOT_SUPPORTED;
        }
        if (i == 2) {
            return SessionError.SESSION_NOT_INITIALIZED;
        }
        if (i == 3) {
            return SessionError.INVALID_VENDOR_TOKEN;
        }
        if (i == 4) {
            return SessionError.INVALID_SESSION;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final DeviceResetReason convert(BBDeviceController.DeviceResetReason deviceResetReason) {
        int i = WhenMappings.$EnumSwitchMapping$13[deviceResetReason.ordinal()];
        if (i == 1) {
            return DeviceResetReason.UNKNOWN;
        }
        if (i == 2) {
            return DeviceResetReason.APP_RESET_DEVICE;
        }
        if (i == 3) {
            return DeviceResetReason.FIRMWARE_SELF_TEST;
        }
        if (i == 4) {
            return DeviceResetReason.RECOVERY_ATTEMPT;
        }
        if (i == 5) {
            return DeviceResetReason.WATCHDOG_TIMEOUT;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final PinPadTouchEvent convert(BBDeviceController.PinPadTouchEvent pinPadTouchEvent) {
        switch (WhenMappings.$EnumSwitchMapping$14[pinPadTouchEvent.ordinal()]) {
            case 1:
                return PinPadTouchEvent.BACKSPACE_KEY_DETECTED;
            case 2:
                return PinPadTouchEvent.OUT_OF_PIN_PAD;
            case 3:
                return PinPadTouchEvent.NEW_KEY_DETECTED;
            case 4:
                return PinPadTouchEvent.CLEAR_KEY_DETECTED;
            case 5:
                return PinPadTouchEvent.CANCEL_KEY_DETECTED;
            case 6:
                return PinPadTouchEvent.ENTER_KEY_DETECTED;
            case 7:
                return PinPadTouchEvent.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
