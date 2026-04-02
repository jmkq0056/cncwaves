package com.stripe.stripeterminal.internal.common.storage;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import com.stripe.core.stripeterminal.storage.Migrations;
import com.stripe.core.stripeterminal.storage.StripeTerminalDatabase;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DatabaseProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0007J\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\b\u0005¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;", "", "()V", "INSTANCE", "Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;", "INSTANCE$1", "createInstance", "", "context", "Landroid/content/Context;", "destroyInstance", "getInstance", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DatabaseProvider {
    public static final DatabaseProvider INSTANCE = new DatabaseProvider();

    /* JADX INFO: renamed from: INSTANCE$1, reason: from kotlin metadata */
    private static StripeTerminalDatabase INSTANCE;

    private DatabaseProvider() {
    }

    public final void createInstance(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (INSTANCE == null) {
            synchronized (Reflection.getOrCreateKotlinClass(StripeTerminalDatabase.class)) {
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                RoomDatabase.Builder builderDatabaseBuilder = Room.databaseBuilder(applicationContext, StripeTerminalDatabase.class, "stripe_terminal.db");
                Migration[] allMigrations = Migrations.INSTANCE.getAllMigrations();
                INSTANCE = (StripeTerminalDatabase) builderDatabaseBuilder.addMigrations((Migration[]) Arrays.copyOf(allMigrations, allMigrations.length)).build();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final StripeTerminalDatabase getInstance() {
        return INSTANCE;
    }

    public final void destroyInstance() {
        StripeTerminalDatabase stripeTerminalDatabase = INSTANCE;
        if (stripeTerminalDatabase != null) {
            stripeTerminalDatabase.close();
        }
        INSTANCE = null;
    }
}
