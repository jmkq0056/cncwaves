package com.stripe.offlinemode.storage;

import android.content.Context;
import androidx.room.RoomDatabase;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineDatabaseProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001Bh\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\f\u0012%\b\u0002\u0010\r\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0018\u001a\u00020\u0010H\u0016R\u001b\u0010\u0013\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;", "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;", "context", "Landroid/content/Context;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "ext", "Lkotlin/Function1;", "Landroidx/room/RoomDatabase$Builder;", "Lcom/stripe/offlinemode/storage/OfflineDatabase;", "Lkotlin/ExtensionFunctionType;", "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V", "database", "getDatabase", "()Lcom/stripe/offlinemode/storage/OfflineDatabase;", "database$delegate", "Lkotlin/Lazy;", "get", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineDatabaseProvider implements OfflineDatabaseProvider {

    /* JADX INFO: renamed from: database$delegate, reason: from kotlin metadata */
    private final Lazy database;

    public DefaultOfflineDatabaseProvider(final Context context, final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, final Logger<?, ?> logger, final Function1<? super RoomDatabase.Builder<OfflineDatabase>, ? extends RoomDatabase.Builder<OfflineDatabase>> ext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(ext, "ext");
        this.database = LazyKt.lazy(new Function0<OfflineDatabase>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineDatabaseProvider$database$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OfflineDatabase invoke() {
                return OfflineDatabase.INSTANCE.create(context, discreteLogger, logger, ext);
            }
        });
    }

    public /* synthetic */ DefaultOfflineDatabaseProvider(Context context, HealthLogger healthLogger, Logger logger, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, healthLogger, logger, (i & 8) != 0 ? new Function1<RoomDatabase.Builder<OfflineDatabase>, RoomDatabase.Builder<OfflineDatabase>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineDatabaseProvider.1
            @Override // kotlin.jvm.functions.Function1
            public final RoomDatabase.Builder<OfflineDatabase> invoke(RoomDatabase.Builder<OfflineDatabase> builder) {
                Intrinsics.checkNotNullParameter(builder, "$this$null");
                return builder;
            }
        } : anonymousClass1);
    }

    private final OfflineDatabase getDatabase() {
        return (OfflineDatabase) this.database.getValue();
    }

    @Override // com.stripe.offlinemode.storage.OfflineDatabaseProvider
    public OfflineDatabase get() {
        return getDatabase();
    }
}
