.class public Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "fCapabilities",
        "wVersion",
        "wRPCID",
        "cbMaxToken",
        "Name",
        "Comment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecPkgInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;
    }
.end annotation


# instance fields
.field public Comment:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public cbMaxToken:I

.field public fCapabilities:I

.field public wRPCID:S

.field public wVersion:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 745
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/4 v0, 0x1

    .line 724
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;->wVersion:S

    return-void
.end method
