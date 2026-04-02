.class public final enum Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;
.super Ljava/lang/Enum;
.source "KeyMissingEvent.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectionSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "DETECTION_SOURCE_INVALID",
        "SOURCE_CALLBACK",
        "SOURCE_BACKGROUND_LOOP",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;

.field public static final enum DETECTION_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

.field public static final enum SOURCE_BACKGROUND_LOOP:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

.field public static final enum SOURCE_CALLBACK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;
    .locals 3

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->DETECTION_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->SOURCE_CALLBACK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->SOURCE_BACKGROUND_LOOP:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 221
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    const-string v1, "DETECTION_SOURCE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->DETECTION_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    .line 225
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    const-string v2, "SOURCE_CALLBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->SOURCE_CALLBACK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    .line 229
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    const-string v2, "SOURCE_BACKGROUND_LOOP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->SOURCE_BACKGROUND_LOOP:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    invoke-static {}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->$values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;

    .line 234
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 236
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 234
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;->fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;
    .locals 1

    const-class v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;
    .locals 1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->value:I

    return v0
.end method
