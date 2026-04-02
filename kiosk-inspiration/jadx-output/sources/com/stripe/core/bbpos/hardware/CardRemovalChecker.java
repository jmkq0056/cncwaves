package com.stripe.core.bbpos.hardware;

import com.stripe.bbpos.sdk.CheckCardResult;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: CardRemovalChecker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0011\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u000eH\u0082@¢\u0006\u0002\u0010\u0019R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "cardRemovalCheckStatus", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;", "cardStatusCheckJob", "Lkotlinx/coroutines/Job;", "checkCardOp", "Lkotlin/Function0;", "", "deviceBusyDetector", "Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;", "checkCardUntilRemoved", "checkCard", "onCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "shouldFakeCardEmptyOnDeviceBusy", "", "stop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitForCardCheckResult", "CardRemovalCheckStatus", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardRemovalChecker {
    private final MutableStateFlow<CardRemovalCheckStatus> cardRemovalCheckStatus;
    private Job cardStatusCheckJob;
    private Function0<Unit> checkCardOp;
    private final CardRemovalDeviceBusyDetector deviceBusyDetector;
    private final CoroutineScope scope;

    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckCardResult.Type.values().length];
            try {
                iArr[CheckCardResult.Type.NO_CARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckCardResult.Type.INSERTED_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckCardResult.Type.NOT_ICC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CheckCardResult.Type.BAD_SWIPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CheckCardResult.Type.MSR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CheckCardResult.Type.MAG_HEAD_FAIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CheckCardResult.Type.USE_ICC_CARD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CheckCardResult.Type.TAP_CARD_DETECTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[CheckCardResult.Type.MANUAL_PAN_ENTRY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[CheckCardResult.Type.CARD_NOT_SUPPORTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.CardRemovalChecker$stop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.hardware.CardRemovalChecker", f = "CardRemovalChecker.kt", i = {0}, l = {WinError.ERROR_ALREADY_ASSIGNED}, m = "stop", n = {"this"}, s = {"L$0"})
    static final class C01801 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01801(Continuation<? super C01801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CardRemovalChecker.this.stop(this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.hardware.CardRemovalChecker", f = "CardRemovalChecker.kt", i = {0}, l = {WinError.ERROR_CALL_NOT_IMPLEMENTED}, m = "waitForCardCheckResult", n = {"this"}, s = {"L$0"})
    static final class C01811 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01811(Continuation<? super C01811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CardRemovalChecker.this.waitForCardCheckResult(this);
        }
    }

    public CardRemovalChecker(CoroutineScope scope, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.scope = scope;
        this.cardRemovalCheckStatus = StateFlowKt.MutableStateFlow(CardRemovalCheckStatus.IDLE);
        this.checkCardOp = new Function0<Unit>() { // from class: com.stripe.core.bbpos.hardware.CardRemovalChecker$checkCardOp$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.deviceBusyDetector = new CardRemovalDeviceBusyDetector(loggerFactory.create(Reflection.getOrCreateKotlinClass(CardRemovalDeviceBusyDetector.class)));
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;", "", "(Ljava/lang/String;I)V", "IDLE", "CHECKING", "TIMEOUT", "STILL_INSERTED", "REMOVED", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardRemovalCheckStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CardRemovalCheckStatus[] $VALUES;
        public static final CardRemovalCheckStatus IDLE = new CardRemovalCheckStatus("IDLE", 0);
        public static final CardRemovalCheckStatus CHECKING = new CardRemovalCheckStatus("CHECKING", 1);
        public static final CardRemovalCheckStatus TIMEOUT = new CardRemovalCheckStatus("TIMEOUT", 2);
        public static final CardRemovalCheckStatus STILL_INSERTED = new CardRemovalCheckStatus("STILL_INSERTED", 3);
        public static final CardRemovalCheckStatus REMOVED = new CardRemovalCheckStatus("REMOVED", 4);

        private static final /* synthetic */ CardRemovalCheckStatus[] $values() {
            return new CardRemovalCheckStatus[]{IDLE, CHECKING, TIMEOUT, STILL_INSERTED, REMOVED};
        }

        public static EnumEntries<CardRemovalCheckStatus> getEntries() {
            return $ENTRIES;
        }

        public static CardRemovalCheckStatus valueOf(String str) {
            return (CardRemovalCheckStatus) Enum.valueOf(CardRemovalCheckStatus.class, str);
        }

        public static CardRemovalCheckStatus[] values() {
            return (CardRemovalCheckStatus[]) $VALUES.clone();
        }

        private CardRemovalCheckStatus(String str, int i) {
        }

        static {
            CardRemovalCheckStatus[] cardRemovalCheckStatusArr$values = $values();
            $VALUES = cardRemovalCheckStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(cardRemovalCheckStatusArr$values);
        }
    }

    public final void checkCardUntilRemoved(Function0<Unit> checkCard) {
        Intrinsics.checkNotNullParameter(checkCard, "checkCard");
        this.checkCardOp = checkCard;
        Job job = this.cardStatusCheckJob;
        if (job == null || !job.isActive()) {
            this.cardStatusCheckJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.CardRemovalChecker$checkCardUntilRemoved$1, reason: invalid class name */
    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.hardware.CardRemovalChecker$checkCardUntilRemoved$1", f = "CardRemovalChecker.kt", i = {0, 1}, l = {63, 64}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, s = {"L$0", "L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = CardRemovalChecker.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        
            if (r6.this$0.waitForCardCheckResult(r6) != r0) goto L8;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x003d A[Catch: all -> 0x008c, TryCatch #0 {all -> 0x008c, blocks: (B:7:0x0012, B:25:0x0072, B:16:0x0037, B:18:0x003d, B:22:0x0062, B:12:0x0023, B:15:0x002e), top: B:32:0x0008 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006f -> B:8:0x0015). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L27
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L8c
            L15:
                r7 = r1
                goto L72
            L17:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1f:
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L8c
                goto L62
            L27:
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.L$0
                kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
                com.stripe.core.bbpos.hardware.CardRemovalChecker r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this     // Catch: java.lang.Throwable -> L8c
                com.stripe.core.bbpos.hardware.CardRemovalDeviceBusyDetector r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getDeviceBusyDetector$p(r1)     // Catch: java.lang.Throwable -> L8c
                r1.onCardRemovalDetectionStart()     // Catch: java.lang.Throwable -> L8c
            L37:
                boolean r1 = kotlinx.coroutines.CoroutineScopeKt.isActive(r7)     // Catch: java.lang.Throwable -> L8c
                if (r1 == 0) goto L80
                com.stripe.core.bbpos.hardware.CardRemovalChecker r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this     // Catch: java.lang.Throwable -> L8c
                kotlinx.coroutines.flow.MutableStateFlow r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getCardRemovalCheckStatus$p(r1)     // Catch: java.lang.Throwable -> L8c
                com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus r4 = com.stripe.core.bbpos.hardware.CardRemovalChecker.CardRemovalCheckStatus.CHECKING     // Catch: java.lang.Throwable -> L8c
                r1.setValue(r4)     // Catch: java.lang.Throwable -> L8c
                com.stripe.core.bbpos.hardware.CardRemovalChecker r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this     // Catch: java.lang.Throwable -> L8c
                kotlin.jvm.functions.Function0 r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getCheckCardOp$p(r1)     // Catch: java.lang.Throwable -> L8c
                r1.invoke()     // Catch: java.lang.Throwable -> L8c
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.lang.Throwable -> L8c
                r6.L$0 = r7     // Catch: java.lang.Throwable -> L8c
                r6.label = r3     // Catch: java.lang.Throwable -> L8c
                r4 = 500(0x1f4, double:2.47E-321)
                java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r4, r1)     // Catch: java.lang.Throwable -> L8c
                if (r1 != r0) goto L61
                goto L71
            L61:
                r1 = r7
            L62:
                com.stripe.core.bbpos.hardware.CardRemovalChecker r7 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this     // Catch: java.lang.Throwable -> L8c
                r4 = r6
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L8c
                r6.L$0 = r1     // Catch: java.lang.Throwable -> L8c
                r6.label = r2     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r7 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$waitForCardCheckResult(r7, r4)     // Catch: java.lang.Throwable -> L8c
                if (r7 != r0) goto L15
            L71:
                return r0
            L72:
                com.stripe.core.bbpos.hardware.CardRemovalChecker r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this     // Catch: java.lang.Throwable -> L8c
                kotlinx.coroutines.flow.MutableStateFlow r1 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getCardRemovalCheckStatus$p(r1)     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L8c
                com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus r4 = com.stripe.core.bbpos.hardware.CardRemovalChecker.CardRemovalCheckStatus.REMOVED     // Catch: java.lang.Throwable -> L8c
                if (r1 != r4) goto L37
            L80:
                com.stripe.core.bbpos.hardware.CardRemovalChecker r7 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this
                com.stripe.core.bbpos.hardware.CardRemovalDeviceBusyDetector r7 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getDeviceBusyDetector$p(r7)
                r7.onCardRemovalDetectionEnd()
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            L8c:
                r7 = move-exception
                com.stripe.core.bbpos.hardware.CardRemovalChecker r0 = com.stripe.core.bbpos.hardware.CardRemovalChecker.this
                com.stripe.core.bbpos.hardware.CardRemovalDeviceBusyDetector r0 = com.stripe.core.bbpos.hardware.CardRemovalChecker.access$getDeviceBusyDetector$p(r0)
                r0.onCardRemovalDetectionEnd()
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.CardRemovalChecker.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object stop(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.stripe.core.bbpos.hardware.CardRemovalChecker.C01801
            if (r0 == 0) goto L14
            r0 = r5
            com.stripe.core.bbpos.hardware.CardRemovalChecker$stop$1 r0 = (com.stripe.core.bbpos.hardware.CardRemovalChecker.C01801) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.stripe.core.bbpos.hardware.CardRemovalChecker$stop$1 r0 = new com.stripe.core.bbpos.hardware.CardRemovalChecker$stop$1
            r0.<init>(r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.L$0
            com.stripe.core.bbpos.hardware.CardRemovalChecker r0 = (com.stripe.core.bbpos.hardware.CardRemovalChecker) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L59
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.Job r5 = r4.cardStatusCheckJob
            if (r5 == 0) goto L4d
            boolean r5 = r5.isActive()
            if (r5 != r3) goto L4d
            kotlinx.coroutines.Job r5 = r4.cardStatusCheckJob
            r2 = 0
            if (r5 == 0) goto L4b
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r5, r2, r3, r2)
        L4b:
            r4.cardStatusCheckJob = r2
        L4d:
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.waitForCardCheckResult(r0)
            if (r5 != r1) goto L58
            return r1
        L58:
            r0 = r4
        L59:
            kotlinx.coroutines.flow.MutableStateFlow<com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus> r5 = r0.cardRemovalCheckStatus
            com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus r0 = com.stripe.core.bbpos.hardware.CardRemovalChecker.CardRemovalCheckStatus.IDLE
            r5.setValue(r0)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.CardRemovalChecker.stop(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean shouldFakeCardEmptyOnDeviceBusy() {
        return this.deviceBusyDetector.shouldFakeCardEmptyOnDeviceBusy();
    }

    public final void onCheckCardResult(CheckCardResult.Type checkCardResult) {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        this.deviceBusyDetector.onReturnCheckCardResult();
        if (this.cardRemovalCheckStatus.getValue() == CardRemovalCheckStatus.CHECKING) {
            int i = WhenMappings.$EnumSwitchMapping$0[checkCardResult.ordinal()];
            if (i == 1) {
                this.cardRemovalCheckStatus.setValue(CardRemovalCheckStatus.REMOVED);
            } else if (i == 2 || i == 3) {
                this.cardRemovalCheckStatus.setValue(CardRemovalCheckStatus.STILL_INSERTED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForCardCheckResult(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.stripe.core.bbpos.hardware.CardRemovalChecker.C01811
            if (r0 == 0) goto L14
            r0 = r5
            com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$1 r0 = (com.stripe.core.bbpos.hardware.CardRemovalChecker.C01811) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$1 r0 = new com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$1
            r0.<init>(r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.L$0
            com.stripe.core.bbpos.hardware.CardRemovalChecker r0 = (com.stripe.core.bbpos.hardware.CardRemovalChecker) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4f
            goto L56
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r5)
            com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2 r5 = new com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            r2 = 0
            r5.<init>(r2)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            kotlin.jvm.functions.Function2 r5 = (kotlin.jvm.functions.Function2) r5     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            r0.L$0 = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            r0.label = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            r2 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r5 = kotlinx.coroutines.TimeoutKt.withTimeout(r2, r5, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L4e
            if (r5 != r1) goto L56
            return r1
        L4e:
            r0 = r4
        L4f:
            kotlinx.coroutines.flow.MutableStateFlow<com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus> r5 = r0.cardRemovalCheckStatus
            com.stripe.core.bbpos.hardware.CardRemovalChecker$CardRemovalCheckStatus r0 = com.stripe.core.bbpos.hardware.CardRemovalChecker.CardRemovalCheckStatus.TIMEOUT
            r5.setValue(r0)
        L56:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.CardRemovalChecker.waitForCardCheckResult(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2, reason: invalid class name */
    /* JADX INFO: compiled from: CardRemovalChecker.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2", f = "CardRemovalChecker.kt", i = {}, l = {WinError.ERROR_SEM_TIMEOUT}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CardRemovalCheckStatus>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CardRemovalChecker.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CardRemovalCheckStatus> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: CardRemovalChecker.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.core.bbpos.hardware.CardRemovalChecker$waitForCardCheckResult$2$1", f = "CardRemovalChecker.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CardRemovalCheckStatus, Continuation<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CardRemovalCheckStatus cardRemovalCheckStatus, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass1) create(cardRemovalCheckStatus, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(((CardRemovalCheckStatus) this.L$0) != CardRemovalCheckStatus.CHECKING);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object objFirst = FlowKt.first(CardRemovalChecker.this.cardRemovalCheckStatus, new AnonymousClass1(null), this);
            return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
        }
    }
}
