package com.stripe.jvmcore.batchdispatcher.collectors;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import com.stripe.logwriter.LogWriter;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueueFileProtoSerializer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u0000 \u0012*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0012B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011R\u0010\u0010\u0006\u001a\u00028\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;", "T", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;", "parser", "Lcom/squareup/wire/ProtoAdapter;", "default", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V", "Lcom/squareup/wire/Message;", "fromBytes", "bytes", "", "([B)Lcom/squareup/wire/Message;", "toBytes", "record", "(Lcom/squareup/wire/Message;)[B", "Companion", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueueFileProtoSerializer<T extends Message<T, ?>> implements QueueFileCollector.Serializer<T> {
    private static final String TAG = "QueueFileProtoSerializer";
    private final T default;
    private final LogWriter logWriter;
    private final ProtoAdapter<T> parser;

    public QueueFileProtoSerializer(ProtoAdapter<T> parser, T t, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(parser, "parser");
        Intrinsics.checkNotNullParameter(t, "default");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.parser = parser;
        this.default = t;
        this.logWriter = logWriter;
    }

    @Override // com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector.Serializer
    public byte[] toBytes(T record) {
        Intrinsics.checkNotNullParameter(record, "record");
        return record.encode();
    }

    @Override // com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector.Serializer
    public T fromBytes(byte[] bytes) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        try {
            Result.Companion companion = Result.INSTANCE;
            QueueFileProtoSerializer<T> queueFileProtoSerializer = this;
            objM817constructorimpl = Result.m817constructorimpl(this.parser.decode(bytes));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            LogWriter logWriter = this.logWriter;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            logWriter.e(TAG2, "Corrupt proto payload in the queue:", thM820exceptionOrNullimpl);
            objM817constructorimpl = this.default;
        }
        return (T) objM817constructorimpl;
    }
}
