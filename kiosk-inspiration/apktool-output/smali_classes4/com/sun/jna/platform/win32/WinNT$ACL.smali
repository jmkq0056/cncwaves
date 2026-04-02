.class public Lcom/sun/jna/platform/win32/WinNT$ACL;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "AclRevision",
        "Sbz1",
        "AclSize",
        "AceCount",
        "Sbz2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACL"
.end annotation


# static fields
.field public static MAX_ACL_SIZE:I = 0x10000


# instance fields
.field public AceCount:S

.field public AclRevision:B

.field public AclSize:S

.field public Sbz1:B

.field public Sbz2:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2496
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2500
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2501
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACL;->useMemory(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2505
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2506
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACL;->read()V

    return-void
.end method


# virtual methods
.method public getACEs()[Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;
    .locals 7

    .line 2519
    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACL;->AceCount:S

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;

    .line 2520
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    .line 2521
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACL;->size()I

    move-result v2

    const/4 v3, 0x0

    .line 2522
    :goto_0
    iget-short v4, p0, Lcom/sun/jna/platform/win32/WinNT$ACL;->AceCount:S

    if-ge v3, v4, :cond_2

    int-to-long v4, v2

    .line 2523
    invoke-virtual {v1, v4, v5}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 2524
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 2533
    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;

    invoke-direct {v5, v4}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v5, v0, v3

    goto :goto_1

    .line 2530
    :cond_0
    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$ACCESS_DENIED_ACE;

    invoke-direct {v5, v4}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_DENIED_ACE;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v5, v0, v3

    goto :goto_1

    .line 2527
    :cond_1
    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ALLOWED_ACE;

    invoke-direct {v5, v4}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ALLOWED_ACE;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v5, v0, v3

    .line 2536
    :goto_1
    aget-object v4, v0, v3

    iget-short v4, v4, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceSize:S

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
