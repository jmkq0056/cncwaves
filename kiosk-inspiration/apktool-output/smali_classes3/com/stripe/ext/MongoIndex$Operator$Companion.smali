.class public final Lcom/stripe/ext/MongoIndex$Operator$Companion;
.super Ljava/lang/Object;
.source "MongoIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex$Operator;
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
        "Lcom/stripe/ext/MongoIndex$Operator$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/ext/MongoIndex$Operator;",
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

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/ext/MongoIndex$Operator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/ext/MongoIndex$Operator;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 313
    :pswitch_0
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->REGEX:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 312
    :pswitch_1
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->NIN:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 311
    :pswitch_2
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->IN:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 310
    :pswitch_3
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->LTE:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 309
    :pswitch_4
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->LT:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 308
    :pswitch_5
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->GTE:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 307
    :pswitch_6
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->GT:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 306
    :pswitch_7
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->NE:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p1

    .line 305
    :pswitch_8
    sget-object p1, Lcom/stripe/ext/MongoIndex$Operator;->EQ:Lcom/stripe/ext/MongoIndex$Operator;

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
