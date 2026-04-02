.class public final enum Lcom/stripe/ext/RequestPriority;
.super Ljava/lang/Enum;
.source "RequestPriority.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/RequestPriority$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/RequestPriority;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/ext/RequestPriority;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "P0",
        "P1",
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/RequestPriority;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/RequestPriority;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/ext/RequestPriority$Companion;

.field public static final enum P0:Lcom/stripe/ext/RequestPriority;

.field public static final enum P1:Lcom/stripe/ext/RequestPriority;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/RequestPriority;
    .locals 2

    sget-object v0, Lcom/stripe/ext/RequestPriority;->P0:Lcom/stripe/ext/RequestPriority;

    sget-object v1, Lcom/stripe/ext/RequestPriority;->P1:Lcom/stripe/ext/RequestPriority;

    filled-new-array {v0, v1}, [Lcom/stripe/ext/RequestPriority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/stripe/ext/RequestPriority;

    const-string v1, "P0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/RequestPriority;->P0:Lcom/stripe/ext/RequestPriority;

    .line 26
    new-instance v0, Lcom/stripe/ext/RequestPriority;

    const-string v1, "P1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/ext/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/RequestPriority;->P1:Lcom/stripe/ext/RequestPriority;

    invoke-static {}, Lcom/stripe/ext/RequestPriority;->$values()[Lcom/stripe/ext/RequestPriority;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/RequestPriority;->$VALUES:[Lcom/stripe/ext/RequestPriority;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/RequestPriority;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/ext/RequestPriority$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/ext/RequestPriority$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/ext/RequestPriority;->Companion:Lcom/stripe/ext/RequestPriority$Companion;

    .line 31
    const-class v0, Lcom/stripe/ext/RequestPriority;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 31
    new-instance v2, Lcom/stripe/ext/RequestPriority$Companion$ADAPTER$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/ext/RequestPriority$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v2, Lcom/squareup/wire/ProtoAdapter;

    sput-object v2, Lcom/stripe/ext/RequestPriority;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/ext/RequestPriority;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/RequestPriority;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/RequestPriority;->Companion:Lcom/stripe/ext/RequestPriority$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/RequestPriority$Companion;->fromValue(I)Lcom/stripe/ext/RequestPriority;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/RequestPriority;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/RequestPriority;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/RequestPriority;
    .locals 1

    const-class v0, Lcom/stripe/ext/RequestPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/RequestPriority;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/RequestPriority;
    .locals 1

    sget-object v0, Lcom/stripe/ext/RequestPriority;->$VALUES:[Lcom/stripe/ext/RequestPriority;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/RequestPriority;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/ext/RequestPriority;->value:I

    return v0
.end method
