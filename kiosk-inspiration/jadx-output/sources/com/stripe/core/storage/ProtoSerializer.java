package com.stripe.core.storage;

import androidx.datastore.core.Serializer;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProtoSerializer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000b¢\u0006\u0002\u0010\fJ\u0015\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0002¢\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@¢\u0006\u0002\u0010\u001dR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/core/storage/ProtoSerializer;", "T", "Landroidx/datastore/core/Serializer;", "adapter", "Lcom/squareup/wire/ProtoAdapter;", "defaultValueFactory", "Lkotlin/Function0;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/squareup/wire/ProtoAdapter;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "defaultValue", "getDefaultValue", "()Ljava/lang/Object;", "decode", "input", "Ljava/io/InputStream;", "(Ljava/io/InputStream;)Ljava/lang/Object;", "encode", "", "t", "output", "Ljava/io/OutputStream;", "(Ljava/lang/Object;Ljava/io/OutputStream;)V", "readFrom", "(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeTo", "(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "storage_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProtoSerializer<T> implements Serializer<T> {
    private final ProtoAdapter<T> adapter;
    private final Function0<T> defaultValueFactory;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    /* JADX WARN: Multi-variable type inference failed */
    public ProtoSerializer(ProtoAdapter<T> adapter, Function0<? extends T> defaultValueFactory, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(defaultValueFactory, "defaultValueFactory");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.adapter = adapter;
        this.defaultValueFactory = defaultValueFactory;
        this.logger = logger;
    }

    @Override // androidx.datastore.core.Serializer
    public T getDefaultValue() {
        return this.defaultValueFactory.invoke();
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, Continuation<? super T> continuation) {
        try {
            return decode(inputStream);
        } catch (CancellationException e) {
            throw e;
        } catch (Exception e2) {
            this.logger.e("Error deserializing protobuf.", e2, new Pair[0]);
            return getDefaultValue();
        }
    }

    @Override // androidx.datastore.core.Serializer
    public Object writeTo(T t, OutputStream outputStream, Continuation<? super Unit> continuation) throws IOException {
        encode(t, outputStream);
        return Unit.INSTANCE;
    }

    private final T decode(InputStream input) {
        return this.adapter.decode(input);
    }

    private final void encode(T t, OutputStream output) throws IOException {
        this.adapter.encode(output, t);
    }
}
