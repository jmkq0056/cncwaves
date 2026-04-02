.class public final Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;
.super Lcom/squareup/wire/Message;
.source "EnvironmentConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;,
        Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u001a\u001b\u001c\u001d\u001e\u001f BK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;",
        "production",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;",
        "qa",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;",
        "certhorse",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;",
        "preproduction",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;",
        "proxygateway",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V",
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
        "Certhorse",
        "Companion",
        "Preproduction",
        "Production",
        "ProxyGateway",
        "QA",
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
            "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Certhorse#ADAPTER"
        oneofName = "environment"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Preproduction#ADAPTER"
        oneofName = "environment"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Production#ADAPTER"
        oneofName = "environment"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$ProxyGateway#ADAPTER"
        oneofName = "environment"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$QA#ADAPTER"
        oneofName = "environment"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->Companion:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;

    .line 327
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 326
    const-class v1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 326
    new-instance v3, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;-><init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 157
    iput-object p2, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 165
    iput-object p3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 173
    iput-object p4, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 181
    iput-object p5, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    .line 192
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of production, qa, certhorse, preproduction, proxygateway may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 189
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 148
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;-><init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 245
    iget-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 246
    iget-object p2, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 247
    iget-object p3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 248
    iget-object p4, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 249
    iget-object p5, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 244
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->copy(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;-><init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 210
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    invoke-virtual {p1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    iget-object v3, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    iget-object v3, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    iget-object v3, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    iget-object v3, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    iget-object p1, p1, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 221
    iget v0, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->hashCode:I

    if-nez v0, :cond_5

    .line 223
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 229
    iput v0, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->newBuilder()Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 2

    .line 198
    new-instance v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    .line 204
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 236
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "production="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qa="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "certhorse="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preproduction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proxygateway="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Environment{"

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
