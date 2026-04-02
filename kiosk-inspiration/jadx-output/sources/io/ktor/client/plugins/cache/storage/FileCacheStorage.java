package io.ktor.client.plugins.cache.storage;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ImagesContract;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import io.ktor.http.Url;
import io.ktor.util.CryptoKt;
import io.ktor.util.collections.ConcurrentMap;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteReadChannel;
import java.io.File;
import java.security.MessageDigest;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: compiled from: FileCacheStorage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J/\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0011J\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0019\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u001f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\f0\u00132\u0006\u0010\u001a\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ!\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ!\u0010 \u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020!2\u0006\u0010\"\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J'\u0010 \u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\t2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\f0&H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"Lio/ktor/client/plugins/cache/storage/FileCacheStorage;", "Lio/ktor/client/plugins/cache/storage/CacheStorage;", "directory", "Ljava/io/File;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V", "mutexes", "Lio/ktor/util/collections/ConcurrentMap;", "", "Lkotlinx/coroutines/sync/Mutex;", "find", "Lio/ktor/client/plugins/cache/storage/CachedResponseData;", ImagesContract.URL, "Lio/ktor/http/Url;", "varyKeys", "", "(Lio/ktor/http/Url;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findAll", "", "(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "key", "readCache", "channel", "Lio/ktor/utils/io/ByteReadChannel;", "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "urlHex", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "store", "", "data", "(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeCache", "Lio/ktor/utils/io/ByteChannel;", "cache", "(Lio/ktor/utils/io/ByteChannel;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "caches", "", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ktor-client-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class FileCacheStorage implements CacheStorage {
    private final File directory;
    private final CoroutineDispatcher dispatcher;
    private final ConcurrentMap<String, Mutex> mutexes;

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$find$1, reason: invalid class name */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage", f = "FileCacheStorage.kt", i = {0}, l = {81}, m = "find", n = {"varyKeys"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileCacheStorage.this.find(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$findAll$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage", f = "FileCacheStorage.kt", i = {}, l = {77}, m = "findAll", n = {}, s = {})
    static final class C04901 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04901(Continuation<? super C04901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileCacheStorage.this.findAll(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$readCache$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage", f = "FileCacheStorage.kt", i = {0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3}, l = {202, WinError.ERROR_BAD_DRIVER_LEVEL, 122, WinError.ERROR_INVALID_LEVEL}, m = "readCache", n = {"this", "urlHex", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "$this$use$iv", "channel", "closed$iv", "this", "$this$withLock_u24default$iv", "$this$use$iv", "channel", "caches", "closed$iv", "requestsCount", "i", "$this$withLock_u24default$iv", "$this$use$iv", "caches", "closed$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0"})
    static final class C04911 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C04911(Continuation<? super C04911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileCacheStorage.this.readCache((String) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$readCache$3, reason: invalid class name */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage", f = "FileCacheStorage.kt", i = {0, 1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14}, l = {WinError.ERROR_BAD_THREADID_ADDR, 160, 160, 161, 162, WinUser.VK_RMENU, 166, 169, WinError.ERROR_BUSY, 171, 172, 175, 176, WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_INVALID_ORDINAL}, m = "readCache", n = {"channel", "channel", ImagesContract.URL, "channel", ImagesContract.URL, "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "headersCount", "j", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "key", "headersCount", "j", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "expirationTime", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "expirationTime", "$this$readCache_u24lambda_u244", "varyKeysCount", "j", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "expirationTime", "$this$readCache_u24lambda_u244", "key", "varyKeysCount", "j", "channel", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "expirationTime", "varyKeys", ImagesContract.URL, NotificationCompat.CATEGORY_STATUS, "version", "headers", "requestTime", "responseTime", "expirationTime", "varyKeys", "body"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$9", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$9", "L$10", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8"})
    static final class AnonymousClass3 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileCacheStorage.this.readCache((ByteReadChannel) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$writeCache$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage", f = "FileCacheStorage.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 11, 12, 12, 13, 13}, l = {136, WinError.ERROR_NOT_SUBSTED, WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_SUBST_TO_JOIN, WinError.ERROR_SAME_DRIVE, WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_PATH_BUSY, WinError.ERROR_IS_SUBST_TARGET, WinError.ERROR_INVALID_EVENT_COUNT, WinError.ERROR_TOO_MANY_MUXWAITERS, WinError.ERROR_LABEL_TOO_LONG, 155}, m = "writeCache", n = {"channel", "cache", "channel", "cache", "channel", "cache", "channel", "cache", "channel", "cache", "headers", "channel", "cache", "value", "channel", "cache", "channel", "cache", "channel", "cache", "channel", "cache", "channel", "cache", "channel", "cache", "value", "channel", "cache", "channel", "cache"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$3", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$0", "L$1"})
    static final class C04933 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C04933(Continuation<? super C04933> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileCacheStorage.this.writeCache((ByteChannel) null, (CachedResponseData) null, this);
        }
    }

    public FileCacheStorage(File directory, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.directory = directory;
        this.dispatcher = dispatcher;
        this.mutexes = new ConcurrentMap<>(0, 1, null);
        directory.mkdirs();
    }

    public /* synthetic */ FileCacheStorage(File file, CoroutineDispatcher coroutineDispatcher, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? Dispatchers.getIO() : coroutineDispatcher);
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$store$2, reason: invalid class name */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage$store$2", f = "FileCacheStorage.kt", i = {0}, l = {72, 73}, m = "invokeSuspend", n = {"urlHex"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CachedResponseData $data;
        final /* synthetic */ Url $url;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Url url, CachedResponseData cachedResponseData, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$url = url;
            this.$data = cachedResponseData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileCacheStorage.this.new AnonymousClass2(this.$url, this.$data, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
        
            if (r8.this$0.writeCache(r1, (java.util.List<io.ktor.client.plugins.cache.storage.CachedResponseData>) r9, r8) == r0) goto L21;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L23
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                kotlin.ResultKt.throwOnFailure(r9)
                goto L87
            L13:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1b:
                java.lang.Object r1 = r8.L$0
                java.lang.String r1 = (java.lang.String) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L3e
            L23:
                kotlin.ResultKt.throwOnFailure(r9)
                io.ktor.client.plugins.cache.storage.FileCacheStorage r9 = io.ktor.client.plugins.cache.storage.FileCacheStorage.this
                io.ktor.http.Url r1 = r8.$url
                java.lang.String r1 = io.ktor.client.plugins.cache.storage.FileCacheStorage.access$key(r9, r1)
                io.ktor.client.plugins.cache.storage.FileCacheStorage r9 = io.ktor.client.plugins.cache.storage.FileCacheStorage.this
                r4 = r8
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r8.L$0 = r1
                r8.label = r3
                java.lang.Object r9 = io.ktor.client.plugins.cache.storage.FileCacheStorage.access$readCache(r9, r1, r4)
                if (r9 != r0) goto L3e
                goto L86
            L3e:
                java.lang.Iterable r9 = (java.lang.Iterable) r9
                io.ktor.client.plugins.cache.storage.CachedResponseData r3 = r8.$data
                java.util.ArrayList r4 = new java.util.ArrayList
                r4.<init>()
                java.util.Collection r4 = (java.util.Collection) r4
                java.util.Iterator r9 = r9.iterator()
            L4d:
                boolean r5 = r9.hasNext()
                if (r5 == 0) goto L6c
                java.lang.Object r5 = r9.next()
                r6 = r5
                io.ktor.client.plugins.cache.storage.CachedResponseData r6 = (io.ktor.client.plugins.cache.storage.CachedResponseData) r6
                java.util.Map r6 = r6.getVaryKeys()
                java.util.Map r7 = r3.getVaryKeys()
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
                if (r6 != 0) goto L4d
                r4.add(r5)
                goto L4d
            L6c:
                java.util.List r4 = (java.util.List) r4
                java.util.Collection r4 = (java.util.Collection) r4
                io.ktor.client.plugins.cache.storage.CachedResponseData r9 = r8.$data
                java.util.List r9 = kotlin.collections.CollectionsKt.plus(r4, r9)
                io.ktor.client.plugins.cache.storage.FileCacheStorage r3 = io.ktor.client.plugins.cache.storage.FileCacheStorage.this
                r4 = r8
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5 = 0
                r8.L$0 = r5
                r8.label = r2
                java.lang.Object r9 = io.ktor.client.plugins.cache.storage.FileCacheStorage.access$writeCache(r3, r1, r9, r4)
                if (r9 != r0) goto L87
            L86:
                return r0
            L87:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // io.ktor.client.plugins.cache.storage.CacheStorage
    public Object store(Url url, CachedResponseData cachedResponseData, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new AnonymousClass2(url, cachedResponseData, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // io.ktor.client.plugins.cache.storage.CacheStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object findAll(io.ktor.http.Url r5, kotlin.coroutines.Continuation<? super java.util.Set<io.ktor.client.plugins.cache.storage.CachedResponseData>> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.client.plugins.cache.storage.FileCacheStorage.C04901
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.client.plugins.cache.storage.FileCacheStorage$findAll$1 r0 = (io.ktor.client.plugins.cache.storage.FileCacheStorage.C04901) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.client.plugins.cache.storage.FileCacheStorage$findAll$1 r0 = new io.ktor.client.plugins.cache.storage.FileCacheStorage$findAll$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L42
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r5 = r4.key(r5)
            r0.label = r3
            java.lang.Object r6 = r4.readCache(r5, r0)
            if (r6 != r1) goto L42
            return r1
        L42:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Set r5 = kotlin.collections.CollectionsKt.toSet(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.findAll(io.ktor.http.Url, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // io.ktor.client.plugins.cache.storage.CacheStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object find(io.ktor.http.Url r6, java.util.Map<java.lang.String, java.lang.String> r7, kotlin.coroutines.Continuation<? super io.ktor.client.plugins.cache.storage.CachedResponseData> r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.client.plugins.cache.storage.FileCacheStorage.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.client.plugins.cache.storage.FileCacheStorage$find$1 r0 = (io.ktor.client.plugins.cache.storage.FileCacheStorage.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.client.plugins.cache.storage.FileCacheStorage$find$1 r0 = new io.ktor.client.plugins.cache.storage.FileCacheStorage$find$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r6 = r0.L$0
            r7 = r6
            java.util.Map r7 = (java.util.Map) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.String r6 = r5.key(r6)
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = r5.readCache(r6, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            java.util.Set r8 = (java.util.Set) r8
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r6 = r8.iterator()
        L51:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto L95
            java.lang.Object r8 = r6.next()
            r0 = r8
            io.ktor.client.plugins.cache.storage.CachedResponseData r0 = (io.ktor.client.plugins.cache.storage.CachedResponseData) r0
            boolean r1 = r7.isEmpty()
            if (r1 == 0) goto L65
            return r8
        L65:
            java.util.Set r1 = r7.entrySet()
            java.util.Iterator r1 = r1.iterator()
        L6d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L94
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r2 = r2.getValue()
            java.lang.String r2 = (java.lang.String) r2
            java.util.Map r4 = r0.getVaryKeys()
            java.lang.Object r3 = r4.get(r3)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r2)
            if (r2 != 0) goto L6d
            goto L51
        L94:
            return r8
        L95:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.find(io.ktor.http.Url, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String key(Url url) {
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(StringsKt.encodeToByteArray(url.getUrlString()));
        Intrinsics.checkNotNullExpressionValue(bArrDigest, "getInstance(\"MD5\").diges…ng().encodeToByteArray())");
        return CryptoKt.hex(bArrDigest);
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.cache.storage.FileCacheStorage$writeCache$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileCacheStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.cache.storage.FileCacheStorage$writeCache$2", f = "FileCacheStorage.kt", i = {0, 0, 1, 1, 1}, l = {202, 102}, m = "invokeSuspend", n = {"$this$coroutineScope", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv", "$this$use$iv", "closed$iv"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0"})
    static final class C04922 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ List<CachedResponseData> $caches;
        final /* synthetic */ String $urlHex;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04922(String str, List<CachedResponseData> list, Continuation<? super C04922> continuation) {
            super(2, continuation);
            this.$urlHex = str;
            this.$caches = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04922 c04922 = FileCacheStorage.this.new C04922(this.$urlHex, this.$caches, continuation);
            c04922.L$0 = obj;
            return c04922;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((C04922) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(1:71)|(1:(1:(8:6|60|7|8|31|32|53|54)(2:11|12))(1:13))(3:14|(1:17)|29)|18|69|19|67|20|(1:22)(1:23)|24|65|25|26|63|27|(5:30|31|32|53|54)|29|(2:(0)|(1:62))) */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0107, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0129, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v2, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v14, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v18 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v9 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.C04922.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object writeCache(String str, List<CachedResponseData> list, Continuation<Object> continuation) {
        return CoroutineScopeKt.coroutineScope(new C04922(str, list, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0178 A[Catch: all -> 0x01a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x01a0, blocks: (B:54:0x013e, B:62:0x0178), top: B:93:0x013e }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0159 -> B:106:0x0163). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readCache(java.lang.String r19, kotlin.coroutines.Continuation<? super java.util.Set<io.ktor.client.plugins.cache.storage.CachedResponseData>> r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.readCache(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01bb, code lost:
    
        if (r2.writeInt(r12, r0) != r1) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x028f, code lost:
    
        if (r11.writeInt(r12, r0) != r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0336, code lost:
    
        if (io.ktor.utils.io.ByteWriteChannelKt.writeFully(r11, r10, r0) != r1) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0 A[PHI: r10 r11
      0x00e0: PHI (r10v12 io.ktor.client.plugins.cache.storage.CachedResponseData) = 
      (r10v9 io.ktor.client.plugins.cache.storage.CachedResponseData)
      (r10v17 io.ktor.client.plugins.cache.storage.CachedResponseData)
     binds: [B:39:0x019c, B:23:0x00d5] A[DONT_GENERATE, DONT_INLINE]
      0x00e0: PHI (r11v11 io.ktor.utils.io.ByteChannel) = (r11v8 io.ktor.utils.io.ByteChannel), (r11v14 io.ktor.utils.io.ByteChannel) binds: [B:39:0x019c, B:23:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0179 A[PHI: r10 r11
      0x0179: PHI (r10v9 io.ktor.client.plugins.cache.storage.CachedResponseData) = 
      (r10v6 io.ktor.client.plugins.cache.storage.CachedResponseData)
      (r10v11 io.ktor.client.plugins.cache.storage.CachedResponseData)
     binds: [B:36:0x0175, B:25:0x00e4] A[DONT_GENERATE, DONT_INLINE]
      0x0179: PHI (r11v8 io.ktor.utils.io.ByteChannel) = (r11v5 io.ktor.utils.io.ByteChannel), (r11v10 io.ktor.utils.io.ByteChannel) binds: [B:36:0x0175, B:25:0x00e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0265 A[PHI: r10 r11
      0x0265: PHI (r10v41 io.ktor.client.plugins.cache.storage.CachedResponseData) = 
      (r10v38 io.ktor.client.plugins.cache.storage.CachedResponseData)
      (r10v43 io.ktor.client.plugins.cache.storage.CachedResponseData)
     binds: [B:60:0x0261, B:18:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x0265: PHI (r11v30 io.ktor.utils.io.ByteChannel) = (r11v27 io.ktor.utils.io.ByteChannel), (r11v32 io.ktor.utils.io.ByteChannel) binds: [B:60:0x0261, B:18:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x027b A[PHI: r10 r11
      0x027b: PHI (r10v44 io.ktor.client.plugins.cache.storage.CachedResponseData) = 
      (r10v41 io.ktor.client.plugins.cache.storage.CachedResponseData)
      (r10v46 io.ktor.client.plugins.cache.storage.CachedResponseData)
     binds: [B:63:0x0277, B:17:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x027b: PHI (r11v33 io.ktor.utils.io.ByteChannel) = (r11v30 io.ktor.utils.io.ByteChannel), (r11v35 io.ktor.utils.io.ByteChannel) binds: [B:63:0x0277, B:17:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x022d -> B:45:0x01c3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x030a -> B:69:0x029f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeCache(io.ktor.utils.io.ByteChannel r10, io.ktor.client.plugins.cache.storage.CachedResponseData r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instruction units count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.writeCache(io.ktor.utils.io.ByteChannel, io.ktor.client.plugins.cache.storage.CachedResponseData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x02b4, code lost:
    
        if (r1 != r4) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0308, code lost:
    
        if (r1 != r4) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x03a2, code lost:
    
        if (r1 != r4) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0277 A[PHI: r0 r1 r5 r7
      0x0277: PHI (r0v7 int) = (r0v4 int), (r0v9 int) binds: [B:38:0x0273, B:27:0x0214] A[DONT_GENERATE, DONT_INLINE]
      0x0277: PHI (r1v11 java.lang.Object) = (r1v10 java.lang.Object), (r1v1 java.lang.Object) binds: [B:38:0x0273, B:27:0x0214] A[DONT_GENERATE, DONT_INLINE]
      0x0277: PHI (r5v8 java.lang.String) = (r5v4 java.lang.String), (r5v11 java.lang.String) binds: [B:38:0x0273, B:27:0x0214] A[DONT_GENERATE, DONT_INLINE]
      0x0277: PHI (r7v4 io.ktor.utils.io.ByteReadChannel) = (r7v2 io.ktor.utils.io.ByteReadChannel), (r7v7 io.ktor.utils.io.ByteReadChannel) binds: [B:38:0x0273, B:27:0x0214] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x035c A[PHI: r0 r1 r5 r7 r8 r9 r10
      0x035c: PHI (r0v28 io.ktor.util.date.GMTDate) = (r0v25 io.ktor.util.date.GMTDate), (r0v30 io.ktor.util.date.GMTDate) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r1v36 java.lang.Object) = (r1v35 java.lang.Object), (r1v1 java.lang.Object) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r5v30 io.ktor.http.HeadersBuilder) = (r5v26 io.ktor.http.HeadersBuilder), (r5v33 io.ktor.http.HeadersBuilder) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r7v28 io.ktor.http.HttpProtocolVersion) = (r7v24 io.ktor.http.HttpProtocolVersion), (r7v31 io.ktor.http.HttpProtocolVersion) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r8v23 io.ktor.http.HttpStatusCode) = (r8v19 io.ktor.http.HttpStatusCode), (r8v26 io.ktor.http.HttpStatusCode) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r9v16 java.lang.String) = (r9v12 java.lang.String), (r9v19 java.lang.String) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x035c: PHI (r10v15 io.ktor.utils.io.ByteReadChannel) = (r10v13 io.ktor.utils.io.ByteReadChannel), (r10v18 io.ktor.utils.io.ByteReadChannel) binds: [B:62:0x0358, B:20:0x0167] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0485  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0308 -> B:23:0x01c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0416 -> B:16:0x00c8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readCache(io.ktor.utils.io.ByteReadChannel r24, kotlin.coroutines.Continuation<? super io.ktor.client.plugins.cache.storage.CachedResponseData> r25) {
        /*
            Method dump skipped, instruction units count: 1214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.storage.FileCacheStorage.readCache(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
