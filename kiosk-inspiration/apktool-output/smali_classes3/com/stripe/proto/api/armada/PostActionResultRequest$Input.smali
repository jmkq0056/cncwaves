.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
.super Lcom/squareup/wire/Message;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\r\'()*+,-./0123B\u009d\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0002\u0010\u001dJ\u009e\u0001\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001f\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u0008\u0010%\u001a\u00020&H\u0016R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;",
        "type",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;",
        "custom_text",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;",
        "signature",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;",
        "phone",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;",
        "email",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;",
        "text",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;",
        "numeric",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;",
        "address",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;",
        "skipped",
        "toggles",
        "",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Address",
        "Builder",
        "Choice",
        "Companion",
        "CustomText",
        "Email",
        "InputType",
        "Numeric",
        "Phone",
        "Selection",
        "Signature",
        "Text",
        "Toggle",
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
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Address#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$CustomText#ADAPTER"
        jsonName = "customText"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Email#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Numeric#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Phone#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final required:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Selection#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Signature#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final skipped:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Text#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final toggles:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$InputType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;

    .line 785
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 784
    const-class v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 788
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 784
    new-instance v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;-><init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
            "Z",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p13}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 435
    iput-object p2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    .line 444
    iput-boolean p3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    .line 452
    iput-object p4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 460
    iput-object p5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 468
    iput-object p6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 476
    iput-object p7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 484
    iput-object p8, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 492
    iput-object p9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 500
    iput-object p10, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    .line 508
    iput-boolean p11, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    .line 526
    invoke-static {v0, p12}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    .line 529
    filled-new-array {p8, p9, p10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p5, p6, p7, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of selection, signature, phone, email, text, numeric, address may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 434
    sget-object p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v4, p4

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_2

    :cond_4
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_3

    :cond_5
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object/from16 v7, p7

    :goto_4
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move-object v8, v2

    goto :goto_5

    :cond_7
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    move-object v9, v2

    goto :goto_6

    :cond_8
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v2, p10

    :goto_7
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v3, p11

    :goto_8
    and-int/lit16 v10, v0, 0x800

    if-eqz v10, :cond_b

    .line 516
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_9

    :cond_b
    move-object/from16 v10, p12

    :goto_9
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 517
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_a

    :cond_c
    move-object/from16 p15, p13

    :goto_a
    move-object p3, p1

    move-object p4, p2

    move/from16 p5, v1

    move-object/from16 p12, v2

    move/from16 p13, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p14, v10

    move-object p2, p0

    .line 426
    invoke-direct/range {p2 .. p15}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;-><init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 610
    iget-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 612
    iget-boolean v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 613
    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 614
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    .line 615
    iget-object v5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    .line 616
    iget-object v6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    .line 617
    iget-object v7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    .line 618
    iget-object v8, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    .line 619
    iget-object v9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    .line 620
    iget-boolean v10, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    goto :goto_9

    :cond_a
    move/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    .line 621
    iget-object v11, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 622
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move/from16 p13, v10

    move-object/from16 p14, v11

    .line 609
    invoke-virtual/range {p2 .. p15}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->copy(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
            "Z",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;"
        }
    .end annotation

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v14}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;-><init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 554
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    if-eq v1, v3, :cond_3

    return v2

    .line 557
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 558
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 559
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 560
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 561
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 562
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 563
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 564
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 565
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 566
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 567
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 572
    iget v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->hashCode:I

    if-nez v0, :cond_8

    .line 574
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 575
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 576
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 577
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 578
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 579
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 580
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 581
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 582
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 583
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 584
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 585
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 586
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    iput v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->hashCode:I

    :cond_8
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 2

    .line 535
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 537
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    .line 538
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->required:Z

    .line 539
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 540
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 541
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 542
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 543
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 544
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 545
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    .line 546
    iget-boolean v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->skipped:Z

    .line 547
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->toggles:Ljava/util/List;

    .line 548
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 594
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "required="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "phone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "email="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numeric="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toggles="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Input{"

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
