package com.stripe.core.contentprovider;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.wrappers.HandlerWrapperKt;
import com.sun.jna.Callback;
import com.sun.jna.platform.linux.XAttr;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002'(BG\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0017H&¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0086@¢\u0006\u0002\u0010\u001aJ&\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0084@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!H\u0007J\u0014\u0010\"\u001a\u00020#2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006)"}, d2 = {"Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;", "T", "", "uri", "Landroid/net/Uri;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "io", "Lkotlin/coroutines/CoroutineContext;", "contentResolver", "Landroid/content/ContentResolver;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "treatEmptyBytesAsNull", "", "(Landroid/net/Uri;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/ContentResolver;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Z)V", "getUri", "()Landroid/net/Uri;", "convertBytes", "byteArray", "", "([B)Ljava/lang/Object;", "load", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Result;", "load-gIAlu-s", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "notifyChange", "", Callback.METHOD_NAME, "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;", "registerObserver", "Ljava/io/Closeable;", "unregisterObserver", "contentObserver", "Landroid/database/ContentObserver;", "DataChangedCallback", "DataContentObserver", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AbstractProtoContentProviderLoader<T> {
    private final CoroutineScope appScope;
    private final ContentResolver contentResolver;
    private final CoroutineContext io;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final boolean treatEmptyBytesAsNull;
    private final Uri uri;

    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;", "T", "", "onDataChanged", "", "onChange", "(Ljava/lang/Object;)V", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface DataChangedCallback<T> {
        void onDataChanged(T onChange);
    }

    /* JADX INFO: renamed from: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$1, reason: invalid class name */
    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.contentprovider.AbstractProtoContentProviderLoader", f = "AbstractProtoContentProviderLoader.kt", i = {}, l = {39}, m = "load-gIAlu-s", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AbstractProtoContentProviderLoader<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = abstractProtoContentProviderLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM458loadgIAlus = this.this$0.m458loadgIAlus(null, this);
            return objM458loadgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM458loadgIAlus : Result.m816boximpl(objM458loadgIAlus);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$3, reason: invalid class name */
    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.contentprovider.AbstractProtoContentProviderLoader", f = "AbstractProtoContentProviderLoader.kt", i = {}, l = {55}, m = "load", n = {}, s = {})
    static final class AnonymousClass3 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AbstractProtoContentProviderLoader<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader, Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
            this.this$0 = abstractProtoContentProviderLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.load(this);
        }
    }

    public abstract T convertBytes(byte[] byteArray);

    public AbstractProtoContentProviderLoader(Uri uri, CoroutineScope appScope, CoroutineContext io2, ContentResolver contentResolver, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, boolean z) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.uri = uri;
        this.appScope = appScope;
        this.io = io2;
        this.contentResolver = contentResolver;
        this.logger = logger;
        this.treatEmptyBytesAsNull = z;
    }

    public /* synthetic */ AbstractProtoContentProviderLoader(Uri uri, CoroutineScope coroutineScope, CoroutineContext coroutineContext, ContentResolver contentResolver, SimpleLogger simpleLogger, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, coroutineScope, coroutineContext, contentResolver, simpleLogger, (i & 32) != 0 ? false : z);
    }

    public final Uri getUri() {
        return this.uri;
    }

    /* JADX INFO: renamed from: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$2, reason: invalid class name */
    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\b\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$2", f = "AbstractProtoContentProviderLoader.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends T>>, Object> {
        final /* synthetic */ Uri $uri;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AbstractProtoContentProviderLoader<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader, Uri uri, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = abstractProtoContentProviderLoader;
            this.$uri = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$uri, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends T>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM817constructorimpl;
            InputStream inputStreamOpenInputStream;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader = this.this$0;
            Uri uri = this.$uri;
            try {
                Result.Companion companion = Result.INSTANCE;
                inputStreamOpenInputStream = ((AbstractProtoContentProviderLoader) abstractProtoContentProviderLoader).contentResolver.openInputStream(uri);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (inputStreamOpenInputStream != null) {
                InputStream inputStream = inputStreamOpenInputStream;
                try {
                    InputStream inputStream2 = inputStream;
                    Intrinsics.checkNotNull(inputStream2);
                    byte[] bytes = ByteStreamsKt.readBytes(inputStream2);
                    T tConvertBytes = (bytes.length == 0 && ((AbstractProtoContentProviderLoader) abstractProtoContentProviderLoader).treatEmptyBytesAsNull) ? null : abstractProtoContentProviderLoader.convertBytes(bytes);
                    CloseableKt.closeFinally(inputStream, null);
                    if (tConvertBytes != null) {
                        objM817constructorimpl = Result.m817constructorimpl(tConvertBytes);
                        AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader2 = this.this$0;
                        Uri uri2 = this.$uri;
                        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                        if (thM820exceptionOrNullimpl != null) {
                            ((AbstractProtoContentProviderLoader) abstractProtoContentProviderLoader2).logger.e("Failed to load content", thM820exceptionOrNullimpl, TuplesKt.to("uri", uri2));
                        }
                        return Result.m816boximpl(objM817constructorimpl);
                    }
                } finally {
                }
            }
            throw new FileNotFoundException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: load-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final java.lang.Object m458loadgIAlus(android.net.Uri r6, kotlin.coroutines.Continuation<? super kotlin.Result<? extends T>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r7
            com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$1 r0 = (com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$1 r0 = new com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$1
            r0.<init>(r5, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L48
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.coroutines.CoroutineContext r7 = r5.io
            com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$2 r2 = new com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L48
            return r1
        L48:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.getValue()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.m458loadgIAlus(android.net.Uri, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object load(kotlin.coroutines.Continuation<? super T> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.AnonymousClass3
            if (r0 == 0) goto L14
            r0 = r5
            com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$3 r0 = (com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.AnonymousClass3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$3 r0 = new com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$load$3
            r0.<init>(r4, r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.getValue()
            goto L46
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r5)
            android.net.Uri r5 = r4.uri
            r0.label = r3
            java.lang.Object r5 = r4.m458loadgIAlus(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            boolean r0 = kotlin.Result.m823isFailureimpl(r5)
            if (r0 == 0) goto L4d
            r5 = 0
        L4d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader.load(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Closeable registerObserver(DataChangedCallback<T> callback) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(callback, "callback");
        final DataContentObserver dataContentObserver = new DataContentObserver(this, callback);
        try {
            Result.Companion companion = Result.INSTANCE;
            AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader = this;
            this.contentResolver.registerContentObserver(this.uri, false, dataContentObserver);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            this.logger.e("Failed to register ContentObserver", thM820exceptionOrNullimpl, TuplesKt.to("uri", this.uri));
        }
        return new Closeable() { // from class: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$$ExternalSyntheticLambda0
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                AbstractProtoContentProviderLoader.registerObserver$lambda$2(this.f$0, dataContentObserver);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerObserver$lambda$2(AbstractProtoContentProviderLoader this$0, DataContentObserver contentObserver) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contentObserver, "$contentObserver");
        this$0.unregisterObserver(contentObserver);
    }

    private final void unregisterObserver(ContentObserver contentObserver) {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader = this;
            this.contentResolver.unregisterContentObserver(contentObserver);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            this.logger.e("Failed to unregister ContentObserver", thM820exceptionOrNullimpl, TuplesKt.to("uri", this.uri));
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$notifyChange$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.contentprovider.AbstractProtoContentProviderLoader$notifyChange$1", f = "AbstractProtoContentProviderLoader.kt", i = {}, l = {XAttr.ENOTSUP}, m = "invokeSuspend", n = {}, s = {})
    static final class C02261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DataChangedCallback<T> $callback;
        int label;
        final /* synthetic */ AbstractProtoContentProviderLoader<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02261(AbstractProtoContentProviderLoader<T> abstractProtoContentProviderLoader, DataChangedCallback<T> dataChangedCallback, Continuation<? super C02261> continuation) {
            super(2, continuation);
            this.this$0 = abstractProtoContentProviderLoader;
            this.$callback = dataChangedCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02261(this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.this$0.load(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (obj != null) {
                this.$callback.onDataChanged((T) obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void notifyChange(DataChangedCallback<T> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(this.appScope, null, null, new C02261(this, callback, null), 3, null);
    }

    /* JADX INFO: compiled from: AbstractProtoContentProviderLoader.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;", "Landroid/database/ContentObserver;", Callback.METHOD_NAME, "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;", "(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V", "onChange", "", "selfChange", "", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class DataContentObserver extends ContentObserver {
        private final DataChangedCallback<T> callback;
        final /* synthetic */ AbstractProtoContentProviderLoader<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataContentObserver(AbstractProtoContentProviderLoader abstractProtoContentProviderLoader, DataChangedCallback<T> callback) {
            super(HandlerWrapperKt.handler$default(null, 1, null));
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = abstractProtoContentProviderLoader;
            this.callback = callback;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            this.this$0.notifyChange(this.callback);
        }
    }
}
