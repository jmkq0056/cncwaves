.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
.super Lcom/squareup/wire/Message;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBo\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJp\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;",
        "code",
        "",
        "decline_code",
        "doc_url",
        "message",
        "param_",
        "payment_method",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "payment_method_type",
        "type",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final decline_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "declineCode"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final doc_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "docUrl"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final param_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "param"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER"
        jsonName = "paymentMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final payment_method_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethodType"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;

    .line 2330
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2329
    const-class v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 2333
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 2329
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2153
    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 2069
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    .line 2079
    iput-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    .line 2090
    iput-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    .line 2101
    iput-object p4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    .line 2111
    iput-object p5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    .line 2122
    iput-object p6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 2134
    iput-object p7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    .line 2145
    iput-object p8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 2152
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2065
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 2214
    iget-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 2215
    iget-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 2216
    iget-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 2217
    iget-object p4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 2218
    iget-object p5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 2219
    iget-object p6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 2220
    iget-object p7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 2221
    iget-object p8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 2222
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 2213
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .locals 11

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2223
    new-instance v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2170
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2171
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 2172
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2173
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 2174
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 2175
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 2176
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 2177
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 2178
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 2179
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 2184
    iget v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->hashCode:I

    if-nez v0, :cond_8

    .line 2186
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 2187
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

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

    .line 2188
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2189
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2190
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2191
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2192
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2193
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2194
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    .line 2195
    iput v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->hashCode:I

    :cond_8
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 2

    .line 2155
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;-><init>()V

    .line 2156
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->code:Ljava/lang/String;

    .line 2157
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->decline_code:Ljava/lang/String;

    .line 2158
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->doc_url:Ljava/lang/String;

    .line 2159
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->message:Ljava/lang/String;

    .line 2160
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->param_:Ljava/lang/String;

    .line 2161
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 2162
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method_type:Ljava/lang/String;

    .line 2163
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->type:Ljava/lang/String;

    .line 2164
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2202
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2203
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decline_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doc_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2205
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2206
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "param_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2207
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2208
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2209
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2210
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SetupError{"

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
