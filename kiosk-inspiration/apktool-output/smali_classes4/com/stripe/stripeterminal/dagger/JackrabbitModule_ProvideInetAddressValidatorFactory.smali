.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;
.super Ljava/lang/Object;
.source "JackrabbitModule_ProvideInetAddressValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideInetAddressValidator()Lcom/stripe/jvmcore/dns/InetAddressValidator;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideInetAddressValidator()Lcom/stripe/jvmcore/dns/InetAddressValidator;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/dns/InetAddressValidator;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/dns/InetAddressValidator;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;->provideInetAddressValidator()Lcom/stripe/jvmcore/dns/InetAddressValidator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;->get()Lcom/stripe/jvmcore/dns/InetAddressValidator;

    move-result-object v0

    return-object v0
.end method
