package com.stripe.core.readerupdate;

import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.updater.Applicator;
import com.stripe.core.updater.Ingester;
import com.stripe.jvmcore.dagger.Updates;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: UpdateInstaller.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0007\u0018\u0000 62\u00020\u0001:\u00016BG\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u001c\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005j\u0002`\t\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00060\u000bj\u0002`\r¢\u0006\u0002\u0010\u000eJ\u0006\u0010*\u001a\u00020\u0013J\b\u0010+\u001a\u00020\u0013H\u0007J\b\u0010,\u001a\u00020\u0013H\u0002J\b\u0010-\u001a\u00020\u0013H\u0002J\b\u0010.\u001a\u00020\u0013H\u0002J\u0010\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0002J\u000e\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u00020\fJ\b\u00104\u001a\u00020\u0013H\u0007J\b\u00105\u001a\u00020\u0013H\u0007R$\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005j\u0002`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00060\u000bj\u0002`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R!\u0010\u0016\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017¢\u0006\u0002\b\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R!\u0010\u001c\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017¢\u0006\u0002\b\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u001d\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017¢\u0006\u0002\b\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0012¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0015R!\u0010#\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010!0!0\u0017¢\u0006\u0002\b\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u0012¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0015R!\u0010'\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010%0%0\u0017¢\u0006\u0002\b\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateInstaller;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "applicator", "Lcom/stripe/core/updater/Applicator;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "Lcom/stripe/core/readerupdate/BbposApplicator;", "ingester", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/readerupdate/UpdateSummary;", "Lcom/stripe/core/readerupdate/ArmadaIngester;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)V", "installJob", "Lkotlinx/coroutines/Job;", "readerUpdateCancelledObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "getReaderUpdateCancelledObservable", "()Lio/reactivex/rxjava3/core/Observable;", "readerUpdateCancelledPublishable", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "readerUpdateCompleteObservable", "getReaderUpdateCompleteObservable", "readerUpdateCompletePublishable", "readerUpdateDownloadComplete", "readerUpdateDownloadCompleteObservable", "getReaderUpdateDownloadCompleteObservable", "readerUpdateExceptionObservable", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "getReaderUpdateExceptionObservable", "readerUpdateExceptionPublishable", "readerUpdateProgressObservable", "", "getReaderUpdateProgressObservable", "readerUpdateProgressPublishable", "scope", "Lkotlinx/coroutines/CoroutineScope;", "cancel", "cancelAndJoin", "completeCancel", "completeDownload", "completeInstall", "fail", "t", "", "install", "summary", "join", "reset", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateInstaller {
    private static final Log LOGGER = Log.INSTANCE.getLogger(UpdateInstaller.class);
    private final Applicator<UpdatePackage, Flow<ProgressStatus>> applicator;
    private final CoroutineDispatcher dispatcher;
    private final Ingester<UpdateSummary, UpdatePackage> ingester;
    private Job installJob;
    private final Observable<Unit> readerUpdateCancelledObservable;
    private final PublishSubject<Unit> readerUpdateCancelledPublishable;
    private final Observable<Unit> readerUpdateCompleteObservable;
    private final PublishSubject<Unit> readerUpdateCompletePublishable;
    private final PublishSubject<Unit> readerUpdateDownloadComplete;
    private final Observable<Unit> readerUpdateDownloadCompleteObservable;
    private final Observable<ReaderUpdateException> readerUpdateExceptionObservable;
    private final PublishSubject<ReaderUpdateException> readerUpdateExceptionPublishable;
    private final Observable<Float> readerUpdateProgressObservable;
    private final PublishSubject<Float> readerUpdateProgressPublishable;
    private final CoroutineScope scope;

    @Inject
    public UpdateInstaller(@Updates CoroutineDispatcher dispatcher, Applicator<UpdatePackage, Flow<ProgressStatus>> applicator, Ingester<UpdateSummary, UpdatePackage> ingester) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(applicator, "applicator");
        Intrinsics.checkNotNullParameter(ingester, "ingester");
        this.dispatcher = dispatcher;
        this.applicator = applicator;
        this.ingester = ingester;
        this.scope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(dispatcher));
        PublishSubject<Unit> publishSubjectCreate = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate, "create(...)");
        this.readerUpdateCancelledPublishable = publishSubjectCreate;
        PublishSubject<Unit> publishSubjectCreate2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate2, "create(...)");
        this.readerUpdateCompletePublishable = publishSubjectCreate2;
        PublishSubject<Unit> publishSubjectCreate3 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate3, "create(...)");
        this.readerUpdateDownloadComplete = publishSubjectCreate3;
        PublishSubject<ReaderUpdateException> publishSubjectCreate4 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate4, "create(...)");
        this.readerUpdateExceptionPublishable = publishSubjectCreate4;
        PublishSubject<Float> publishSubjectCreate5 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate5, "create(...)");
        this.readerUpdateProgressPublishable = publishSubjectCreate5;
        this.readerUpdateCancelledObservable = publishSubjectCreate;
        this.readerUpdateCompleteObservable = publishSubjectCreate2;
        this.readerUpdateExceptionObservable = publishSubjectCreate4;
        this.readerUpdateProgressObservable = publishSubjectCreate5;
        this.readerUpdateDownloadCompleteObservable = publishSubjectCreate3;
    }

    public final Observable<Unit> getReaderUpdateCancelledObservable() {
        return this.readerUpdateCancelledObservable;
    }

    public final Observable<Unit> getReaderUpdateCompleteObservable() {
        return this.readerUpdateCompleteObservable;
    }

    public final Observable<ReaderUpdateException> getReaderUpdateExceptionObservable() {
        return this.readerUpdateExceptionObservable;
    }

    public final Observable<Float> getReaderUpdateProgressObservable() {
        return this.readerUpdateProgressObservable;
    }

    public final Observable<Unit> getReaderUpdateDownloadCompleteObservable() {
        return this.readerUpdateDownloadCompleteObservable;
    }

    public final synchronized void install(UpdateSummary summary) {
        Intrinsics.checkNotNullParameter(summary, "summary");
        Log log = LOGGER;
        log.d("install", new Pair[0]);
        if (this.installJob != null) {
            log.w("Installation already in progress", new Pair[0]);
            return;
        }
        reset();
        log.d("Downloading updates...", new Pair[0]);
        try {
            UpdatePackage updatePackage = (UpdatePackage) BuildersKt__BuildersKt.runBlocking$default(null, new UpdateInstaller$install$updates$1(this, summary, null), 1, null);
            completeDownload();
            log.d("Starting installation job...", new Pair[0]);
            this.installJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02451(updatePackage, null), 3, null);
        } catch (Throwable th) {
            fail(th);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.UpdateInstaller$install$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UpdateInstaller.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.UpdateInstaller$install$1", f = "UpdateInstaller.kt", i = {}, l = {69, 69}, m = "invokeSuspend", n = {}, s = {})
    static final class C02451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ UpdatePackage $updates;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02451(UpdatePackage updatePackage, Continuation<? super C02451> continuation) {
            super(2, continuation);
            this.$updates = updatePackage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UpdateInstaller.this.new C02451(this.$updates, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
        
            if (((kotlinx.coroutines.flow.Flow) r6).collect(new com.stripe.core.readerupdate.UpdateInstaller.C02451.C00491(), r5) == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L20
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                goto L4e
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                goto L37
            L1e:
                r6 = move-exception
                goto L54
            L20:
                kotlin.ResultKt.throwOnFailure(r6)
                com.stripe.core.readerupdate.UpdateInstaller r6 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                com.stripe.core.updater.Applicator r6 = com.stripe.core.readerupdate.UpdateInstaller.access$getApplicator$p(r6)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                com.stripe.core.readerupdate.UpdatePackage r1 = r5.$updates     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                r5.label = r3     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                java.lang.Object r6 = r6.apply(r1, r4)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                if (r6 != r0) goto L37
                goto L4d
            L37:
                kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                com.stripe.core.readerupdate.UpdateInstaller$install$1$1 r1 = new com.stripe.core.readerupdate.UpdateInstaller$install$1$1     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                com.stripe.core.readerupdate.UpdateInstaller r3 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                r1.<init>()     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                r3 = r5
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                r5.label = r2     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                java.lang.Object r6 = r6.collect(r1, r3)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                if (r6 != r0) goto L4e
            L4d:
                return r0
            L4e:
                com.stripe.core.readerupdate.UpdateInstaller r6 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                com.stripe.core.readerupdate.UpdateInstaller.access$completeInstall(r6)     // Catch: java.lang.Throwable -> L1e java.util.concurrent.CancellationException -> L5a com.stripe.core.readerupdate.CancellationFailedException -> L60
                goto L65
            L54:
                com.stripe.core.readerupdate.UpdateInstaller r0 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L6d
                com.stripe.core.readerupdate.UpdateInstaller.access$fail(r0, r6)     // Catch: java.lang.Throwable -> L6d
                goto L65
            L5a:
                com.stripe.core.readerupdate.UpdateInstaller r6 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L6d
                com.stripe.core.readerupdate.UpdateInstaller.access$completeCancel(r6)     // Catch: java.lang.Throwable -> L6d
                goto L65
            L60:
                com.stripe.core.readerupdate.UpdateInstaller r6 = com.stripe.core.readerupdate.UpdateInstaller.this     // Catch: java.lang.Throwable -> L6d
                com.stripe.core.readerupdate.UpdateInstaller.access$completeInstall(r6)     // Catch: java.lang.Throwable -> L6d
            L65:
                com.stripe.core.readerupdate.UpdateInstaller r6 = com.stripe.core.readerupdate.UpdateInstaller.this
                r6.reset()
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            L6d:
                r6 = move-exception
                com.stripe.core.readerupdate.UpdateInstaller r0 = com.stripe.core.readerupdate.UpdateInstaller.this
                r0.reset()
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.UpdateInstaller.C02451.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final synchronized void cancel() {
        Log log = LOGGER;
        log.d("cancel", new Pair[0]);
        Job job = this.installJob;
        Unit unit = null;
        if (job != null) {
            if (job.isCancelled()) {
                log.d("Installation already cancelled", new Pair[0]);
            } else {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            log.d("Installation not in progress", new Pair[0]);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.UpdateInstaller$cancelAndJoin$1, reason: invalid class name */
    /* JADX INFO: compiled from: UpdateInstaller.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.UpdateInstaller$cancelAndJoin$1", f = "UpdateInstaller.kt", i = {}, l = {116}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UpdateInstaller.this.new AnonymousClass1(continuation);
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
                Job job = UpdateInstaller.this.installJob;
                if (job == null) {
                    return null;
                }
                this.label = 1;
                if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
                    return coroutine_suspended;
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

    public final void cancelAndJoin() throws InterruptedException {
        LOGGER.d("cancelAndJoin", new Pair[0]);
        BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(null), 1, null);
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.UpdateInstaller$join$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UpdateInstaller.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.UpdateInstaller$join$1", f = "UpdateInstaller.kt", i = {}, l = {WinError.ERROR_INVALID_LEVEL}, m = "invokeSuspend", n = {}, s = {})
    static final class C02461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02461(Continuation<? super C02461> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UpdateInstaller.this.new C02461(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Job job = UpdateInstaller.this.installJob;
                if (job == null) {
                    return null;
                }
                this.label = 1;
                if (job.join(this) == coroutine_suspended) {
                    return coroutine_suspended;
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

    public final void join() throws InterruptedException {
        LOGGER.d("join", new Pair[0]);
        BuildersKt__BuildersKt.runBlocking$default(null, new C02461(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void completeInstall() {
        LOGGER.d("completeInstall", new Pair[0]);
        this.readerUpdateCompletePublishable.onNext(Unit.INSTANCE);
    }

    private final void completeDownload() {
        LOGGER.d("downloadComplete", new Pair[0]);
        this.readerUpdateDownloadComplete.onNext(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void completeCancel() {
        LOGGER.d("completeCancel", new Pair[0]);
        this.readerUpdateCancelledPublishable.onNext(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fail(Throwable t) {
        ReaderUpdateException.UnexpectedError unexpectedError;
        LOGGER.d("fail", new Pair[0]);
        if (t instanceof ReaderUpdateException) {
            unexpectedError = (ReaderUpdateException) t;
        } else {
            String message = t.getMessage();
            if (message == null) {
                message = "Unexpected error";
            }
            unexpectedError = new ReaderUpdateException.UnexpectedError(message, null, 2, null);
        }
        this.readerUpdateExceptionPublishable.onNext(unexpectedError);
    }

    public final void reset() {
        LOGGER.d("reset", new Pair[0]);
        this.installJob = null;
    }
}
