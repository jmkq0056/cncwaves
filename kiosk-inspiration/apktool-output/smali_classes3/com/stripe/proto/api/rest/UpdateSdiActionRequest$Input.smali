.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
.super Lcom/squareup/wire/Message;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000b%&\'()*+,-./B\u0091\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u0092\u0001\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0016J\u0008\u0010#\u001a\u00020$H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;",
        "type",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;",
        "custom_text",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;",
        "required",
        "",
        "skipped",
        "selection",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
        "signature",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;",
        "email",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
        "text",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;",
        "numeric",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;",
        "phone",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
        "toggles",
        "",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
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
        "internal_release"
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
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$CustomText#ADAPTER"
        jsonName = "customText"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Email#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Numeric#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Phone#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x9
        tag = 0xa
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

.field public final selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Signature#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final skipped:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Text#ADAPTER"
        oneofName = "type_specific_fields"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final toggles:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$InputType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;

    .line 750
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 749
    const-class v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 753
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 749
    new-instance v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;-><init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;",
            "ZZ",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 434
    iput-object p2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    .line 443
    iput-boolean p3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    .line 451
    iput-boolean p4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    .line 459
    iput-object p5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 467
    iput-object p6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 475
    iput-object p7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 483
    iput-object p8, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 491
    iput-object p9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 499
    iput-object p10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    .line 517
    invoke-static {v0, p11}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    .line 520
    filled-new-array {p9, p10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5, p6, p7, p8, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of selection, signature, email, text, numeric, phone may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 433
    sget-object p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move p3, v3

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, p5

    :goto_1
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_5

    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v4, p6

    :goto_2
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_6

    move-object v5, v2

    goto :goto_3

    :cond_6
    move-object/from16 v5, p7

    :goto_3
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_7

    move-object v6, v2

    goto :goto_4

    :cond_7
    move-object/from16 v6, p8

    :goto_4
    and-int/lit16 v7, v0, 0x100

    if-eqz v7, :cond_8

    move-object v7, v2

    goto :goto_5

    :cond_8
    move-object/from16 v7, p9

    :goto_5
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v2, p10

    :goto_6
    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_a

    .line 507
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_7

    :cond_a
    move-object/from16 v8, p11

    :goto_7
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 508
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p14, v0

    goto :goto_8

    :cond_b
    move-object/from16 p14, p12

    :goto_8
    move-object p4, p2

    move p5, p3

    move-object/from16 p7, v1

    move-object/from16 p12, v2

    move p6, v3

    move-object/from16 p8, v4

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    move-object/from16 p11, v7

    move-object/from16 p13, v8

    move-object p2, p0

    move-object p3, p1

    .line 425
    invoke-direct/range {p2 .. p14}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;-><init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 597
    iget-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 598
    iget-object p2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 599
    iget-boolean p3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 600
    iget-boolean p4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 601
    iget-object p5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 602
    iget-object p6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 603
    iget-object p7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 604
    iget-object p8, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 605
    iget-object p9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 606
    iget-object p10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 607
    iget-object p11, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 608
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 596
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->copy(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;",
            "ZZ",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;-><init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 544
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eq v1, v3, :cond_3

    return v2

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 548
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 549
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 550
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 551
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 552
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 553
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 554
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 555
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 556
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 561
    iget v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->hashCode:I

    if-nez v0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 564
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 565
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 566
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 567
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 568
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 569
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 570
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 571
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 572
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 573
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 574
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    iput v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 2

    .line 526
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;-><init>()V

    .line 527
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 528
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    .line 529
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->required:Z

    .line 530
    iget-boolean v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->skipped:Z

    .line 531
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 532
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 533
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 534
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 535
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 536
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    .line 537
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->toggles:Ljava/util/List;

    .line 538
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 582
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "required="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "email="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numeric="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "phone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toggles="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_7
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
