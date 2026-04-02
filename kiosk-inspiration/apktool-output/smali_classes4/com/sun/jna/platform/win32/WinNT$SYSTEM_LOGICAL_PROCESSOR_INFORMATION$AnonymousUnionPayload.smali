.class public Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION$AnonymousUnionPayload;
.super Lcom/sun/jna/Union;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnonymousUnionPayload"
.end annotation


# instance fields
.field public cache:Lcom/sun/jna/platform/win32/WinNT$CACHE_DESCRIPTOR;

.field public numaNode:Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION$AnonymousStructNumaNode;

.field public processorCore:Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION$AnonymousStructProcessorCore;

.field public reserved:[Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2856
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    const/4 v0, 0x2

    .line 2883
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION$AnonymousUnionPayload;->reserved:[Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;

    return-void
.end method
