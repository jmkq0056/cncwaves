.class public Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "pbDevSpecificInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASDEVSPECIFICINFO"
.end annotation


# instance fields
.field public dwSize:I

.field public pbDevSpecificInfo:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 138
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->read()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 141
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 142
    new-instance v0, Lcom/sun/jna/Memory;

    array-length v1, p1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->pbDevSpecificInfo:Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    .line 143
    array-length v5, p1

    const-wide/16 v1, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 144
    array-length p1, v3

    iput p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->dwSize:I

    .line 145
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->allocateMemory()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->pbDevSpecificInfo:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    iget v3, p0, Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;->dwSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    return-object v0
.end method
