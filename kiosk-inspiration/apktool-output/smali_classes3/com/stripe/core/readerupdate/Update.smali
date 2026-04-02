.class public abstract Lcom/stripe/core/readerupdate/Update;
.super Ljava/lang/Object;
.source "Update.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/Update$Config;,
        Lcom/stripe/core/readerupdate/Update$Firmware;,
        Lcom/stripe/core/readerupdate/Update$Keys;,
        Lcom/stripe/core/readerupdate/Update$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0007\u0008\t\nB\u0011\u0008\u0004\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0004\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/Update;",
        "",
        "version",
        "",
        "(Ljava/lang/String;)V",
        "getVersion",
        "()Ljava/lang/String;",
        "Config",
        "Firmware",
        "Keys",
        "Settings",
        "Lcom/stripe/core/readerupdate/Update$Config;",
        "Lcom/stripe/core/readerupdate/Update$Firmware;",
        "Lcom/stripe/core/readerupdate/Update$Keys;",
        "Lcom/stripe/core/readerupdate/Update$Settings;",
        "readerupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/readerupdate/Update;->version:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/Update;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/core/readerupdate/Update;->version:Ljava/lang/String;

    return-object v0
.end method
