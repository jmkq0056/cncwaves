.class public Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;
.super Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "nodeNumber",
        "reserved",
        "groupMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NUMA_NODE_RELATIONSHIP"
.end annotation


# instance fields
.field public groupMask:Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

.field public nodeNumber:I

.field public reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3116
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>()V

    const/16 v0, 0x14

    .line 3108
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;->reserved:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3120
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x14

    .line 3108
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;->reserved:[B

    return-void
.end method
