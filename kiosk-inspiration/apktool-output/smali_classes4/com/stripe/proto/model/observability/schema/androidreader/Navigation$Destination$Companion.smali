.class public final Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;
.super Ljava/lang/Object;
.source "Navigation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
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
        "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;",
        "fromValue",
        "value",
        "",
        "internal_release"
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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->FORM:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 202
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->POP_BACK_STACK:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 201
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->BOOT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 200
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UPDATER:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 199
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->OOBE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 198
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DIAGNOSTICS:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 197
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DEBUG:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 196
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->LOCALE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 195
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->WIFI:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 194
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->TRANSACTION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 193
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REGISTRATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 192
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->ADMIN:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 191
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->HOME:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 190
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REDIRECT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    .line 189
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UNKNOWN_NAVIGATION_DESTINATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
