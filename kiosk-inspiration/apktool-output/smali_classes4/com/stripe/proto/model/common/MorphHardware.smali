.class public final enum Lcom/stripe/proto/model/common/MorphHardware;
.super Ljava/lang/Enum;
.source "MorphHardware.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/MorphHardware$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/MorphHardware;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/MorphHardware;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "MORPH_MODEL_NOT_SET",
        "VFS0100",
        "VFS0200",
        "VFM0100",
        "VFM0200",
        "VFU0100",
        "CTS0100",
        "CTM0100",
        "CTU0100",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/MorphHardware;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/MorphHardware;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CTM0100:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum CTS0100:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum CTU0100:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final Companion:Lcom/stripe/proto/model/common/MorphHardware$Companion;

.field public static final enum MORPH_MODEL_NOT_SET:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum VFM0100:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum VFM0200:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum VFS0100:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum VFS0200:Lcom/stripe/proto/model/common/MorphHardware;

.field public static final enum VFU0100:Lcom/stripe/proto/model/common/MorphHardware;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/MorphHardware;
    .locals 9

    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->MORPH_MODEL_NOT_SET:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFS0100:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v2, Lcom/stripe/proto/model/common/MorphHardware;->VFS0200:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v3, Lcom/stripe/proto/model/common/MorphHardware;->VFM0100:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v4, Lcom/stripe/proto/model/common/MorphHardware;->VFM0200:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v5, Lcom/stripe/proto/model/common/MorphHardware;->VFU0100:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v6, Lcom/stripe/proto/model/common/MorphHardware;->CTS0100:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v7, Lcom/stripe/proto/model/common/MorphHardware;->CTM0100:Lcom/stripe/proto/model/common/MorphHardware;

    sget-object v8, Lcom/stripe/proto/model/common/MorphHardware;->CTU0100:Lcom/stripe/proto/model/common/MorphHardware;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/proto/model/common/MorphHardware;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v1, "MORPH_MODEL_NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/MorphHardware;->MORPH_MODEL_NOT_SET:Lcom/stripe/proto/model/common/MorphHardware;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "VFS0100"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFS0100:Lcom/stripe/proto/model/common/MorphHardware;

    .line 34
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "VFS0200"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFS0200:Lcom/stripe/proto/model/common/MorphHardware;

    .line 35
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "VFM0100"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFM0100:Lcom/stripe/proto/model/common/MorphHardware;

    .line 36
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "VFM0200"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFM0200:Lcom/stripe/proto/model/common/MorphHardware;

    .line 37
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "VFU0100"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->VFU0100:Lcom/stripe/proto/model/common/MorphHardware;

    .line 38
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "CTS0100"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->CTS0100:Lcom/stripe/proto/model/common/MorphHardware;

    .line 39
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "CTM0100"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->CTM0100:Lcom/stripe/proto/model/common/MorphHardware;

    .line 40
    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware;

    const-string v2, "CTU0100"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/MorphHardware;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->CTU0100:Lcom/stripe/proto/model/common/MorphHardware;

    invoke-static {}, Lcom/stripe/proto/model/common/MorphHardware;->$values()[Lcom/stripe/proto/model/common/MorphHardware;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->$VALUES:[Lcom/stripe/proto/model/common/MorphHardware;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/MorphHardware$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/MorphHardware$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/MorphHardware;->Companion:Lcom/stripe/proto/model/common/MorphHardware$Companion;

    .line 45
    const-class v1, Lcom/stripe/proto/model/common/MorphHardware;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 45
    new-instance v3, Lcom/stripe/proto/model/common/MorphHardware$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/MorphHardware$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/MorphHardware;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/MorphHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/stripe/proto/model/common/MorphHardware;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/MorphHardware;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->Companion:Lcom/stripe/proto/model/common/MorphHardware$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/MorphHardware$Companion;->fromValue(I)Lcom/stripe/proto/model/common/MorphHardware;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/MorphHardware;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/MorphHardware;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/MorphHardware;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/MorphHardware;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->$VALUES:[Lcom/stripe/proto/model/common/MorphHardware;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/MorphHardware;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/stripe/proto/model/common/MorphHardware;->value:I

    return v0
.end method
