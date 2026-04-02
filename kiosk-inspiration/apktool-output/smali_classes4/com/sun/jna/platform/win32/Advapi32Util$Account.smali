.class public Lcom/sun/jna/platform/win32/Advapi32Util$Account;
.super Ljava/lang/Object;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Account"
.end annotation


# instance fields
.field public accountType:I

.field public domain:Ljava/lang/String;

.field public fqn:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sid:[B

.field public sidString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
