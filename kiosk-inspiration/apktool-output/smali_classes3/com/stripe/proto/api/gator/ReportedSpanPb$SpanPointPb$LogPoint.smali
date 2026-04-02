.class public final Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;
.super Lcom/squareup/wire/Message;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;,
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016R\u0010\u0010\u0008\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;",
        "log_level",
        "",
        "tag",
        "",
        "message",
        "exception",
        "unknownFields",
        "Lokio/ByteString;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "common_release"
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
            "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final exception:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final log_level:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "logLevel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final tag:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->Companion:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion;

    .line 1457
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1456
    const-class v1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1460
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1456
    new-instance v3, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    sget-object v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1305
    iput p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    .line 1317
    iput-object p2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    .line 1328
    iput-object p3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    .line 1339
    iput-object p4, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 1301
    const-string v0, ""

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1347
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 1301
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 1393
    iget p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 1394
    iget-object p2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 1395
    iget-object p3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 1396
    iget-object p4, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1397
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 1392
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;
    .locals 7

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    new-instance v1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1361
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    invoke-virtual {p1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1363
    :cond_2
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    iget v3, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    if-eq v1, v3, :cond_3

    return v2

    .line 1364
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1365
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1366
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1371
    iget v0, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->hashCode:I

    if-nez v0, :cond_0

    .line 1373
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1374
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1375
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1376
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1377
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1378
    iput v0, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1301
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->newBuilder()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;
    .locals 2

    .line 1350
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;-><init>()V

    .line 1351
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    iput v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;->log_level:I

    .line 1352
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;->tag:Ljava/lang/String;

    .line 1353
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;->message:Ljava/lang/String;

    .line 1354
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;->exception:Ljava/lang/String;

    .line 1355
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1385
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->log_level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->tag:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->message:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->exception:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1389
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "LogPoint{"

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
