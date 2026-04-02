.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$DUMMYUNION;
.super Lcom/sun/jna/Union;
.source "WinCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DUMMYUNION"
.end annotation


# instance fields
.field pSerializedInfo:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_SERIALIZED_INFO$ByReference;

.field pszOID:Lcom/sun/jna/platform/win32/WTypes$LPSTR;

.field pvInfo:Lcom/sun/jna/Pointer;

.field final synthetic this$0:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$DUMMYUNION;->this$0:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;

    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method
