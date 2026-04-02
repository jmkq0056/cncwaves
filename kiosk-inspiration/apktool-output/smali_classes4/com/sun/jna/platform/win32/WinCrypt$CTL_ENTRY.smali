.class public Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "SubjectIdentifier",
        "cAttribute",
        "rgAttribute"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTL_ENTRY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY$ByReference;
    }
.end annotation


# instance fields
.field public SubjectIdentifier:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public cAttribute:I

.field public rgAttribute:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgAttribute()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
    .locals 2

    .line 129
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;->cAttribute:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0

    .line 132
    :cond_0
    const-class v0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;->rgAttribute:Lcom/sun/jna/Pointer;

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;->cAttribute:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0
.end method
