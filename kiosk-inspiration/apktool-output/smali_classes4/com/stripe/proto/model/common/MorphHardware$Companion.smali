.class public final Lcom/stripe/proto/model/common/MorphHardware$Companion;
.super Ljava/lang/Object;
.source "MorphHardware.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/MorphHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/MorphHardware$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/MorphHardware;",
        "fromValue",
        "value",
        "",
        "common_release"
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/common/MorphHardware$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/common/MorphHardware;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->CTU0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 62
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->CTM0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 61
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->CTS0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 60
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->VFU0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 59
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->VFM0200:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 58
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->VFM0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 57
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->VFS0200:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 56
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->VFS0100:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    .line 55
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/MorphHardware;->MORPH_MODEL_NOT_SET:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
