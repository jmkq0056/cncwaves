.class public final enum Lcom/stripe/ext/PII;
.super Ljava/lang/Enum;
.source "PII.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/PII$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/PII;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0008\u0086\u0081\u0002\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001aB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/ext/PII;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "ACCOUNT_NUMBER",
        "DEVICE",
        "DOB",
        "EMAIL_ADDRESS",
        "FREEFORM",
        "GENDER",
        "ID_NUMBER",
        "IMAGE",
        "IP_ADDRESS",
        "LOCATION",
        "NAME",
        "ORGANIZATION",
        "PASSWORD",
        "PHONE_NUMBER",
        "RELATIONSHIP",
        "URL",
        "USERNAME",
        "ANY_PII",
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/PII;

.field public static final enum ACCOUNT_NUMBER:Lcom/stripe/ext/PII;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/PII;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANY_PII:Lcom/stripe/ext/PII;

.field public static final Companion:Lcom/stripe/ext/PII$Companion;

.field public static final enum DEVICE:Lcom/stripe/ext/PII;

.field public static final enum DOB:Lcom/stripe/ext/PII;

.field public static final enum EMAIL_ADDRESS:Lcom/stripe/ext/PII;

.field public static final enum FREEFORM:Lcom/stripe/ext/PII;

.field public static final enum GENDER:Lcom/stripe/ext/PII;

.field public static final enum ID_NUMBER:Lcom/stripe/ext/PII;

.field public static final enum IMAGE:Lcom/stripe/ext/PII;

.field public static final enum IP_ADDRESS:Lcom/stripe/ext/PII;

.field public static final enum LOCATION:Lcom/stripe/ext/PII;

.field public static final enum NAME:Lcom/stripe/ext/PII;

.field public static final enum ORGANIZATION:Lcom/stripe/ext/PII;

.field public static final enum PASSWORD:Lcom/stripe/ext/PII;

.field public static final enum PHONE_NUMBER:Lcom/stripe/ext/PII;

.field public static final enum RELATIONSHIP:Lcom/stripe/ext/PII;

.field public static final enum URL:Lcom/stripe/ext/PII;

.field public static final enum USERNAME:Lcom/stripe/ext/PII;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/PII;
    .locals 19

    sget-object v1, Lcom/stripe/ext/PII;->ACCOUNT_NUMBER:Lcom/stripe/ext/PII;

    sget-object v2, Lcom/stripe/ext/PII;->DEVICE:Lcom/stripe/ext/PII;

    sget-object v3, Lcom/stripe/ext/PII;->DOB:Lcom/stripe/ext/PII;

    sget-object v4, Lcom/stripe/ext/PII;->EMAIL_ADDRESS:Lcom/stripe/ext/PII;

    sget-object v5, Lcom/stripe/ext/PII;->FREEFORM:Lcom/stripe/ext/PII;

    sget-object v6, Lcom/stripe/ext/PII;->GENDER:Lcom/stripe/ext/PII;

    sget-object v7, Lcom/stripe/ext/PII;->ID_NUMBER:Lcom/stripe/ext/PII;

    sget-object v8, Lcom/stripe/ext/PII;->IMAGE:Lcom/stripe/ext/PII;

    sget-object v9, Lcom/stripe/ext/PII;->IP_ADDRESS:Lcom/stripe/ext/PII;

    sget-object v10, Lcom/stripe/ext/PII;->LOCATION:Lcom/stripe/ext/PII;

    sget-object v11, Lcom/stripe/ext/PII;->NAME:Lcom/stripe/ext/PII;

    sget-object v12, Lcom/stripe/ext/PII;->ORGANIZATION:Lcom/stripe/ext/PII;

    sget-object v13, Lcom/stripe/ext/PII;->PASSWORD:Lcom/stripe/ext/PII;

    sget-object v14, Lcom/stripe/ext/PII;->PHONE_NUMBER:Lcom/stripe/ext/PII;

    sget-object v15, Lcom/stripe/ext/PII;->RELATIONSHIP:Lcom/stripe/ext/PII;

    sget-object v16, Lcom/stripe/ext/PII;->URL:Lcom/stripe/ext/PII;

    sget-object v17, Lcom/stripe/ext/PII;->USERNAME:Lcom/stripe/ext/PII;

    sget-object v18, Lcom/stripe/ext/PII;->ANY_PII:Lcom/stripe/ext/PII;

    filled-new-array/range {v1 .. v18}, [Lcom/stripe/ext/PII;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "ACCOUNT_NUMBER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->ACCOUNT_NUMBER:Lcom/stripe/ext/PII;

    .line 31
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->DEVICE:Lcom/stripe/ext/PII;

    .line 35
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "DOB"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->DOB:Lcom/stripe/ext/PII;

    .line 36
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "EMAIL_ADDRESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->EMAIL_ADDRESS:Lcom/stripe/ext/PII;

    .line 42
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "FREEFORM"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->FREEFORM:Lcom/stripe/ext/PII;

    .line 46
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "GENDER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->GENDER:Lcom/stripe/ext/PII;

    .line 51
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "ID_NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->ID_NUMBER:Lcom/stripe/ext/PII;

    .line 55
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "IMAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->IMAGE:Lcom/stripe/ext/PII;

    .line 60
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "IP_ADDRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->IP_ADDRESS:Lcom/stripe/ext/PII;

    .line 65
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "LOCATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->LOCATION:Lcom/stripe/ext/PII;

    .line 69
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "NAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->NAME:Lcom/stripe/ext/PII;

    .line 73
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "ORGANIZATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->ORGANIZATION:Lcom/stripe/ext/PII;

    .line 77
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "PASSWORD"

    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->PASSWORD:Lcom/stripe/ext/PII;

    .line 78
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "PHONE_NUMBER"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->PHONE_NUMBER:Lcom/stripe/ext/PII;

    .line 82
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "RELATIONSHIP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v4}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->RELATIONSHIP:Lcom/stripe/ext/PII;

    .line 87
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "URL"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->URL:Lcom/stripe/ext/PII;

    .line 92
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "USERNAME"

    invoke-direct {v0, v1, v3, v4}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->USERNAME:Lcom/stripe/ext/PII;

    .line 96
    new-instance v0, Lcom/stripe/ext/PII;

    const-string v1, "ANY_PII"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/PII;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/PII;->ANY_PII:Lcom/stripe/ext/PII;

    invoke-static {}, Lcom/stripe/ext/PII;->$values()[Lcom/stripe/ext/PII;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/PII;->$VALUES:[Lcom/stripe/ext/PII;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/ext/PII;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/ext/PII$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/ext/PII$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/ext/PII;->Companion:Lcom/stripe/ext/PII$Companion;

    .line 101
    const-class v0, Lcom/stripe/ext/PII;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 101
    new-instance v2, Lcom/stripe/ext/PII$Companion$ADAPTER$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/ext/PII$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v2, Lcom/squareup/wire/ProtoAdapter;

    sput-object v2, Lcom/stripe/ext/PII;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/stripe/ext/PII;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/PII;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/PII;->Companion:Lcom/stripe/ext/PII$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/PII$Companion;->fromValue(I)Lcom/stripe/ext/PII;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/PII;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/PII;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/PII;
    .locals 1

    const-class v0, Lcom/stripe/ext/PII;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/PII;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/PII;
    .locals 1

    sget-object v0, Lcom/stripe/ext/PII;->$VALUES:[Lcom/stripe/ext/PII;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/PII;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/stripe/ext/PII;->value:I

    return v0
.end method
