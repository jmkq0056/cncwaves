.class public final Lcom/stripe/core/hardware/Reader$SerialReader;
.super Lcom/stripe/core/hardware/Reader;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerialReader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader$SerialReader;",
        "Lcom/stripe/core/hardware/Reader;",
        "()V",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/Reader$SerialReader;

    invoke-direct {v0}, Lcom/stripe/core/hardware/Reader$SerialReader;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/Reader$SerialReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 166
    sget-object v2, Lcom/stripe/hardware/emv/CheckForCardBehavior;->POLL_FOR_CARD_REMOVAL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 164
    invoke-direct/range {v0 .. v8}, Lcom/stripe/core/hardware/Reader;-><init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
