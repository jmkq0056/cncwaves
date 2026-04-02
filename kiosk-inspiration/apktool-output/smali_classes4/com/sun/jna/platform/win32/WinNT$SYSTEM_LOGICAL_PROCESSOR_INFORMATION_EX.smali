.class public abstract Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "relationship",
        "size"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX"
.end annotation


# instance fields
.field public relationship:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2940
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2951
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public static fromPointer(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
    .locals 3

    const-wide/16 v0, 0x0

    .line 2982
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2996
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$GROUP_RELATIONSHIP;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$GROUP_RELATIONSHIP;-><init>(Lcom/sun/jna/Pointer;)V

    goto :goto_0

    .line 2999
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmapped relationship: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2993
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;-><init>(Lcom/sun/jna/Pointer;)V

    goto :goto_0

    .line 2990
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;-><init>(Lcom/sun/jna/Pointer;)V

    goto :goto_0

    .line 2987
    :cond_3
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;-><init>(Lcom/sun/jna/Pointer;)V

    .line 3001
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;->read()V

    return-object v0
.end method
