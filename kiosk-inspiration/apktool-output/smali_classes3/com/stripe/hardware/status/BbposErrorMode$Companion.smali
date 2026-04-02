.class public final Lcom/stripe/hardware/status/BbposErrorMode$Companion;
.super Ljava/lang/Object;
.source "BbposErrorMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/status/BbposErrorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/hardware/status/BbposErrorMode$Companion;",
        "",
        "()V",
        "getErrorMode",
        "Lcom/stripe/hardware/status/BbposErrorMode;",
        "mode",
        "",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/status/BbposErrorMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrorMode(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposErrorMode;
    .locals 2

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x607

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6f8

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :pswitch_1
    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/stripe/hardware/status/BbposErrorMode;->Firmware:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object p1

    .line 12
    :pswitch_2
    const-string v0, "03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :pswitch_3
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/stripe/hardware/status/BbposErrorMode;->Key:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object p1

    .line 12
    :cond_2
    const-string v0, "80"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object p1, Lcom/stripe/hardware/status/BbposErrorMode;->UnrecoverableTamper:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object p1

    .line 12
    :cond_4
    const-string v0, "07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    sget-object p1, Lcom/stripe/hardware/status/BbposErrorMode;->Config:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object p1

    .line 17
    :cond_6
    :goto_0
    sget-object p1, Lcom/stripe/hardware/status/BbposErrorMode;->Unknown:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x602
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
