.class public final enum Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
.super Ljava/lang/Enum;
.source "ManualEntryState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "",
        "(Ljava/lang/String;I)V",
        "EMPTY",
        "CONFIGURE_READER",
        "PAN_ENTRY",
        "EXPIRY_DATE_ENTRY",
        "CVV_ENTRY",
        "ZIP_CODE",
        "CONFIRM_DETAILS",
        "FINISHED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum CVV_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum EXPIRY_DATE_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field public static final enum ZIP_CODE:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 8

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v3, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EXPIRY_DATE_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CVV_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v5, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ZIP_CODE:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v6, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    sget-object v7, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 12
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "CONFIGURE_READER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 17
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "PAN_ENTRY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 22
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "EXPIRY_DATE_ENTRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EXPIRY_DATE_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 27
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "CVV_ENTRY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CVV_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 32
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "ZIP_CODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ZIP_CODE:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 37
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "CONFIRM_DETAILS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 42
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const-string v1, "FINISHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->$values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->$VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->$VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    return-object v0
.end method
