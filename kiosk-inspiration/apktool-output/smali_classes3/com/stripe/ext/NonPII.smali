.class public final enum Lcom/stripe/ext/NonPII;
.super Ljava/lang/Enum;
.source "NonPII.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/NonPII$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/NonPII;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/ext/NonPII;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "SECURITY_TOKEN",
        "NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS",
        "STRIPE_CONTROLLED_ACCOUNT_NUMBER",
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/NonPII;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/NonPII;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/ext/NonPII$Companion;

.field public static final enum NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS:Lcom/stripe/ext/NonPII;

.field public static final enum SECURITY_TOKEN:Lcom/stripe/ext/NonPII;

.field public static final enum STRIPE_CONTROLLED_ACCOUNT_NUMBER:Lcom/stripe/ext/NonPII;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/NonPII;
    .locals 3

    sget-object v0, Lcom/stripe/ext/NonPII;->SECURITY_TOKEN:Lcom/stripe/ext/NonPII;

    sget-object v1, Lcom/stripe/ext/NonPII;->NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS:Lcom/stripe/ext/NonPII;

    sget-object v2, Lcom/stripe/ext/NonPII;->STRIPE_CONTROLLED_ACCOUNT_NUMBER:Lcom/stripe/ext/NonPII;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/ext/NonPII;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/stripe/ext/NonPII;

    const-string v1, "SECURITY_TOKEN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/NonPII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/NonPII;->SECURITY_TOKEN:Lcom/stripe/ext/NonPII;

    .line 29
    new-instance v0, Lcom/stripe/ext/NonPII;

    const-string v1, "NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/ext/NonPII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/NonPII;->NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS:Lcom/stripe/ext/NonPII;

    .line 33
    new-instance v0, Lcom/stripe/ext/NonPII;

    const-string v1, "STRIPE_CONTROLLED_ACCOUNT_NUMBER"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/NonPII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/NonPII;->STRIPE_CONTROLLED_ACCOUNT_NUMBER:Lcom/stripe/ext/NonPII;

    invoke-static {}, Lcom/stripe/ext/NonPII;->$values()[Lcom/stripe/ext/NonPII;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/NonPII;->$VALUES:[Lcom/stripe/ext/NonPII;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/NonPII;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/ext/NonPII$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/ext/NonPII$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/ext/NonPII;->Companion:Lcom/stripe/ext/NonPII$Companion;

    .line 38
    const-class v0, Lcom/stripe/ext/NonPII;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 38
    new-instance v2, Lcom/stripe/ext/NonPII$Companion$ADAPTER$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/ext/NonPII$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v2, Lcom/squareup/wire/ProtoAdapter;

    sput-object v2, Lcom/stripe/ext/NonPII;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/stripe/ext/NonPII;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/NonPII;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/NonPII;->Companion:Lcom/stripe/ext/NonPII$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/NonPII$Companion;->fromValue(I)Lcom/stripe/ext/NonPII;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/NonPII;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/NonPII;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/NonPII;
    .locals 1

    const-class v0, Lcom/stripe/ext/NonPII;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/NonPII;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/NonPII;
    .locals 1

    sget-object v0, Lcom/stripe/ext/NonPII;->$VALUES:[Lcom/stripe/ext/NonPII;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/NonPII;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/stripe/ext/NonPII;->value:I

    return v0
.end method
