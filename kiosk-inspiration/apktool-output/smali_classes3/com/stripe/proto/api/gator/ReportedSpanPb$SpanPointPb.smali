.class public final Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
.super Lcom/squareup/wire/Message;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/ReportedSpanPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanPointPb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;,
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion;,
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;,
        Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B1\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;",
        "time_offset_ms",
        "",
        "log_point",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;",
        "meter_point",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;",
        "unknownFields",
        "Lokio/ByteString;",
        "(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "LogPoint",
        "MeterPoint",
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
            "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.gator.ReportedSpanPb$SpanPointPb$LogPoint#ADAPTER"
        jsonName = "logPoint"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.gator.ReportedSpanPb$SpanPointPb$MeterPoint#ADAPTER"
        jsonName = "meterPoint"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final time_offset_ms:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "timeOffsetMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->Companion:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion;

    .line 1236
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1235
    const-class v1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1239
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1235
    new-instance v3, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1150
    sget-object v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1122
    iput p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    .line 1131
    iput-object p2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    .line 1140
    iput-object p3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 1149
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1118
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1191
    iget p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 1192
    iget-object p2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 1193
    iget-object p3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 1194
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 1190
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->copy(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1162
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1163
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    invoke-virtual {p1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1164
    :cond_2
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    iget v3, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    if-eq v1, v3, :cond_3

    return v2

    .line 1165
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    iget-object v3, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1166
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    iget-object p1, p1, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1171
    iget v0, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->hashCode:I

    if-nez v0, :cond_2

    .line 1173
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1174
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1175
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1176
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 1177
    iput v0, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->newBuilder()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;
    .locals 2

    .line 1152
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;-><init>()V

    .line 1153
    iget v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    iput v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;->time_offset_ms:I

    .line 1154
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    iput-object v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    .line 1155
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    iput-object v1, v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    .line 1156
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1184
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time_offset_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->time_offset_ms:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1185
    iget-object v2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log_point="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->log_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "meter_point="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;->meter_point:Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SpanPointPb{"

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
