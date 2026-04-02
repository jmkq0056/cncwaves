.class public final Lcom/stripe/hardware/ReaderConfiguration;
.super Ljava/lang/Object;
.source "ReaderConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/ReaderConfiguration$Companion;,
        Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;,
        Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;,
        Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;,
        Lcom/stripe/hardware/ReaderConfiguration$ReaderType;,
        Lcom/stripe/hardware/ReaderConfiguration$TransactionType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u0000 72\u00020\u0001:\u0006789:;<Ba\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\u0008H\u00c6\u0003J\t\u0010+\u001a\u00020\nH\u00c6\u0003J\t\u0010,\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\t\u00100\u001a\u00020\u0014H\u00c6\u0003Jo\u00101\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u00c6\u0001J\u0013\u00102\u001a\u00020\u00142\u0008\u00103\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00104\u001a\u000205H\u00d6\u0001J\t\u00106\u001a\u00020\u000eH\u00d6\u0001R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u0006="
    }
    d2 = {
        "Lcom/stripe/hardware/ReaderConfiguration;",
        "",
        "readersEnabled",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "transactionAmount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/ReaderConfiguration$TransactionType;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "quickChipMode",
        "Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;",
        "terminalCapabilitiesOverride",
        "",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "contactlessOnlinePinOption",
        "Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;",
        "forcePinEntry",
        "",
        "(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V",
        "getContactlessOnlinePinOption",
        "()Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;",
        "getDomesticDebitPriority",
        "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "getEmvTransactionType",
        "()Lcom/stripe/hardware/emv/EmvTransactionType;",
        "getForcePinEntry",
        "()Z",
        "getQuickChipMode",
        "()Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;",
        "getReadersEnabled",
        "()Ljava/util/Set;",
        "getTerminalCapabilitiesOverride",
        "()Ljava/lang/String;",
        "getTransactionAmount",
        "()Lcom/stripe/currency/Amount;",
        "getTransactionType",
        "()Lcom/stripe/hardware/ReaderConfiguration$TransactionType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "ContactlessOnlinePinOption",
        "DomesticDebitPriority",
        "QuickChipOption",
        "ReaderType",
        "TransactionType",
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
.field public static final Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

.field private static final INSERT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSERT_OR_TAP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MANUAL_ENTRY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWIPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWIPE_OR_INSERT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWIPE_OR_INSERT_OR_TAP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWIPE_OR_TAP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

.field private final domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field private final emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

.field private final forcePinEntry:Z

.field private final quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

.field private final readersEnabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalCapabilitiesOverride:Ljava/lang/String;

.field private final transactionAmount:Lcom/stripe/currency/Amount;

.field private final transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/stripe/hardware/ReaderConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    .line 93
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE:Ljava/util/Set;

    .line 94
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/ReaderConfiguration;->INSERT:Ljava/util/Set;

    .line 95
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/ReaderConfiguration;->TAP:Ljava/util/Set;

    const/4 v0, 0x2

    .line 96
    new-array v1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT:Ljava/util/Set;

    .line 97
    new-array v1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_TAP:Ljava/util/Set;

    .line 98
    new-array v1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/ReaderConfiguration;->INSERT_OR_TAP:Ljava/util/Set;

    const/4 v1, 0x3

    .line 99
    new-array v2, v1, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object v5, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v5, v2, v3

    sget-object v5, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v5, v2, v4

    sget-object v5, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v5, v2, v0

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT_OR_TAP:Ljava/util/Set;

    .line 100
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MANUAL_ENTRY:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/stripe/hardware/ReaderConfiguration;->MANUAL_ENTRY:Ljava/util/Set;

    const/4 v2, 0x4

    .line 102
    new-array v2, v2, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object v5, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v5, v2, v3

    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v3, v2, v0

    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MANUAL_ENTRY:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object v0, v2, v1

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/ReaderConfiguration$TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;",
            "Z)V"
        }
    .end annotation

    const-string v0, "readersEnabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvTransactionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickChipMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    .line 9
    iput-object p2, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    .line 10
    iput-object p3, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    .line 11
    iput-object p4, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    .line 12
    iput-object p5, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    .line 13
    iput-object p6, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    .line 15
    iput-object p8, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    .line 16
    iput-boolean p9, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2

    move-object p8, v0

    :cond_2
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_3

    const/4 p9, 0x0

    :cond_3
    move p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 7
    invoke-direct/range {p1 .. p10}, Lcom/stripe/hardware/ReaderConfiguration;-><init>(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V

    return-void
.end method

.method public static final synthetic access$getINSERT$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->INSERT:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getINSERT_OR_TAP$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->INSERT_OR_TAP:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getMANUAL_ENTRY$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->MANUAL_ENTRY:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSWIPE$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSWIPE_OR_INSERT$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSWIPE_OR_INSERT_OR_TAP$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT_OR_TAP:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSWIPE_OR_TAP$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->SWIPE_OR_TAP:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getTAP$cp()Ljava/util/Set;
    .locals 1

    .line 7
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->TAP:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/ReaderConfiguration;Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;ZILjava/lang/Object;)Lcom/stripe/hardware/ReaderConfiguration;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-boolean p9, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    :cond_8
    move-object p10, p8

    move p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/stripe/hardware/ReaderConfiguration;->copy(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)Lcom/stripe/hardware/ReaderConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    return-object v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()Lcom/stripe/hardware/ReaderConfiguration$TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    return-object v0
.end method

.method public final component4()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final component5()Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final component8()Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    return v0
.end method

.method public final copy(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)Lcom/stripe/hardware/ReaderConfiguration;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/ReaderConfiguration$TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;",
            "Z)",
            "Lcom/stripe/hardware/ReaderConfiguration;"
        }
    .end annotation

    const-string v0, "readersEnabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvTransactionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickChipMode"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/ReaderConfiguration;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/stripe/hardware/ReaderConfiguration;-><init>(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/ReaderConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/ReaderConfiguration;

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    iget-object v3, p1, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    iget-boolean p1, p1, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getContactlessOnlinePinOption()Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    return-object v0
.end method

.method public final getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final getForcePinEntry()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    return v0
.end method

.method public final getQuickChipMode()Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    return-object v0
.end method

.method public final getReadersEnabled()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    return-object v0
.end method

.method public final getTerminalCapabilitiesOverride()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/ReaderConfiguration$TransactionType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/EmvTransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReaderConfiguration(readersEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->readersEnabled:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->transactionType:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emvTransactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quickChipMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->quickChipMode:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", terminalCapabilitiesOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domesticDebitPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactlessOnlinePinOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->contactlessOnlinePinOption:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forcePinEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/ReaderConfiguration;->forcePinEntry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
