package com.stripe.core.hardware.reactive;

import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ReaderInfoRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001!B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016H\u0086@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fR\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\""}, d2 = {"Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerInfoHandler", "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "_readerInfo", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/hardware/status/ReaderInfo;", "readerInfo", "Lkotlinx/coroutines/flow/StateFlow;", "getReaderInfo", "()Lkotlinx/coroutines/flow/StateFlow;", "awaitRefresh", "Lkotlin/Result;", "awaitRefresh-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllMissingReaderKeys", "", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;", "isReaderMissingKey", "", "refresh", "", "refreshIfNull", "KeyType", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInfoRepository {
    private final MutableStateFlow<ReaderInfo> _readerInfo;
    private final CoroutineDispatcher io;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final StateFlow<ReaderInfo> readerInfo;
    private final ReaderInfoHandler readerInfoHandler;
    private final CoroutineScope scope;

    public ReaderInfoRepository(CoroutineScope scope, CoroutineDispatcher io2, ReaderInfoHandler readerInfoHandler, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerInfoHandler, "readerInfoHandler");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scope = scope;
        this.io = io2;
        this.readerInfoHandler = readerInfoHandler;
        this.logger = logger;
        MutableStateFlow<ReaderInfo> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._readerInfo = MutableStateFlow;
        this.readerInfo = MutableStateFlow;
    }

    public final StateFlow<ReaderInfo> getReaderInfo() {
        return this.readerInfo;
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.ReaderInfoRepository$refresh$1, reason: invalid class name */
    /* JADX INFO: compiled from: ReaderInfoRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoRepository$refresh$1", f = "ReaderInfoRepository.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ReaderInfoRepository.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ReaderInfoRepository.this.m465awaitRefreshIoAF18A(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    public final void refresh() {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.ReaderInfoRepository$refreshIfNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReaderInfoRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoRepository$refreshIfNull$1", f = "ReaderInfoRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02271(Continuation<? super C02271> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ReaderInfoRepository.this.new C02271(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (ReaderInfoRepository.this._readerInfo.getValue() == null) {
                    ReaderInfoRepository.this.refresh();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void refreshIfNull() {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02271(null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: awaitRefresh-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m465awaitRefreshIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<com.stripe.hardware.status.ReaderInfo>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$1
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$1 r0 = (com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$1 r0 = new com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$1
            r0.<init>(r5, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.CoroutineDispatcher r6 = r5.io
            kotlin.coroutines.CoroutineContext r6 = (kotlin.coroutines.CoroutineContext) r6
            com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$2 r2 = new com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$2
            r4 = 0
            r2.<init>(r5, r4)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.getValue()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoRepository.m465awaitRefreshIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean isReaderMissingKey() {
        return !getAllMissingReaderKeys().isEmpty();
    }

    public final Set<KeyType> getAllMissingReaderKeys() {
        String str;
        String trackKeysetId;
        String pinKeysetId;
        String emvKeysetId;
        String macKeysetId;
        this.logger.d("Checking if reader is missing keys", new Pair[0]);
        ReaderInfo value = this.readerInfo.getValue();
        if (value == null) {
            this.logger.d("Reader info empty, cannot determine key state", new Pair[0]);
            return SetsKt.emptySet();
        }
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        String macKeyProfileId = value.getMacKeyProfileId();
        if (macKeyProfileId != null && !StringsKt.isBlank(macKeyProfileId) && ((macKeysetId = value.getMacKeysetId()) == null || macKeysetId.length() == 0)) {
            setCreateSetBuilder.add(KeyType.MAC);
        }
        String emvKeyProfileId = value.getEmvKeyProfileId();
        if (emvKeyProfileId != null && !StringsKt.isBlank(emvKeyProfileId) && ((emvKeysetId = value.getEmvKeysetId()) == null || StringsKt.isBlank(emvKeysetId))) {
            setCreateSetBuilder.add(KeyType.EMV);
        }
        String pinKeyProfileId = value.getPinKeyProfileId();
        if (pinKeyProfileId != null && !StringsKt.isBlank(pinKeyProfileId) && ((pinKeysetId = value.getPinKeysetId()) == null || pinKeysetId.length() == 0)) {
            setCreateSetBuilder.add(KeyType.PIN);
        }
        String trackKeyProfileId = value.getTrackKeyProfileId();
        if (trackKeyProfileId != null && !StringsKt.isBlank(trackKeyProfileId) && ((trackKeysetId = value.getTrackKeysetId()) == null || trackKeysetId.length() == 0)) {
            setCreateSetBuilder.add(KeyType.TRACK);
        }
        Set<KeyType> setBuild = SetsKt.build(setCreateSetBuilder);
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
        if (setBuild.isEmpty()) {
            str = "No keys missing";
        } else {
            str = "List of keys missing: " + CollectionsKt.joinToString$default(setBuild, ",", null, null, 0, null, new Function1<KeyType, CharSequence>() { // from class: com.stripe.core.hardware.reactive.ReaderInfoRepository$getAllMissingReaderKeys$1$2$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(ReaderInfoRepository.KeyType it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getSplunkLogName();
                }
            }, 30, null);
        }
        simpleLogger.d(str, new Pair[0]);
        return setBuild;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderInfoRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;", "", "splunkLogName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getSplunkLogName", "()Ljava/lang/String;", "MAC", "EMV", "PIN", "TRACK", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class KeyType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ KeyType[] $VALUES;
        private final String splunkLogName;
        public static final KeyType MAC = new KeyType("MAC", 0, "mac");
        public static final KeyType EMV = new KeyType("EMV", 1, "emv");
        public static final KeyType PIN = new KeyType("PIN", 2, "pin");
        public static final KeyType TRACK = new KeyType("TRACK", 3, "track");

        private static final /* synthetic */ KeyType[] $values() {
            return new KeyType[]{MAC, EMV, PIN, TRACK};
        }

        public static EnumEntries<KeyType> getEntries() {
            return $ENTRIES;
        }

        public static KeyType valueOf(String str) {
            return (KeyType) Enum.valueOf(KeyType.class, str);
        }

        public static KeyType[] values() {
            return (KeyType[]) $VALUES.clone();
        }

        private KeyType(String str, int i, String str2) {
            this.splunkLogName = str2;
        }

        public final String getSplunkLogName() {
            return this.splunkLogName;
        }

        static {
            KeyType[] keyTypeArr$values = $values();
            $VALUES = keyTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(keyTypeArr$values);
        }
    }
}
