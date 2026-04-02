.class public final Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;
.super Ljava/lang/Object;
.source "DefaultTipEligibleValidator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;
    .locals 1

    .line 44
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;->newInstance(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;->get()Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;

    move-result-object v0

    return-object v0
.end method
