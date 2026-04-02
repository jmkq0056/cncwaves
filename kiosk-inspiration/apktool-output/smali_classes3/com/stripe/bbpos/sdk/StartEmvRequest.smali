.class public final Lcom/stripe/bbpos/sdk/StartEmvRequest;
.super Lcom/squareup/wire/Message;
.source "StartEmvRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;,
        Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u0000 +2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*+B\u00d5\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010 J\u00db\u0001\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\r2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\r2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\u0008\u0010\'\u001a\u00020\u0008H\u0016J\u0008\u0010(\u001a\u00020\u0002H\u0016J\u0008\u0010)\u001a\u00020\u000bH\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0010\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;",
        "transactionType",
        "Lcom/stripe/bbpos/sdk/TransactionType;",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "currencyCode",
        "",
        "currencyExponent",
        "amount",
        "",
        "disableQuickChip",
        "",
        "checkCardTimeout",
        "selectApplicationTimeout",
        "selectAccountTypeTimeout",
        "onlineProcessTimeout",
        "terminalTime",
        "quickChipOption",
        "Lcom/stripe/bbpos/sdk/QuickChipOption;",
        "isMerchantChoiceRouting",
        "terminalCapabilitiesOverride",
        "domesticDebitPriority",
        "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;",
        "contactlessOnlinePinOption",
        "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;",
        "forcePinEntry",
        "isAccessiblePinPad",
        "pinEntryTimeout",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V",
        "Ljava/lang/Integer;",
        "copy",
        "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "sdk-protos_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.CheckCardMode#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final checkCardTimeout:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ContactlessOnlinePinOption#ADAPTER"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final currencyCode:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final currencyExponent:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final disableQuickChip:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.DomesticDebitPriority#ADAPTER"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final forcePinEntry:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final isAccessiblePinPad:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final isMerchantChoiceRouting:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final onlineProcessTimeout:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final pinEntryTimeout:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.QuickChipOption#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final selectAccountTypeTimeout:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final selectApplicationTimeout:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final terminalCapabilitiesOverride:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final terminalTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final transactionType:Lcom/stripe/bbpos/sdk/TransactionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TransactionType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->Companion:Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion;

    .line 487
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 486
    const-class v1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 490
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 486
    new-instance v3, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/StartEmvRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    const v21, 0xfffff

    const/16 v22, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v22}, Lcom/stripe/bbpos/sdk/StartEmvRequest;-><init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V
    .locals 3

    move-object v0, p12

    move-object/from16 v1, p20

    const-string v2, "transactionType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "checkCardMode"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "amount"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "terminalTime"

    invoke-static {p11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "quickChipOption"

    invoke-static {p12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    .line 39
    iput-object p2, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 47
    iput p3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    .line 55
    iput p4, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    .line 63
    iput-object p5, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    .line 71
    iput-boolean p6, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    .line 79
    iput p7, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    .line 87
    iput p8, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    .line 95
    iput p9, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    .line 103
    iput p10, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    .line 111
    iput-object p11, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    move/from16 p1, p13

    .line 127
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    move-object/from16 p1, p14

    .line 135
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 142
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    move-object/from16 p1, p16

    .line 149
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    move/from16 p1, p17

    .line 156
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    move/from16 p1, p18

    .line 164
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    move-object/from16 p1, p19

    .line 172
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 46
    sget-object v2, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 30
    const-string v7, ""

    if-eqz v6, :cond_4

    move-object v6, v7

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v7, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 126
    sget-object v13, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    const/16 v16, 0x0

    if-eqz v15, :cond_d

    move-object/from16 v15, v16

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    move-object/from16 v4, v16

    goto :goto_e

    :cond_e
    move-object/from16 v4, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v16

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move/from16 v19, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    goto :goto_12

    :cond_12
    move-object/from16 v16, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    .line 179
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p21, v0

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p16, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p12, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p20, v16

    move-object/from16 p17, v17

    move/from16 p18, v18

    move/from16 p19, v19

    .line 30
    invoke-direct/range {p1 .. p21}, Lcom/stripe/bbpos/sdk/StartEmvRequest;-><init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/StartEmvRequest;Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/StartEmvRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 286
    iget-object v3, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 287
    iget v4, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 288
    iget v5, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 289
    iget-object v6, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 290
    iget-boolean v7, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 291
    iget v8, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 292
    iget v9, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 293
    iget v10, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 294
    iget v11, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 295
    iget-object v12, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 296
    iget-object v13, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 297
    iget-boolean v14, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 298
    iget-object v15, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 299
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 300
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 301
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p21, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    .line 302
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p21, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    .line 303
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p21, v16

    if-eqz v16, :cond_13

    .line 304
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p21, v16

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
    move-object/from16 p17, p2

    move/from16 p18, p3

    move/from16 p19, p4

    move-object/from16 p20, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 284
    invoke-virtual/range {p1 .. p21}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->copy(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/StartEmvRequest;
    .locals 22

    const-string v0, "transactionType"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkCardMode"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalTime"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickChipOption"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    invoke-direct/range {v1 .. v21}, Lcom/stripe/bbpos/sdk/StartEmvRequest;-><init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 208
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    if-eq v1, v3, :cond_3

    return v2

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    if-eq v1, v3, :cond_4

    return v2

    .line 212
    :cond_4
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    if-eq v1, v3, :cond_5

    return v2

    .line 213
    :cond_5
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    if-eq v1, v3, :cond_6

    return v2

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 215
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 216
    :cond_8
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    if-eq v1, v3, :cond_9

    return v2

    .line 217
    :cond_9
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    if-eq v1, v3, :cond_a

    return v2

    .line 218
    :cond_a
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    if-eq v1, v3, :cond_b

    return v2

    .line 219
    :cond_b
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    if-eq v1, v3, :cond_c

    return v2

    .line 220
    :cond_c
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 221
    :cond_d
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    if-eq v1, v3, :cond_e

    return v2

    .line 222
    :cond_e
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 223
    :cond_f
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 224
    :cond_10
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    if-eq v1, v3, :cond_11

    return v2

    .line 225
    :cond_11
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    if-eq v1, v3, :cond_12

    return v2

    .line 226
    :cond_12
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 227
    :cond_13
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    if-eq v1, v3, :cond_14

    return v2

    .line 228
    :cond_14
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 233
    iget v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->hashCode:I

    if-nez v0, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 236
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 237
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/CheckCardMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 238
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 239
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 240
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 241
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 242
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 243
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 244
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 245
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/QuickChipOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 248
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 250
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 255
    iput v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->newBuilder()Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 2

    .line 182
    new-instance v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    .line 184
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 185
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyCode:I

    .line 186
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyExponent:I

    .line 187
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->amount:Ljava/lang/String;

    .line 188
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->disableQuickChip:Z

    .line 189
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardTimeout:I

    .line 190
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectApplicationTimeout:I

    .line 191
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectAccountTypeTimeout:I

    .line 192
    iget v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->onlineProcessTimeout:I

    .line 193
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalTime:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    .line 195
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isMerchantChoiceRouting:Z

    .line 196
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalCapabilitiesOverride:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    .line 198
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    .line 199
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->forcePinEntry:Z

    .line 200
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isAccessiblePinPad:Z

    .line 201
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->pinEntryTimeout:Ljava/lang/Integer;

    .line 202
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 262
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transactionType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkCardMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currencyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currencyExponent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disableQuickChip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkCardTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectApplicationTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectAccountTypeTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onlineProcessTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminalTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "quickChipOption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isMerchantChoiceRouting="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminalCapabilitiesOverride="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domesticDebitPriority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contactlessOnlinePinOption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forcePinEntry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAccessiblePinPad="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinEntryTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "StartEmvRequest{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
