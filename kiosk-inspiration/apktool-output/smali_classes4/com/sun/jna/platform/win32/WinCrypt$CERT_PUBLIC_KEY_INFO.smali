.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_PUBLIC_KEY_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Algorithm",
        "PublicKey"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_PUBLIC_KEY_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_PUBLIC_KEY_INFO$ByReference;
    }
.end annotation


# instance fields
.field public Algorithm:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;

.field public PublicKey:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_BIT_BLOB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
