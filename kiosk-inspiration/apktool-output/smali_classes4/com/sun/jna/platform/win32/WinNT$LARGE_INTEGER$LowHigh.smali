.class public Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "LowPart",
        "HighPart"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowHigh"
.end annotation


# instance fields
.field public HighPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public LowPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1154
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .line 1158
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide v1, 0xffffffffL

    and-long v3, p1, v1

    invoke-direct {v0, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const/16 v4, 0x20

    shr-long/2addr p1, v4

    and-long/2addr p1, v1

    invoke-direct {v3, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {p0, v0, v3}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V
    .locals 0

    .line 1161
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1162
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->LowPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 1163
    iput-object p2, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->HighPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method


# virtual methods
.method public longValue()J
    .locals 6

    .line 1167
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->LowPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->longValue()J

    move-result-wide v0

    .line 1168
    iget-object v2, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->HighPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->longValue()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1174
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->LowPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->HighPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_1
    :goto_0
    const-string v0, "null"

    return-object v0
.end method
