.class public final enum Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;
.super Ljava/lang/Enum;
.source "ImageRef.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "IMAGE_FORMAT_INVALID",
        "PNG",
        "JPG",
        "GIF",
        "WEBP",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;

.field public static final enum GIF:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public static final enum IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public static final enum JPG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public static final enum PNG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public static final enum WEBP:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;
    .locals 5

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->PNG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->JPG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->GIF:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v4, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->WEBP:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 291
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    const-string v1, "IMAGE_FORMAT_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 292
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    const-string v2, "PNG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->PNG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 293
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    const-string v2, "JPG"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->JPG:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 294
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    const-string v2, "GIF"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->GIF:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 295
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    const-string v2, "WEBP"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->WEBP:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-static {}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->$values()[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->$VALUES:[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;

    .line 300
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 302
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 300
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;->fromValue(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;
    .locals 1

    const-class v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;
    .locals 1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->$VALUES:[Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->value:I

    return v0
.end method
