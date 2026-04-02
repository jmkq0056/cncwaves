.class public final Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;
.super Ljava/lang/Object;
.source "AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;->module:Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)V

    return-object v0
.end method

.method public static providePinPadAccessibilityChecker(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;->providePinPadAccessibilityChecker()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;->module:Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;->providePinPadAccessibilityChecker(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;->get()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    move-result-object v0

    return-object v0
.end method
