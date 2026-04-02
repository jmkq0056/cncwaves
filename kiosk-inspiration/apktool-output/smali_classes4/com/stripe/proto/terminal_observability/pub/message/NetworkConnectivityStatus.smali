.class public final enum Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
.super Ljava/lang/Enum;
.source "NetworkConnectivityStatus.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NETWORK_CONNECTIVITY_STATUS_INVALID",
        "NETWORK_CONNECTED",
        "NETWORK_DISCONNECTED",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;

.field public static final enum NETWORK_CONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

.field public static final enum NETWORK_CONNECTIVITY_STATUS_INVALID:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

.field public static final enum NETWORK_DISCONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .locals 3

    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTIVITY_STATUS_INVALID:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    sget-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    sget-object v2, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_DISCONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    const-string v1, "NETWORK_CONNECTIVITY_STATUS_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTIVITY_STATUS_INVALID:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    .line 20
    new-instance v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    const-string v2, "NETWORK_CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    .line 21
    new-instance v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    const-string v2, "NETWORK_DISCONNECTED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_DISCONNECTED:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-static {}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->$values()[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->$VALUES:[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->Companion:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;

    .line 27
    const-class v1, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 27
    new-instance v3, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->Companion:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;->fromValue(I)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .locals 1

    const-class v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .locals 1

    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->$VALUES:[Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->value:I

    return v0
.end method
