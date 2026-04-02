.class public final Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;",
        "()V",
        "calls",
        "",
        "subsystem",
        "",
        "time",
        "build",
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


# instance fields
.field public calls:J

.field public subsystem:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1007
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->subsystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->build()Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;
    .locals 7

    .line 1041
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;

    .line 1042
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->subsystem:Ljava/lang/String;

    .line 1043
    iget-wide v2, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->time:J

    .line 1044
    iget-wide v4, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->calls:J

    .line 1045
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 1041
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb;-><init>(Ljava/lang/String;JJLokio/ByteString;)V

    return-object v0
.end method

.method public final calls(J)Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;
    .locals 0

    .line 1037
    iput-wide p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->calls:J

    return-object p0
.end method

.method public final subsystem(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;
    .locals 1

    const-string v0, "subsystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->subsystem:Ljava/lang/String;

    return-object p0
.end method

.method public final time(J)Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;
    .locals 0

    .line 1029
    iput-wide p1, p0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SubsystemTimePb$Builder;->time:J

    return-object p0
.end method
