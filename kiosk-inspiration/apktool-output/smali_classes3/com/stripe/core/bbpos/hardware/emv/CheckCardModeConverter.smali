.class public final Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;
.super Ljava/lang/Object;
.source "CheckCardModeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;",
        "",
        "()V",
        "toCheckCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "toReaderConfiguration",
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->INSTANCE:Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toCheckCardMode(Ljava/util/Set;)Lcom/stripe/bbpos/sdk/CheckCardMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)",
            "Lcom/stripe/bbpos/sdk/CheckCardMode;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 14
    :cond_0
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->INSERT:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getTAP()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 16
    :cond_2
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 17
    :cond_3
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_TAP()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 18
    :cond_4
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT_OR_TAP()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 19
    :cond_5
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 20
    :cond_6
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getMANUAL_ENTRY()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 22
    :cond_7
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1
.end method

.method public final toReaderConfiguration(Lcom/stripe/bbpos/sdk/CheckCardMode;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/sdk/CheckCardMode;",
            ")",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/CheckCardMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 37
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getMANUAL_ENTRY()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT_OR_TAP()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_TAP()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getTAP()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE()Ljava/util/Set;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
