.class public Lcom/sun/jna/platform/win32/WinNT$PSID;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sid"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;
    }
.end annotation


# instance fields
.field public sid:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 360
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 365
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->read()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 354
    new-instance v0, Lcom/sun/jna/Memory;

    array-length v1, p1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 355
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    const/4 v7, 0x0

    array-length v8, p1

    const-wide/16 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 356
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->read()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .line 369
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32;->GetLengthSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSidString()Ljava/lang/String;
    .locals 1

    .line 374
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
