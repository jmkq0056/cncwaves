.class public final Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;
.super Ljava/lang/Object;
.source "TapToPayUxConfigurationRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;",
        "",
        "()V",
        "uxConfig",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
        "getUxConfig",
        "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
        "setUxConfig",
        "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V",
        "adapter_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;

.field private static uxConfig:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUxConfig()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
    .locals 1

    .line 6
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;->uxConfig:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    return-object v0
.end method

.method public final setUxConfig(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V
    .locals 0

    .line 6
    sput-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;->uxConfig:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    return-void
.end method
