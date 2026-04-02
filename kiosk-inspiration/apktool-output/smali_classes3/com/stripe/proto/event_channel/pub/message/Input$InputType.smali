.class public final enum Lcom/stripe/proto/event_channel/pub/message/Input$InputType;
.super Ljava/lang/Enum;
.source "Input.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "INPUT_TYPE_INVALID",
        "SIGNATURE",
        "SELECTION",
        "PHONE",
        "EMAIL",
        "TEXT",
        "NUMERIC",
        "ADDRESS",
        "Companion",
        "terminal_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ADDRESS:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;

.field public static final enum EMAIL:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum NUMERIC:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum PHONE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum SELECTION:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum SIGNATURE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

.field public static final enum TEXT:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;
    .locals 8

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->SIGNATURE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->SELECTION:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->PHONE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v4, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->EMAIL:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v5, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->TEXT:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v6, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->NUMERIC:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v7, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADDRESS:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 272
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v1, "INPUT_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 273
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "SIGNATURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->SIGNATURE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 274
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "SELECTION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->SELECTION:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 275
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "PHONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->PHONE:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 276
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "EMAIL"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->EMAIL:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 277
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "TEXT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->TEXT:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 278
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "NUMERIC"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->NUMERIC:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 279
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    const-string v2, "ADDRESS"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADDRESS:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-static {}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->$values()[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->$VALUES:[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->Companion:Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;

    .line 284
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 286
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 284
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/event_channel/pub/message/Input$InputType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 270
    iput p3, p0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/event_channel/pub/message/Input$InputType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->Companion:Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;->fromValue(I)Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Input$InputType;
    .locals 1

    const-class v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->$VALUES:[Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->value:I

    return v0
.end method
