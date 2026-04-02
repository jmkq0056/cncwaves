.class public final enum Lcom/stripe/stripeterminal/internal/models/ReadMethod;
.super Ljava/lang/Enum;
.source "ReadMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        "",
        "entryMode",
        "",
        "method",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getMethod",
        "()Ljava/lang/String;",
        "CONTACT_EMV",
        "CONTACTLESS_EMV",
        "MAGNETIC_STRIPE_FALLBACK",
        "MAGNETIC_STRIPE_TRACK_2",
        "CONTACTLESS_MAGSTRIPE_MODE",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/models/ReadMethod;

.field public static final enum CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "contactless_emv"
    .end annotation
.end field

.field public static final enum CONTACTLESS_MAGSTRIPE_MODE:Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "contactless_magstripe_mode"
    .end annotation
.end field

.field public static final enum CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "contact_emv"
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;

.field public static final enum MAGNETIC_STRIPE_FALLBACK:Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "magnetic_stripe_fallback"
    .end annotation
.end field

.field public static final enum MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "magnetic_stripe_track2"
    .end annotation
.end field


# instance fields
.field private final entryMode:Ljava/lang/String;

.field private final method:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 5

    sget-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    sget-object v1, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    sget-object v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_FALLBACK:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    sget-object v3, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    sget-object v4, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_MAGSTRIPE_MODE:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 13
    const-string v1, "05"

    const-string v2, "contact_emv"

    .line 12
    const-string v3, "CONTACT_EMV"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 15
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 16
    const-string v1, "07"

    const-string v2, "contactless_emv"

    .line 15
    const-string v3, "CONTACTLESS_EMV"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 18
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 19
    const-string v1, "80"

    const-string v2, "magnetic_stripe_fallback"

    .line 18
    const-string v3, "MAGNETIC_STRIPE_FALLBACK"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_FALLBACK:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 21
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 22
    const-string v1, "90"

    const-string v2, "magnetic_stripe_track2"

    .line 21
    const-string v3, "MAGNETIC_STRIPE_TRACK_2"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 24
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 25
    const-string v1, "91"

    const-string v2, "contactless_magstripe_mode"

    .line 24
    const-string v3, "CONTACTLESS_MAGSTRIPE_MODE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_MAGSTRIPE_MODE:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->$values()[Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->$VALUES:[Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->Companion:Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->entryMode:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->method:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEntryMode$p(Lcom/stripe/stripeterminal/internal/models/ReadMethod;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->entryMode:Ljava/lang/String;

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->$VALUES:[Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    return-object v0
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->method:Ljava/lang/String;

    return-object v0
.end method
