.class public Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwVersion",
        "SubjectUsage",
        "ListIdentifier",
        "SequenceNumber",
        "ThisUpdate",
        "NextUpdate",
        "SubjectAlgorithm",
        "cCTLEntry",
        "rgCTLEntry",
        "cExtension",
        "rgExtension"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTL_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO$ByReference;
    }
.end annotation


# instance fields
.field public ListIdentifier:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public NextUpdate:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public SequenceNumber:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public SubjectAlgorithm:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;

.field public SubjectUsage:Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;

.field public ThisUpdate:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public cCTLEntry:I

.field public cExtension:I

.field public dwVersion:I

.field public rgCTLEntry:Lcom/sun/jna/Pointer;

.field public rgExtension:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgCTLEntry()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;
    .locals 2

    .line 263
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->cExtension:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    return-object v0

    .line 266
    :cond_0
    const-class v0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->rgExtension:Lcom/sun/jna/Pointer;

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->cExtension:I

    .line 269
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    return-object v0
.end method

.method public getRgExtension()[Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;
    .locals 2

    .line 252
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->cCTLEntry:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;

    return-object v0

    .line 255
    :cond_0
    const-class v0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->rgCTLEntry:Lcom/sun/jna/Pointer;

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;->cCTLEntry:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;

    return-object v0
.end method
