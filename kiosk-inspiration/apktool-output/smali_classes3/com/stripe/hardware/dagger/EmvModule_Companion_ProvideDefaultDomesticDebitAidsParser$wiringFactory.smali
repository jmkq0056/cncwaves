.class public final Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;
.super Ljava/lang/Object;
.source "EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
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
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;

    invoke-direct {v0, p0}, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultDomesticDebitAidsParser$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/hardware/dagger/EmvModule;->Companion:Lcom/stripe/hardware/dagger/EmvModule$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/hardware/dagger/EmvModule$Companion;->provideDefaultDomesticDebitAidsParser$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0}, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;->provideDefaultDomesticDebitAidsParser$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;->get()Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    move-result-object v0

    return-object v0
.end method
