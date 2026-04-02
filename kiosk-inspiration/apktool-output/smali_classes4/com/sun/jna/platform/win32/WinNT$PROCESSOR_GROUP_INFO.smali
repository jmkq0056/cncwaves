.class public Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_GROUP_INFO;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "maximumProcessorCount",
        "activeProcessorCount",
        "reserved",
        "activeProcessorMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROCESSOR_GROUP_INFO"
.end annotation


# instance fields
.field public activeProcessorCount:B

.field public activeProcessorMask:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public maximumProcessorCount:B

.field public reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3286
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x26

    .line 3273
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_GROUP_INFO;->reserved:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3282
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x26

    .line 3273
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_GROUP_INFO;->reserved:[B

    return-void
.end method
