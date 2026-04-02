package com.stripe.jvmcore.environment;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Environment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0013\u0014\u0015\u0016\u0017B?\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\u0082\u0001\u0005\u0018\u0019\u001a\u001b\u001c¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment;", "", "stripeApiUrl", "", "filesApiUrl", "armadaApiUrl", "gatorApiUrl", "clientLoggerApiUrl", "wardenApiUrl", "name", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getArmadaApiUrl", "()Ljava/lang/String;", "getClientLoggerApiUrl", "getFilesApiUrl", "getGatorApiUrl", "getName", "getStripeApiUrl", "getWardenApiUrl", "Certhorse", "Preprod", "Prod", "ProxyGateway", "QA", "Lcom/stripe/jvmcore/environment/Environment$Certhorse;", "Lcom/stripe/jvmcore/environment/Environment$Preprod;", "Lcom/stripe/jvmcore/environment/Environment$Prod;", "Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;", "Lcom/stripe/jvmcore/environment/Environment$QA;", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Environment {
    private final String armadaApiUrl;
    private final String clientLoggerApiUrl;
    private final String filesApiUrl;
    private final String gatorApiUrl;
    private final String name;
    private final String stripeApiUrl;
    private final String wardenApiUrl;

    public /* synthetic */ Environment(String str, String str2, String str3, String str4, String str5, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, str7);
    }

    private Environment(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.stripeApiUrl = str;
        this.filesApiUrl = str2;
        this.armadaApiUrl = str3;
        this.gatorApiUrl = str4;
        this.clientLoggerApiUrl = str5;
        this.wardenApiUrl = str6;
        this.name = str7;
    }

    public final String getStripeApiUrl() {
        return this.stripeApiUrl;
    }

    public final String getFilesApiUrl() {
        return this.filesApiUrl;
    }

    public final String getArmadaApiUrl() {
        return this.armadaApiUrl;
    }

    public final String getGatorApiUrl() {
        return this.gatorApiUrl;
    }

    public final String getClientLoggerApiUrl() {
        return this.clientLoggerApiUrl;
    }

    public final String getWardenApiUrl() {
        return this.wardenApiUrl;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment$Prod;", "Lcom/stripe/jvmcore/environment/Environment;", "()V", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Prod extends Environment {
        public static final Prod INSTANCE = new Prod();

        private Prod() {
            super("https://api.stripe.com", "https://files.stripe.com", "https://armada.stripe.com", "https://gator.stripe.com", "https://gator.stripe.com", "https://armada.stripe.com", "PROD", null);
        }
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment$Preprod;", "Lcom/stripe/jvmcore/environment/Environment;", "()V", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Preprod extends Environment {
        public static final Preprod INSTANCE = new Preprod();

        private Preprod() {
            super("https://preprod-api.stripe.com", "https://preprod-files.stripe.com", "https://preprod-armada.stripe.com", "https://preprod-gator.stripe.com", "https://preprod-gator.stripe.com", "https://preprod-armada.stripe.com", "PREPROD", null);
        }
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment$QA;", "Lcom/stripe/jvmcore/environment/Environment;", "()V", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class QA extends Environment {
        public static final QA INSTANCE = new QA();

        private QA() {
            super("https://qa-api.stripe.com", "https://qa-files.stripe.com", "https://qa-armada.stripe.com", "https://qa-gator.stripe.com", "https://qa-gator.stripe.com", "https://qa-armada.stripe.com", "QA", null);
        }
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;", "Lcom/stripe/jvmcore/environment/Environment;", "()V", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ProxyGateway extends Environment {
        public static final ProxyGateway INSTANCE = new ProxyGateway();

        private ProxyGateway() {
            super("https://preprod-terminal-proxy-gateway.stripe.com", "https://preprod-files.stripe.com", "https://preprod-armada.stripe.com", "https://preprod-gator.stripe.com", "https://preprod-gator.stripe.com", "https://preprod-armada.stripe.com", "PROXYGATEWAY", null);
        }
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/environment/Environment$Certhorse;", "Lcom/stripe/jvmcore/environment/Environment;", "instance", "", "(Ljava/lang/String;)V", "getInstance", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Certhorse extends Environment {
        private final String instance;

        public static /* synthetic */ Certhorse copy$default(Certhorse certhorse, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = certhorse.instance;
            }
            return certhorse.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getInstance() {
            return this.instance;
        }

        public final Certhorse copy(String instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            return new Certhorse(instance);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Certhorse) && Intrinsics.areEqual(this.instance, ((Certhorse) other).instance);
        }

        public int hashCode() {
            return this.instance.hashCode();
        }

        public String toString() {
            return "Certhorse(instance=" + this.instance + ')';
        }

        public final String getInstance() {
            return this.instance;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Certhorse(String instance) {
            super("https://qa-certfe.cert.stripe.me", "https://qa-certfe.cert.stripe.me", "https://qa-certfe.cert.stripe.me", "https://qa-certfe.cert.stripe.me", "https://qa-certfe.cert.stripe.me", "https://qa-certfe.cert.stripe.me", "CERTHORSE", null);
            Intrinsics.checkNotNullParameter(instance, "instance");
            this.instance = instance;
        }
    }
}
