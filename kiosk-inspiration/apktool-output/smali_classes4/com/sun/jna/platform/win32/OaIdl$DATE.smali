.class public Lcom/sun/jna/platform/win32/OaIdl$DATE;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "date"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$DATE$ByReference;
    }
.end annotation


# static fields
.field private static final MICRO_SECONDS_PER_DAY:J = 0x5265c00L


# instance fields
.field public date:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 239
    iput-wide p1, p0, Lcom/sun/jna/platform/win32/OaIdl$DATE;->date:D

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DATE;->setFromJavaDate(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getAsJavaDate()Ljava/util/Date;
    .locals 10

    .line 247
    iget-wide v0, p0, Lcom/sun/jna/platform/win32/OaIdl$DATE;->date:D

    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/sun/jna/platform/win32/OaIdl;->DATE_OFFSET:J

    add-long/2addr v0, v2

    .line 248
    iget-wide v2, p0, Lcom/sun/jna/platform/win32/OaIdl$DATE;->date:D

    double-to-long v4, v2

    long-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    mul-double/2addr v2, v4

    double-to-int v4, v2

    int-to-double v5, v4

    sub-double/2addr v2, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v5

    double-to-int v7, v2

    int-to-double v8, v7

    sub-double/2addr v2, v8

    mul-double/2addr v2, v5

    double-to-int v5, v2

    int-to-double v8, v5

    sub-double/2addr v2, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v8

    double-to-int v2, v2

    .line 257
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 258
    invoke-virtual {v3, v4}, Ljava/util/Date;->setHours(I)V

    .line 259
    invoke-virtual {v3, v7}, Ljava/util/Date;->setMinutes(I)V

    .line 260
    invoke-virtual {v3, v5}, Ljava/util/Date;->setSeconds(I)V

    .line 261
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-object v3
.end method

.method public setFromJavaDate(Ljava/util/Date;)V
    .locals 11

    .line 266
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/sun/jna/platform/win32/OaIdl;->DATE_OFFSET:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 269
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    const/4 v5, 0x0

    .line 270
    invoke-virtual {v4, v5}, Ljava/util/Date;->setHours(I)V

    .line 271
    invoke-virtual {v4, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 272
    invoke-virtual {v4, v5}, Ljava/util/Date;->setSeconds(I)V

    .line 273
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    .line 276
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-double v7, v7

    div-double/2addr v7, v2

    mul-double/2addr v0, v7

    add-double/2addr v5, v0

    .line 278
    iput-wide v5, p0, Lcom/sun/jna/platform/win32/OaIdl$DATE;->date:D

    return-void
.end method
