.class public Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo$ByReference;
.super Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;
.source "Sspi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 682
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toArray(I)[Lcom/sun/jna/Structure;
    .locals 0

    .line 682
    invoke-super {p0, p1}, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;->toArray(I)[Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;

    move-result-object p1

    return-object p1
.end method
