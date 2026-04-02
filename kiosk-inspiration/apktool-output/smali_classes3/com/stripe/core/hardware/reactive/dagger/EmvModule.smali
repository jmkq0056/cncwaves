.class public abstract Lcom/stripe/core/hardware/reactive/dagger/EmvModule;
.super Ljava/lang/Object;
.source "EmvModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/dagger/EmvModule;",
        "",
        "()V",
        "bindReaderSettingsRepository",
        "Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;",
        "defaultReaderSettingsRepository",
        "Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;",
        "bindReaderSettingsRepository$hardware_reactive_release",
        "providerConfigurationListener",
        "Lcom/stripe/hardware/emv/ConfigurationListener;",
        "reactiveConfigurationListener",
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        "Companion",
        "hardware-reactive_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule;->Companion:Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindReaderSettingsRepository$hardware_reactive_release(Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;)Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract providerConfigurationListener(Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;)Lcom/stripe/hardware/emv/ConfigurationListener;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
