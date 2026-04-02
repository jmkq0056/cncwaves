package com.stripe.core.contentprovider;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.stripe.core.contentprovider.ContentValueKey;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AbstractProtoContentProviderWriter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H¦@¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0086@¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cR\u0014\u0010\b\u001a\u00020\tX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;", "T", "", "context", "Landroid/content/Context;", "io", "Lkotlin/coroutines/CoroutineContext;", "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V", "contentValueKey", "Lcom/stripe/core/contentprovider/ContentValueKey;", "getContentValueKey", "()Lcom/stripe/core/contentprovider/ContentValueKey;", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "getFile", "Ljava/io/File;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toBytes", "", "data", "(Ljava/lang/Object;)[B", "writeData", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeDataUsingInsert", "(Ljava/lang/Object;)Z", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AbstractProtoContentProviderWriter<T> {
    private final ContentValueKey contentValueKey;
    private final Context context;
    private final CoroutineContext io;

    /* JADX INFO: renamed from: com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$1, reason: invalid class name */
    /* JADX INFO: compiled from: AbstractProtoContentProviderWriter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.contentprovider.AbstractProtoContentProviderWriter", f = "AbstractProtoContentProviderWriter.kt", i = {0}, l = {22}, m = "writeData", n = {"$this$writeData_u24lambda_u240"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AbstractProtoContentProviderWriter<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AbstractProtoContentProviderWriter<T> abstractProtoContentProviderWriter, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = abstractProtoContentProviderWriter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    public abstract Object getFile(Context context, Continuation<? super File> continuation);

    public abstract Uri getUri();

    public abstract byte[] toBytes(T data);

    public AbstractProtoContentProviderWriter(Context context, CoroutineContext io2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(io2, "io");
        this.context = context;
        this.io = io2;
        this.contentValueKey = ContentValueKey.UnusedContentValueKey.INSTANCE;
    }

    protected ContentValueKey getContentValueKey() {
        return this.contentValueKey;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData(T r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.stripe.core.contentprovider.AbstractProtoContentProviderWriter.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r7
            com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$1 r0 = (com.stripe.core.contentprovider.AbstractProtoContentProviderWriter.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$1 r0 = new com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$1
            r0.<init>(r5, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            java.lang.Object r6 = r0.L$0
            com.stripe.core.contentprovider.AbstractProtoContentProviderWriter r6 = (com.stripe.core.contentprovider.AbstractProtoContentProviderWriter) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L6a
            goto L54
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L6a
            r7 = r5
            com.stripe.core.contentprovider.AbstractProtoContentProviderWriter r7 = (com.stripe.core.contentprovider.AbstractProtoContentProviderWriter) r7     // Catch: java.lang.Throwable -> L6a
            kotlin.coroutines.CoroutineContext r7 = r5.io     // Catch: java.lang.Throwable -> L6a
            com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$2$1 r2 = new com.stripe.core.contentprovider.AbstractProtoContentProviderWriter$writeData$2$1     // Catch: java.lang.Throwable -> L6a
            r2.<init>(r5, r6, r3)     // Catch: java.lang.Throwable -> L6a
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2     // Catch: java.lang.Throwable -> L6a
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L6a
            r0.label = r4     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)     // Catch: java.lang.Throwable -> L6a
            if (r6 != r1) goto L53
            return r1
        L53:
            r6 = r5
        L54:
            android.content.Context r7 = r6.context     // Catch: java.lang.Throwable -> L6a
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch: java.lang.Throwable -> L6a
            android.net.Uri r6 = r6.getUri()     // Catch: java.lang.Throwable -> L6a
            r7.notifyChange(r6, r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r6 = kotlin.Result.m817constructorimpl(r6)     // Catch: java.lang.Throwable -> L6a
            goto L75
        L6a:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m817constructorimpl(r6)
        L75:
            r7 = 0
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)
            boolean r0 = kotlin.Result.m823isFailureimpl(r6)
            if (r0 == 0) goto L81
            r6 = r7
        L81:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.contentprovider.AbstractProtoContentProviderWriter.writeData(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean writeDataUsingInsert(T value) {
        Object objM817constructorimpl;
        boolean z;
        try {
            Result.Companion companion = Result.INSTANCE;
            AbstractProtoContentProviderWriter<T> abstractProtoContentProviderWriter = this;
            String value2 = getContentValueKey().getValue();
            if (value2 != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(value2, toBytes(value));
                this.context.getContentResolver().insert(getUri(), contentValues);
                this.context.getContentResolver().notifyChange(getUri(), null);
                z = true;
            } else {
                z = false;
            }
            objM817constructorimpl = Result.m817constructorimpl(Boolean.valueOf(z));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = false;
        }
        return ((Boolean) objM817constructorimpl).booleanValue();
    }
}
