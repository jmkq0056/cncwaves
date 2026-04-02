package io.ktor.util;

import com.sun.jna.platform.win32.WinUser;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteChannelKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ByteChannels.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\u001a\u001a\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t*\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b\u001a\u0015\u0010\f\u001a\u00020\r*\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000e\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"CHUNK_BUFFER_SIZE", "", "copyToBoth", "", "Lio/ktor/utils/io/ByteReadChannel;", "first", "Lio/ktor/utils/io/ByteWriteChannel;", "second", "split", "Lkotlin/Pair;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "toByteArray", "", "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ktor-utils"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ByteChannelsKt {
    private static final long CHUNK_BUFFER_SIZE = 4096;

    /* JADX INFO: renamed from: io.ktor.util.ByteChannelsKt$toByteArray$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteChannels.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.util.ByteChannelsKt", f = "ByteChannels.kt", i = {}, l = {WinUser.SM_MOUSEHORIZONTALWHEELPRESENT}, m = "toByteArray", n = {}, s = {})
    static final class C05701 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05701(Continuation<? super C05701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteChannelsKt.toByteArray(null, this);
        }
    }

    public static final Pair<ByteReadChannel, ByteReadChannel> split(ByteReadChannel byteReadChannel, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        final ByteChannel ByteChannel = ByteChannelKt.ByteChannel(true);
        final ByteChannel ByteChannel2 = ByteChannelKt.ByteChannel(true);
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C05681(byteReadChannel, ByteChannel, ByteChannel2, null), 3, null).invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.util.ByteChannelsKt.split.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th == null) {
                    return;
                }
                ByteChannel.cancel(th);
                ByteChannel2.cancel(th);
            }
        });
        return TuplesKt.to(ByteChannel, ByteChannel2);
    }

    /* JADX INFO: renamed from: io.ktor.util.ByteChannelsKt$split$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteChannels.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.util.ByteChannelsKt$split$1", f = "ByteChannels.kt", i = {0, 0, 1, 1}, l = {27, 31}, m = "invokeSuspend", n = {"$this$launch", "buffer", "$this$launch", "buffer"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C05681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ByteChannel $first;
        final /* synthetic */ ByteChannel $second;
        final /* synthetic */ ByteReadChannel $this_split;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05681(ByteReadChannel byteReadChannel, ByteChannel byteChannel, ByteChannel byteChannel2, Continuation<? super C05681> continuation) {
            super(2, continuation);
            this.$this_split = byteReadChannel;
            this.$first = byteChannel;
            this.$second = byteChannel2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05681 c05681 = new C05681(this.$this_split, this.$first, this.$second, continuation);
            c05681.L$0 = obj;
            return c05681;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:7:0x0016, B:17:0x0044, B:19:0x004c, B:22:0x005e, B:25:0x00a6, B:29:0x00c4, B:12:0x002a), top: B:37:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00a6 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #0 {all -> 0x002e, blocks: (B:7:0x0016, B:17:0x0044, B:19:0x004c, B:22:0x005e, B:25:0x00a6, B:29:0x00c4, B:12:0x002a), top: B:37:0x0008 }] */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v5, types: [byte[], java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [byte[], java.lang.Object] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00a3 -> B:17:0x0044). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.util.ByteChannelsKt.C05681.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: io.ktor.util.ByteChannelsKt$split$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: ByteChannels.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "io.ktor.util.ByteChannelsKt$split$1$1", f = "ByteChannels.kt", i = {}, l = {29}, m = "invokeSuspend", n = {}, s = {})
        static final class C00651 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ byte[] $buffer;
            final /* synthetic */ ByteChannel $first;
            final /* synthetic */ int $read;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00651(ByteChannel byteChannel, byte[] bArr, int i, Continuation<? super C00651> continuation) {
                super(2, continuation);
                this.$first = byteChannel;
                this.$buffer = bArr;
                this.$read = i;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00651(this.$first, this.$buffer, this.$read, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00651) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.$first.writeFully(this.$buffer, 0, this.$read, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: io.ktor.util.ByteChannelsKt$split$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: ByteChannels.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "io.ktor.util.ByteChannelsKt$split$1$2", f = "ByteChannels.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ byte[] $buffer;
            final /* synthetic */ int $read;
            final /* synthetic */ ByteChannel $second;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(ByteChannel byteChannel, byte[] bArr, int i, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$second = byteChannel;
                this.$buffer = bArr;
                this.$read = i;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$second, this.$buffer, this.$read, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.$second.writeFully(this.$buffer, 0, this.$read, this) == coroutine_suspended) {
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
    }

    /* JADX INFO: renamed from: io.ktor.util.ByteChannelsKt$copyToBoth$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteChannels.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.util.ByteChannelsKt$copyToBoth$1", f = "ByteChannels.kt", i = {1, 1, 1, 2, 2}, l = {61, 63, 64}, m = "invokeSuspend", n = {"$this$use$iv", "it", "closed$iv", "$this$use$iv", "closed$iv"}, s = {"L$0", "L$4", "I$0", "L$0", "I$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ByteWriteChannel $first;
        final /* synthetic */ ByteWriteChannel $second;
        final /* synthetic */ ByteReadChannel $this_copyToBoth;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, ByteWriteChannel byteWriteChannel2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_copyToBoth = byteReadChannel;
            this.$first = byteWriteChannel;
            this.$second = byteWriteChannel2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_copyToBoth, this.$first, this.$second, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
        
            if (r6.writePacket(r12, r11) != r0) goto L41;
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[Catch: all -> 0x005e, TryCatch #5 {all -> 0x005e, blocks: (B:44:0x00e5, B:24:0x0064, B:26:0x006c, B:28:0x0074, B:30:0x007c, B:33:0x0096, B:53:0x00f5, B:54:0x00f6, B:57:0x00ff, B:19:0x005a, B:51:0x00f3, B:50:0x00f0, B:47:0x00eb, B:34:0x009f, B:43:0x00d8), top: B:74:0x005a, inners: #1, #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00bc A[Catch: all -> 0x0027, PHI: r1 r6 r7 r8 r10 r12
          0x00bc: PHI (r1v3 io.ktor.utils.io.ByteReadChannel) = (r1v4 io.ktor.utils.io.ByteReadChannel), (r1v10 io.ktor.utils.io.ByteReadChannel) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]
          0x00bc: PHI (r6v2 io.ktor.utils.io.ByteWriteChannel) = (r6v3 io.ktor.utils.io.ByteWriteChannel), (r6v9 io.ktor.utils.io.ByteWriteChannel) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]
          0x00bc: PHI (r7v2 io.ktor.utils.io.ByteWriteChannel) = (r7v3 io.ktor.utils.io.ByteWriteChannel), (r7v8 io.ktor.utils.io.ByteWriteChannel) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]
          0x00bc: PHI (r8v2 java.io.Closeable) = (r8v4 java.io.Closeable), (r8v10 java.io.Closeable) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]
          0x00bc: PHI (r10v0 int) = (r10v1 int), (r10v4 int) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]
          0x00bc: PHI (r12v9 io.ktor.utils.io.core.ByteReadPacket) = (r12v16 io.ktor.utils.io.core.ByteReadPacket), (r12v29 io.ktor.utils.io.core.ByteReadPacket) binds: [B:36:0x00b9, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {all -> 0x0027, blocks: (B:8:0x0022, B:41:0x00d5, B:35:0x00a2, B:38:0x00bc), top: B:70:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00ff A[Catch: all -> 0x005e, TRY_LEAVE, TryCatch #5 {all -> 0x005e, blocks: (B:44:0x00e5, B:24:0x0064, B:26:0x006c, B:28:0x0074, B:30:0x007c, B:33:0x0096, B:53:0x00f5, B:54:0x00f6, B:57:0x00ff, B:19:0x005a, B:51:0x00f3, B:50:0x00f0, B:47:0x00eb, B:34:0x009f, B:43:0x00d8), top: B:74:0x005a, inners: #1, #4 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d2 -> B:41:0x00d5). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 291
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.util.ByteChannelsKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final void copyToBoth(ByteReadChannel byteReadChannel, final ByteWriteChannel first, final ByteWriteChannel second) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getUnconfined(), null, new AnonymousClass1(byteReadChannel, first, second, null), 2, null).invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.util.ByteChannelsKt.copyToBoth.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th == null) {
                    return;
                }
                first.close(th);
                second.close(th);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object toByteArray(io.ktor.utils.io.ByteReadChannel r8, kotlin.coroutines.Continuation<? super byte[]> r9) {
        /*
            boolean r0 = r9 instanceof io.ktor.util.ByteChannelsKt.C05701
            if (r0 == 0) goto L14
            r0 = r9
            io.ktor.util.ByteChannelsKt$toByteArray$1 r0 = (io.ktor.util.ByteChannelsKt.C05701) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            io.ktor.util.ByteChannelsKt$toByteArray$1 r0 = new io.ktor.util.ByteChannelsKt$toByteArray$1
            r0.<init>(r9)
        L19:
            r4 = r0
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r7 = 1
            if (r1 == 0) goto L33
            if (r1 != r7) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L44
        L2b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L33:
            kotlin.ResultKt.throwOnFailure(r9)
            r4.label = r7
            r2 = 0
            r5 = 1
            r6 = 0
            r1 = r8
            java.lang.Object r9 = io.ktor.utils.io.ByteReadChannel.DefaultImpls.readRemaining$default(r1, r2, r4, r5, r6)
            if (r9 != r0) goto L44
            return r0
        L44:
            io.ktor.utils.io.core.ByteReadPacket r9 = (io.ktor.utils.io.core.ByteReadPacket) r9
            r8 = 0
            r0 = 0
            byte[] r8 = io.ktor.utils.io.core.StringsKt.readBytes$default(r9, r8, r7, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.util.ByteChannelsKt.toByteArray(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
