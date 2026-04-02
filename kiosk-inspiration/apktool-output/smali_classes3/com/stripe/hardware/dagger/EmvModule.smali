.class public abstract Lcom/stripe/hardware/dagger/EmvModule;
.super Ljava/lang/Object;
.source "EmvModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/dagger/EmvModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/hardware/dagger/EmvModule;",
        "",
        "()V",
        "bindDomesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "parser",
        "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;",
        "bindDomesticDebitAidsParser$wiring",
        "Companion",
        "wiring"
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
.field public static final Companion:Lcom/stripe/hardware/dagger/EmvModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/hardware/dagger/EmvModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/dagger/EmvModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/dagger/EmvModule;->Companion:Lcom/stripe/hardware/dagger/EmvModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindDomesticDebitAidsParser$wiring(Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;)Lcom/stripe/hardware/emv/DomesticDebitAidsParser;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
