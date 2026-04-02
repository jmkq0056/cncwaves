package com.stripe.hardware.dagger;

import com.stripe.hardware.emv.DefaultDomesticDebitAidsParser;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.hardware.emv.DomesticDebitAidsParserLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: EmvModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/dagger/EmvModule;", "", "()V", "bindDomesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "parser", "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;", "bindDomesticDebitAidsParser$wiring", "Companion", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class EmvModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract DomesticDebitAidsParser bindDomesticDebitAidsParser$wiring(DefaultDomesticDebitAidsParser parser);

    /* JADX INFO: compiled from: EmvModule.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/hardware/dagger/EmvModule$Companion;", "", "()V", "provideDefaultDomesticDebitAidsParser", "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideDefaultDomesticDebitAidsParser$wiring", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        public final DefaultDomesticDebitAidsParser provideDefaultDomesticDebitAidsParser$wiring(LoggerFactory loggerFactory) {
            Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
            final SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLoggerCreate = loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultDomesticDebitAidsParser.class));
            return new DefaultDomesticDebitAidsParser(new DomesticDebitAidsParserLogger() { // from class: com.stripe.hardware.dagger.EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1
                @Override // com.stripe.hardware.emv.DomesticDebitAidsParserLogger
                public void e(String message, Throwable throwable) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    if (throwable != null) {
                        simpleLoggerCreate.e(message, throwable, new Pair[0]);
                    } else {
                        simpleLoggerCreate.e(message, new Pair[0]);
                    }
                }
            });
        }
    }
}
