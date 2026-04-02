.class public final enum Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
.super Ljava/lang/Enum;
.source "CotsContactlessResult.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsContactlessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactlessOutcome"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0081\u0002\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0018B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN",
        "ACCESS_NOT_ALLOWED",
        "APPROVED",
        "DECLINED",
        "PROCEED_ONLINE",
        "RECOVERABLE_ERROR",
        "IRRECOVERABLE_ERROR",
        "NFC_IS_DISABLED",
        "CANCELED",
        "NO_MUTUALLY_SUPPORTED_APPLICATIONS",
        "SEE_PHONE",
        "INVALID_CURRENCY",
        "READER_NOT_ACTIVE",
        "PIN_COLLECTED",
        "CARD_READ_TIMED_OUT",
        "INSECURE_ENVIRONMENT",
        "Companion",
        "proto_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum ACCESS_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum APPROVED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum CARD_READ_TIMED_OUT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;

.field public static final enum DECLINED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum INSECURE_ENVIRONMENT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum INVALID_CURRENCY:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum IRRECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum NFC_IS_DISABLED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum NO_MUTUALLY_SUPPORTED_APPLICATIONS:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum PIN_COLLECTED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum READER_NOT_ACTIVE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum RECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum SEE_PHONE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public static final enum UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .locals 17

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ACCESS_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->APPROVED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v4, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->DECLINED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v5, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->RECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v7, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->IRRECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v8, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NFC_IS_DISABLED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v9, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v10, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NO_MUTUALLY_SUPPORTED_APPLICATIONS:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v11, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->SEE_PHONE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v12, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INVALID_CURRENCY:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v13, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->READER_NOT_ACTIVE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v14, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PIN_COLLECTED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v15, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CARD_READ_TIMED_OUT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    sget-object v16, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INSECURE_ENVIRONMENT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    filled-new-array/range {v1 .. v16}, [Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 268
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 272
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "ACCESS_NOT_ALLOWED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ACCESS_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 276
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "APPROVED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->APPROVED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 280
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "DECLINED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->DECLINED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 284
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "PROCEED_ONLINE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 289
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "RECOVERABLE_ERROR"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->RECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 294
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "IRRECOVERABLE_ERROR"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->IRRECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 298
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "NFC_IS_DISABLED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NFC_IS_DISABLED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 302
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "CANCELED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 307
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "NO_MUTUALLY_SUPPORTED_APPLICATIONS"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NO_MUTUALLY_SUPPORTED_APPLICATIONS:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 312
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "SEE_PHONE"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->SEE_PHONE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 316
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "INVALID_CURRENCY"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INVALID_CURRENCY:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 320
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "READER_NOT_ACTIVE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->READER_NOT_ACTIVE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 324
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "PIN_COLLECTED"

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PIN_COLLECTED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 328
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "CARD_READ_TIMED_OUT"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v4, v3}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CARD_READ_TIMED_OUT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 332
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const-string v2, "INSECURE_ENVIRONMENT"

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INSECURE_ENVIRONMENT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->$values()[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;

    .line 338
    const-class v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 340
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 338
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;->fromValue(I)Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .locals 1

    const-class v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .locals 1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->value:I

    return v0
.end method
