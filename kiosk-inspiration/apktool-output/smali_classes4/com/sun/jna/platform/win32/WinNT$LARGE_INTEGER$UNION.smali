.class public Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;
.super Lcom/sun/jna/Union;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UNION"
.end annotation


# instance fields
.field public lh:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1187
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1190
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1191
    iput-wide p1, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->value:J

    .line 1192
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->lh:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;

    return-void
.end method


# virtual methods
.method public longValue()J
    .locals 2

    .line 1196
    iget-wide v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1201
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
