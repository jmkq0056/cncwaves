.class public Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;
.super Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "level",
        "associativity",
        "lineSize",
        "cacheSize",
        "type",
        "reserved",
        "groupMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CACHE_RELATIONSHIP"
.end annotation


# instance fields
.field public associativity:B

.field public cacheSize:I

.field public groupMask:Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

.field public level:B

.field public lineSize:S

.field public reserved:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3168
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>()V

    const/16 v0, 0x14

    .line 3160
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;->reserved:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3172
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x14

    .line 3160
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;->reserved:[B

    return-void
.end method
