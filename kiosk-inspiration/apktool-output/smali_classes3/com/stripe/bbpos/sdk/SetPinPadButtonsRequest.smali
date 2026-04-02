.class public final Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;
.super Lcom/squareup/wire/Message;
.source "SetPinPadButtonsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;,
        Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u00ab\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u00ac\u0001\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;",
        "zero",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "backspace",
        "cancel",
        "enter",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
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
            "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.ButtonCoordinates#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->Companion:Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion;

    .line 359
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 358
    const-class v1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 362
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 358
    new-instance v3, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    const/16 v15, 0x3fff

    const/16 v16, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;-><init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 30
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 38
    iput-object p2, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 46
    iput-object p3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 54
    iput-object p4, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 62
    iput-object p5, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 70
    iput-object p6, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 78
    iput-object p7, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 86
    iput-object p8, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 94
    iput-object p9, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 102
    iput-object p10, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 110
    iput-object p11, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 118
    iput-object p12, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 126
    iput-object p13, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 134
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p14, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    .line 29
    invoke-direct/range {p1 .. p15}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;-><init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 219
    iget-object v4, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 220
    iget-object v5, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 221
    iget-object v6, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 222
    iget-object v7, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 223
    iget-object v8, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 224
    iget-object v9, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 225
    iget-object v10, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 226
    iget-object v11, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 227
    iget-object v12, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 228
    iget-object v13, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 229
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 215
    invoke-virtual/range {p1 .. p15}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->copy(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;
    .locals 16

    const-string v0, "unknownFields"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;-><init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 164
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 165
    :cond_8
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 166
    :cond_9
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 168
    :cond_b
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 169
    :cond_c
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 170
    :cond_d
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 171
    :cond_e
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 176
    iget v0, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->hashCode:I

    if-nez v0, :cond_d

    .line 178
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 182
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 183
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 184
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 185
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 186
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 187
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 188
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 189
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 190
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 191
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    .line 192
    iput v0, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->hashCode:I

    :cond_d
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->newBuilder()Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 2

    .line 137
    new-instance v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 139
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 140
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 141
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 142
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 143
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 144
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 145
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 146
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 147
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 148
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 149
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 150
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 151
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 199
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zero="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "one="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "two="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "three="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "four="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "five="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "six="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seven="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_8
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nine="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_9
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "backspace="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_a
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_b
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enter="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_c
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SetPinPadButtonsRequest{"

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
