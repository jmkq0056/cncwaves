.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;
.super Ljava/lang/Object;
.source "JackrabbitModule_ProvideInternetReaderDnsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/Dns;",
        ">;"
    }
.end annotation


# instance fields
.field private final inetAddressValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;->inetAddressValidatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInternetReaderDns(Lcom/stripe/jvmcore/dns/InetAddressValidator;)Lokhttp3/Dns;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideInternetReaderDns(Lcom/stripe/jvmcore/dns/InetAddressValidator;)Lokhttp3/Dns;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Dns;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;->get()Lokhttp3/Dns;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Dns;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;->inetAddressValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/dns/InetAddressValidator;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;->provideInternetReaderDns(Lcom/stripe/jvmcore/dns/InetAddressValidator;)Lokhttp3/Dns;

    move-result-object v0

    return-object v0
.end method
