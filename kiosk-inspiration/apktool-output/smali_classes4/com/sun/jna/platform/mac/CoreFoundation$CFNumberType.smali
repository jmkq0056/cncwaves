.class public final enum Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;
.super Ljava/lang/Enum;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CFNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberCFIndexType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberCGFloatType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberCharType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberDoubleType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberFloat32Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberFloat64Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberFloatType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberIntType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberLongLongType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberLongType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberMaxType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberNSIntegerType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberSInt16Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberSInt32Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberSInt64Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberSInt8Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum kCFNumberShortType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

.field public static final enum unusedZero:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 261
    new-instance v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "unusedZero"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->unusedZero:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberSInt8Type"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberSInt8Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v3, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberSInt16Type"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberSInt16Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v4, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberSInt32Type"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberSInt32Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v5, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberSInt64Type"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberSInt64Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    .line 262
    new-instance v6, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberFloat32Type"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberFloat32Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v7, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberFloat64Type"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberFloat64Type:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v8, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberCharType"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberCharType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v9, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberShortType"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberShortType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v10, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberIntType"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberIntType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    .line 263
    new-instance v11, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberLongType"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberLongType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v12, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberLongLongType"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberLongLongType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v13, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberFloatType"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberFloatType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v14, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberDoubleType"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberDoubleType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v15, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v0, "kCFNumberCFIndexType"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberCFIndexType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    .line 264
    new-instance v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v1, "kCFNumberNSIntegerType"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberNSIntegerType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v2, "kCFNumberCGFloatType"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberCGFloatType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    new-instance v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    const-string v2, "kCFNumberMaxType"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberMaxType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v0

    .line 260
    filled-new-array/range {v1 .. v18}, [Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->$VALUES:[Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;
    .locals 1

    .line 260
    const-class v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;
    .locals 1

    .line 260
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->$VALUES:[Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    return-object v0
.end method


# virtual methods
.method public typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
    .locals 3

    .line 272
    new-instance v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->ordinal()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;-><init>(J)V

    return-object v0
.end method
