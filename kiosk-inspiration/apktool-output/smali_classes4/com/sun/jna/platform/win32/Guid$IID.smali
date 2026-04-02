.class public Lcom/sun/jna/platform/win32/Guid$IID;
.super Lcom/sun/jna/platform/win32/Guid$GUID;
.source "Guid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Guid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IID"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 563
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$GUID;)V
    .locals 0

    .line 596
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$GUID;->toGuidString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>([B)V

    return-void
.end method
