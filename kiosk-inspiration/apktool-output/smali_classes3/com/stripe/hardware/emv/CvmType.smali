.class public final enum Lcom/stripe/hardware/emv/CvmType;
.super Ljava/lang/Enum;
.source "CvmType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/CvmType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/CvmType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCvmType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CvmType.kt\ncom/stripe/hardware/emv/CvmType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1194#2,2:34\n1222#2,4:36\n1194#2,2:40\n1222#2,4:42\n*S KotlinDebug\n*F\n+ 1 CvmType.kt\ncom/stripe/hardware/emv/CvmType\n*L\n23#1:34,2\n23#1:36,4\n24#1:40,2\n24#1:42,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/CvmType;",
        "",
        "code",
        "",
        "status",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()I",
        "toString",
        "FAILURE",
        "OFFLINE_PLAINTEXT_PIN",
        "ONLINE_ENCIPHERED_PIN",
        "OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE",
        "OFFLINE_ENCIPHERED_PIN",
        "OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE",
        "SIGNATURE",
        "APPROVAL",
        "NONE",
        "Companion",
        "public_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/CvmType;

.field public static final enum APPROVAL:Lcom/stripe/hardware/emv/CvmType;

.field public static final Companion:Lcom/stripe/hardware/emv/CvmType$Companion;

.field public static final enum FAILURE:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum NONE:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum OFFLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum OFFLINE_PLAINTEXT_PIN:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum ONLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

.field public static final enum SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

.field private static final codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/stripe/hardware/emv/CvmType;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/emv/CvmType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final status:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/CvmType;
    .locals 9

    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->FAILURE:Lcom/stripe/hardware/emv/CvmType;

    sget-object v1, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_PLAINTEXT_PIN:Lcom/stripe/hardware/emv/CvmType;

    sget-object v2, Lcom/stripe/hardware/emv/CvmType;->ONLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

    sget-object v3, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    sget-object v4, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

    sget-object v5, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    sget-object v6, Lcom/stripe/hardware/emv/CvmType;->SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    sget-object v7, Lcom/stripe/hardware/emv/CvmType;->APPROVAL:Lcom/stripe/hardware/emv/CvmType;

    sget-object v8, Lcom/stripe/hardware/emv/CvmType;->NONE:Lcom/stripe/hardware/emv/CvmType;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/hardware/emv/CvmType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const/4 v1, 0x0

    const-string v2, "failure"

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->FAILURE:Lcom/stripe/hardware/emv/CvmType;

    .line 9
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const-string v1, "OFFLINE_PLAINTEXT_PIN"

    const/4 v2, 0x1

    const-string v3, "offline_pin"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_PLAINTEXT_PIN:Lcom/stripe/hardware/emv/CvmType;

    .line 10
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const/4 v1, 0x2

    const-string v2, "online_pin"

    const-string v4, "ONLINE_ENCIPHERED_PIN"

    invoke-direct {v0, v4, v1, v1, v2}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->ONLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

    .line 11
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const-string v1, "OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE"

    const/4 v2, 0x3

    const-string v4, "offline_pin_and_signature"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    .line 12
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const-string v1, "OFFLINE_ENCIPHERED_PIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

    .line 13
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const-string v1, "OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const/16 v1, 0x1e

    const-string v2, "signature"

    const-string v3, "SIGNATURE"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->SIGNATURE:Lcom/stripe/hardware/emv/CvmType;

    .line 15
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const/16 v1, 0x1f

    const-string v2, "approval"

    const-string v3, "APPROVAL"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->APPROVAL:Lcom/stripe/hardware/emv/CvmType;

    .line 16
    new-instance v0, Lcom/stripe/hardware/emv/CvmType;

    const/4 v1, -0x1

    const-string v2, "none"

    const-string v3, "NONE"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/hardware/emv/CvmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->NONE:Lcom/stripe/hardware/emv/CvmType;

    invoke-static {}, Lcom/stripe/hardware/emv/CvmType;->$values()[Lcom/stripe/hardware/emv/CvmType;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->$VALUES:[Lcom/stripe/hardware/emv/CvmType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/hardware/emv/CvmType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/CvmType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/emv/CvmType;->Companion:Lcom/stripe/hardware/emv/CvmType$Companion;

    .line 23
    invoke-static {}, Lcom/stripe/hardware/emv/CvmType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 34
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 35
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    move-object v5, v2

    check-cast v5, Lcom/stripe/hardware/emv/CvmType;

    .line 23
    iget v5, v5, Lcom/stripe/hardware/emv/CvmType;->code:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 37
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    sput-object v4, Lcom/stripe/hardware/emv/CvmType;->codeMap:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/stripe/hardware/emv/CvmType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 40
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 41
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    move-object v3, v1

    check-cast v3, Lcom/stripe/hardware/emv/CvmType;

    .line 24
    iget-object v3, v3, Lcom/stripe/hardware/emv/CvmType;->status:Ljava/lang/String;

    .line 43
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_1
    sput-object v2, Lcom/stripe/hardware/emv/CvmType;->statusMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/stripe/hardware/emv/CvmType;->code:I

    iput-object p4, p0, Lcom/stripe/hardware/emv/CvmType;->status:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCodeMap$cp()Ljava/util/Map;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->codeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getStatusMap$cp()Ljava/util/Map;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->statusMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/emv/CvmType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/CvmType;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/CvmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/CvmType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/CvmType;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->$VALUES:[Lcom/stripe/hardware/emv/CvmType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/CvmType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/stripe/hardware/emv/CvmType;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/hardware/emv/CvmType;->status:Ljava/lang/String;

    return-object v0
.end method
