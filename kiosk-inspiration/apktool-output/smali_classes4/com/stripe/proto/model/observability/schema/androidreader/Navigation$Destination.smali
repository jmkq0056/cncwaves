.class public final enum Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
.super Ljava/lang/Enum;
.source "Navigation.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/androidreader/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0086\u0081\u0002\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN_NAVIGATION_DESTINATION",
        "REDIRECT",
        "HOME",
        "ADMIN",
        "REGISTRATION",
        "TRANSACTION",
        "WIFI",
        "LOCALE",
        "DEBUG",
        "DIAGNOSTICS",
        "OOBE",
        "UPDATER",
        "BOOT",
        "POP_BACK_STACK",
        "FORM",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ADMIN:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum BOOT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final Companion:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;

.field public static final enum DEBUG:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum DIAGNOSTICS:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum FORM:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum HOME:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .annotation runtime Lkotlin/Deprecated;
        message = "HOME is deprecated"
    .end annotation
.end field

.field public static final enum LOCALE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum OOBE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum POP_BACK_STACK:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum REDIRECT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum REGISTRATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum TRANSACTION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum UNKNOWN_NAVIGATION_DESTINATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum UPDATER:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

.field public static final enum WIFI:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .locals 15

    sget-object v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UNKNOWN_NAVIGATION_DESTINATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REDIRECT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v2, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->HOME:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v3, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->ADMIN:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v4, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REGISTRATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v5, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->TRANSACTION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v6, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->WIFI:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v7, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->LOCALE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v8, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DEBUG:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v9, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DIAGNOSTICS:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v10, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->OOBE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v11, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UPDATER:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v12, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->BOOT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v13, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->POP_BACK_STACK:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    sget-object v14, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->FORM:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    filled-new-array/range {v0 .. v14}, [Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 150
    new-instance v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v1, "UNKNOWN_NAVIGATION_DESTINATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UNKNOWN_NAVIGATION_DESTINATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 151
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "REDIRECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REDIRECT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 155
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "HOME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->HOME:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 157
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "ADMIN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->ADMIN:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 158
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "REGISTRATION"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->REGISTRATION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 159
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "TRANSACTION"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->TRANSACTION:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 160
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "WIFI"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->WIFI:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 161
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "LOCALE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->LOCALE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 162
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "DEBUG"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DEBUG:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 163
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "DIAGNOSTICS"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->DIAGNOSTICS:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 167
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "OOBE"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->OOBE:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 168
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "UPDATER"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->UPDATER:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 169
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "BOOT"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->BOOT:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 173
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "POP_BACK_STACK"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->POP_BACK_STACK:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    .line 174
    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    const-string v2, "FORM"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->FORM:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    invoke-static {}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->$values()[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->$VALUES:[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->Companion:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;

    .line 179
    const-class v1, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 181
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 179
    new-instance v3, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->Companion:Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;->fromValue(I)Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->$VALUES:[Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;->value:I

    return v0
.end method
