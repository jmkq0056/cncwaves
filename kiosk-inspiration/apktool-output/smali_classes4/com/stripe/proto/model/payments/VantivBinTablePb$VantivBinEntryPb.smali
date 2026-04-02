.class public final Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
.super Lcom/squareup/wire/Message;
.source "VantivBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/VantivBinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VantivBinEntryPb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;,
        Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$B\u00cd\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u00ce\u0001\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\tH\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;",
        "sequence_number",
        "",
        "bin_length",
        "pan_length",
        "bin_number",
        "table_id",
        "",
        "debit_card_indicator",
        "",
        "check_card_indicator",
        "credit_card_indicator",
        "gift_card_indictor",
        "commercial_card_indicator",
        "fleet_card_indicator",
        "prepaid_card_indicator",
        "hsa_fsa_account_indicator",
        "pinless_bill_pay_indicator",
        "ebt_indicator",
        "wic_bin_indicator",
        "international_bin_indicator",
        "durbin_bin_regulation_indicator",
        "pinless_pos",
        "unknownFields",
        "Lokio/ByteString;",
        "(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bin_length:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "binLength"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final bin_number:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "binNumber"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final check_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "checkCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final commercial_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "commercialCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final credit_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "creditCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final debit_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "debitCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final durbin_bin_regulation_indicator:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "durbinBinRegulationIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final ebt_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "ebtIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final fleet_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "fleetCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final gift_card_indictor:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "giftCardIndictor"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final hsa_fsa_account_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "hsaFsaAccountIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final international_bin_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "internationalBinIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final pan_length:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "panLength"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final pinless_bill_pay_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "pinlessBillPayIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final pinless_pos:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "pinlessPos"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final prepaid_card_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "prepaidCardIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final sequence_number:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "sequenceNumber"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final table_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "tableId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final wic_bin_indicator:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "wicBinIndicator"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->Companion:Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;

    .line 630
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 629
    const-class v1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 633
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 629
    new-instance v3, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v22}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;-><init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V
    .locals 3

    move-object/from16 v0, p18

    move-object/from16 v1, p20

    const-string v2, "table_id"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "durbin_bin_regulation_indicator"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 151
    iput p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    .line 160
    iput p2, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    .line 169
    iput p3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    .line 178
    iput p4, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    .line 187
    iput-object p5, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    .line 196
    iput-boolean p6, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    .line 205
    iput-boolean p7, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    .line 214
    iput-boolean p8, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    .line 223
    iput-boolean p9, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    .line 232
    iput-boolean p10, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    .line 241
    iput-boolean p11, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    .line 250
    iput-boolean p12, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    move/from16 p1, p13

    .line 259
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    move/from16 p1, p14

    .line 268
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    move/from16 p1, p15

    .line 277
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    move/from16 p1, p16

    .line 286
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    move/from16 p1, p17

    .line 295
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    .line 304
    iput-object v0, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    move/from16 p1, p19

    .line 313
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 150
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

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move/from16 v2, p14

    :goto_d
    move/from16 p1, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move/from16 v1, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    goto :goto_11

    :cond_11
    move-object/from16 v7, p18

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, v0, v18

    if-eqz v18, :cond_12

    const/16 v18, 0x0

    goto :goto_12

    :cond_12
    move/from16 v18, p19

    :goto_12
    const/high16 v19, 0x80000

    and-int v0, v0, v19

    if-eqz v0, :cond_13

    .line 322
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p21, v0

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
    move/from16 p2, p1

    move/from16 p16, v1

    move/from16 p15, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p19, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p17, v16

    move/from16 p18, v17

    move/from16 p20, v18

    move-object/from16 p1, p0

    .line 150
    invoke-direct/range {p1 .. p21}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;-><init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 428
    iget v2, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 429
    iget v3, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 430
    iget v4, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 431
    iget v5, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 432
    iget-object v6, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 433
    iget-boolean v7, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 434
    iget-boolean v8, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 435
    iget-boolean v9, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 436
    iget-boolean v10, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 437
    iget-boolean v11, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 438
    iget-boolean v12, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 439
    iget-boolean v13, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 440
    iget-boolean v14, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 441
    iget-boolean v15, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 442
    iget-boolean v2, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 443
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    .line 444
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p21, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    .line 445
    iget-object v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p21, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 446
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p21, v16

    if-eqz v16, :cond_13

    .line 447
    invoke-virtual {v0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p21, v16

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
    move/from16 p17, p2

    move/from16 p18, p3

    move-object/from16 p19, p4

    move/from16 p20, v1

    move/from16 p16, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p2, p1

    move-object/from16 p1, v0

    .line 427
    invoke-virtual/range {p1 .. p21}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->copy(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
    .locals 22

    const-string v0, "table_id"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durbin_bin_regulation_indicator"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v2, p20

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, v2

    move/from16 v2, p1

    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;-><init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 351
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 353
    :cond_2
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    iget v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    if-eq v1, v3, :cond_3

    return v2

    .line 354
    :cond_3
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    iget v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    if-eq v1, v3, :cond_4

    return v2

    .line 355
    :cond_4
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    iget v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    if-eq v1, v3, :cond_5

    return v2

    .line 356
    :cond_5
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    iget v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    if-eq v1, v3, :cond_6

    return v2

    .line 357
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 358
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 359
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 360
    :cond_9
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 361
    :cond_a
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    if-eq v1, v3, :cond_b

    return v2

    .line 362
    :cond_b
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    if-eq v1, v3, :cond_c

    return v2

    .line 363
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 364
    :cond_d
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    if-eq v1, v3, :cond_e

    return v2

    .line 365
    :cond_e
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 366
    :cond_f
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 367
    :cond_10
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    if-eq v1, v3, :cond_11

    return v2

    .line 368
    :cond_11
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    if-eq v1, v3, :cond_12

    return v2

    .line 369
    :cond_12
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 370
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 371
    :cond_14
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 376
    iget v0, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hashCode:I

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 379
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 380
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 381
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 382
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 383
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 384
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 385
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 386
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 387
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 388
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 389
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 390
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 391
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 392
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 393
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 394
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 395
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 396
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 397
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    iput v0, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->newBuilder()Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 2

    .line 325
    new-instance v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;-><init>()V

    .line 326
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    iput v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->sequence_number:I

    .line 327
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    iput v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_length:I

    .line 328
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    iput v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pan_length:I

    .line 329
    iget v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    iput v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_number:I

    .line 330
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->table_id:Ljava/lang/String;

    .line 331
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->debit_card_indicator:Z

    .line 332
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->check_card_indicator:Z

    .line 333
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->credit_card_indicator:Z

    .line 334
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->gift_card_indictor:Z

    .line 335
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->commercial_card_indicator:Z

    .line 336
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->fleet_card_indicator:Z

    .line 337
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->prepaid_card_indicator:Z

    .line 338
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->hsa_fsa_account_indicator:Z

    .line 339
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_bill_pay_indicator:Z

    .line 340
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->ebt_indicator:Z

    .line 341
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->wic_bin_indicator:Z

    .line 342
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->international_bin_indicator:Z

    .line 343
    iget-object v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->durbin_bin_regulation_indicator:Ljava/lang/String;

    .line 344
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_pos:Z

    .line 345
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 405
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sequence_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pan_length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "table_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debit_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "credit_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gift_card_indictor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commercial_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fleet_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepaid_card_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hsa_fsa_account_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinless_bill_pay_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ebt_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wic_bin_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "international_bin_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "durbin_bin_regulation_indicator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinless_pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "VantivBinEntryPb{"

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
