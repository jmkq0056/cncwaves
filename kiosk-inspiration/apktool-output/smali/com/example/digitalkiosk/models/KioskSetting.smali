.class public final Lcom/example/digitalkiosk/models/KioskSetting;
.super Ljava/lang/Object;
.source "KioskSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008@\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00c7\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001f\u0010 J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\u0006H\u00c6\u0003J\t\u0010A\u001a\u00020\u0006H\u00c6\u0003J\t\u0010B\u001a\u00020\u0006H\u00c6\u0003J\t\u0010C\u001a\u00020\u0006H\u00c6\u0003J\t\u0010D\u001a\u00020\u000bH\u00c6\u0003J\t\u0010E\u001a\u00020\u0006H\u00c6\u0003J\t\u0010F\u001a\u00020\u0006H\u00c6\u0003J\t\u0010G\u001a\u00020\u0006H\u00c6\u0003J\t\u0010H\u001a\u00020\u0006H\u00c6\u0003J\t\u0010I\u001a\u00020\u0006H\u00c6\u0003J\t\u0010J\u001a\u00020\u0006H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0014H\u00c6\u0003J\t\u0010M\u001a\u00020\u0006H\u00c6\u0003J\u0019\u0010N\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019H\u00c6\u0003J\t\u0010O\u001a\u00020\u0006H\u00c6\u0003J\t\u0010P\u001a\u00020\u0006H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010R\u001a\u00020\u0003H\u00c6\u0003J\t\u0010S\u001a\u00020\u000bH\u00c6\u0003J\u00f5\u0001\u0010T\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00062\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010U\u001a\u00020\u00062\u0008\u0010V\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010W\u001a\u00020\u000bH\u00d6\u0001J\t\u0010X\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010%R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010%R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010%R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010%R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010%R\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010%R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010%R\u0011\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010%R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010%R\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\"R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0011\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010%R!\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010%R\u001a\u0010\u001b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010%\"\u0004\u00089\u0010:R\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\"R\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\"R\u0011\u0010\u001e\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010*\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        "",
        "app_logo",
        "",
        "video",
        "takeaway_enabled",
        "",
        "dinein_enabled",
        "picklater_enabled",
        "dinein_tables",
        "pick_later_minutes",
        "",
        "bag_active",
        "bag_force",
        "cash_enabled",
        "paypal_enabled",
        "card_enabled",
        "mobilepay_enabled",
        "stripe_reader",
        "currency",
        "Lcom/example/digitalkiosk/models/Currency;",
        "direct_payment_enabled",
        "printer_lines",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/PrinterLine;",
        "Lkotlin/collections/ArrayList;",
        "environment_friendly_print_enabled",
        "sandbox_mode",
        "printer_type",
        "activated_printer",
        "printer_codepage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V",
        "getApp_logo",
        "()Ljava/lang/String;",
        "getVideo",
        "getTakeaway_enabled",
        "()Z",
        "getDinein_enabled",
        "getPicklater_enabled",
        "getDinein_tables",
        "getPick_later_minutes",
        "()I",
        "getBag_active",
        "getBag_force",
        "getCash_enabled",
        "getPaypal_enabled",
        "getCard_enabled",
        "getMobilepay_enabled",
        "getStripe_reader",
        "getCurrency",
        "()Lcom/example/digitalkiosk/models/Currency;",
        "getDirect_payment_enabled",
        "getPrinter_lines",
        "()Ljava/util/ArrayList;",
        "getEnvironment_friendly_print_enabled",
        "getSandbox_mode",
        "setSandbox_mode",
        "(Z)V",
        "getPrinter_type",
        "getActivated_printer",
        "getPrinter_codepage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activated_printer:Ljava/lang/String;

.field private final app_logo:Ljava/lang/String;

.field private final bag_active:Z

.field private final bag_force:Z

.field private final card_enabled:Z

.field private final cash_enabled:Z

.field private final currency:Lcom/example/digitalkiosk/models/Currency;

.field private final dinein_enabled:Z

.field private final dinein_tables:Z

.field private final direct_payment_enabled:Z

.field private final environment_friendly_print_enabled:Z

.field private final mobilepay_enabled:Z

.field private final paypal_enabled:Z

.field private final pick_later_minutes:I

.field private final picklater_enabled:Z

.field private final printer_codepage:I

.field private final printer_lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/PrinterLine;",
            ">;"
        }
    .end annotation
.end field

.field private final printer_type:Ljava/lang/String;

.field private sandbox_mode:Z

.field private final stripe_reader:Ljava/lang/String;

.field private final takeaway_enabled:Z

