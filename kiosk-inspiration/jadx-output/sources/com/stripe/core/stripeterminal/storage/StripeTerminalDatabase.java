package com.stripe.core.stripeterminal.storage;

import androidx.room.RoomDatabase;
import kotlin.Metadata;

/* JADX INFO: compiled from: StripeTerminalDatabase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;", "Landroidx/room/RoomDatabase;", "()V", "eventDao", "Lcom/stripe/core/stripeterminal/storage/EventDao;", "logPointDao", "Lcom/stripe/core/stripeterminal/storage/LogPointDao;", "traceDao", "Lcom/stripe/core/stripeterminal/storage/TraceDao;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class StripeTerminalDatabase extends RoomDatabase {
    public abstract EventDao eventDao();

    public abstract LogPointDao logPointDao();

    public abstract TraceDao traceDao();
}