.field private final video:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZIZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/example/digitalkiosk/models/Currency;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/PrinterLine;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p14

    move-object/from16 v1, p15

    move-object/from16 v2, p17

    move-object/from16 v3, p20

    move-object/from16 v4, p21

    const-string v5, "app_logo"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "video"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "stripe_reader"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "currency"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "printer_lines"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "printer_type"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "activated_printer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    .line 7
    iput-boolean p4, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    .line 8
    iput-boolean p5, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    .line 9
    iput-boolean p6, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    .line 10
    iput p7, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    .line 11
    iput-boolean p8, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    .line 12
    iput-boolean p9, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    move/from16 p1, p10

    .line 13
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    move/from16 p1, p11

    .line 14
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    move/from16 p1, p12

    .line 15
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    move/from16 p1, p13

    .line 16
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    .line 17
    iput-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    move/from16 p1, p16

    .line 19
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    .line 20
    iput-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    move/from16 p1, p18

    .line 21
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    move/from16 p1, p19

    .line 22
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    .line 23
    iput-object v3, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    .line 24
    iput-object v4, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    move/from16 p1, p22

    .line 25
    iput p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/example/digitalkiosk/models/KioskSetting;Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p23, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p23, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-boolean v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p23, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    iget-boolean v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p23, v16

    move/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p23, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p23, v16

    if-eqz v16, :cond_15

    move-object/from16 p7, v1

    iget v1, v0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    move-object/from16 p22, p7

    move/from16 p23, v1

    goto :goto_15

    :cond_15
    move/from16 p23, p22

    move-object/from16 p22, v1

    :goto_15
    move/from16 p17, p2

    move-object/from16 p18, p3

    move/from16 p19, p4

    move/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p23}, Lcom/example/digitalkiosk/models/KioskSetting;->copy(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lcom/example/digitalkiosk/models/Currency;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    return-object v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    return v0
.end method

.method public final component17()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/PrinterLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    return v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZIZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/example/digitalkiosk/models/Currency;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/PrinterLine;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/example/digitalkiosk/models/KioskSetting;"
        }
    .end annotation

    const-string v0, "app_logo"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_reader"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printer_lines"

    move-object/from16 v4, p17

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printer_type"

    move-object/from16 v5, p20

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activated_printer"

    move-object/from16 v6, p21

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/digitalkiosk/models/KioskSetting;

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v23, p22

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v23}, Lcom/example/digitalkiosk/models/KioskSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/digitalkiosk/models/KioskSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/example/digitalkiosk/models/KioskSetting;

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    iget v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    iget-boolean v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    iget p1, p1, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    if-eq v1, p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getActivated_printer()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    return-object v0
.end method

.method public final getApp_logo()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getBag_active()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    return v0
.end method

.method public final getBag_force()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    return v0
.end method

.method public final getCard_enabled()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    return v0
.end method

.method public final getCash_enabled()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    return v0
.end method

.method public final getCurrency()Lcom/example/digitalkiosk/models/Currency;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    return-object v0
.end method

.method public final getDinein_enabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    return v0
.end method

.method public final getDinein_tables()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    return v0
.end method

.method public final getDirect_payment_enabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    return v0
.end method

.method public final getEnvironment_friendly_print_enabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    return v0
.end method

.method public final getMobilepay_enabled()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    return v0
.end method

.method public final getPaypal_enabled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    return v0
.end method

.method public final getPick_later_minutes()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    return v0
.end method

.method public final getPicklater_enabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    return v0
.end method

.method public final getPrinter_codepage()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    return v0
.end method

.method public final getPrinter_lines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/PrinterLine;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPrinter_type()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    return-object v0
.end method

.method public final getSandbox_mode()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    return v0
.end method

.method public final getStripe_reader()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    return-object v0
.end method

.method public final getTakeaway_enabled()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    return v0
.end method

.method public final getVideo()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Currency;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSandbox_mode(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KioskSetting(app_logo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->app_logo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", video="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->video:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", takeaway_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->takeaway_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dinein_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", picklater_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->picklater_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dinein_tables="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->dinein_tables:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pick_later_minutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->pick_later_minutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bag_active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bag_force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->bag_force:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cash_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->cash_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paypal_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->paypal_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", card_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/example/digitalkiosk/models/KioskSetting;->card_enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mobilepay_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->mobilepay_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stripe_reader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->stripe_reader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->currency:Lcom/example/digitalkiosk/models/Currency;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direct_payment_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->direct_payment_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", printer_lines="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", environment_friendly_print_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->environment_friendly_print_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sandbox_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->sandbox_mode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", printer_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activated_printer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->activated_printer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", printer_codepage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/digitalkiosk/models/KioskSetting;->printer_codepage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
