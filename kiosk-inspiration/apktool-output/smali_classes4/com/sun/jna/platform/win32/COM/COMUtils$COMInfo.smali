.class public Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;
.super Ljava/lang/Object;
.source "COMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/COMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COMInfo"
.end annotation


# instance fields
.field public clsid:Ljava/lang/String;

.field public inprocHandler32:Ljava/lang/String;

.field public inprocServer32:Ljava/lang/String;

.field public localServer32:Ljava/lang/String;

.field public progID:Ljava/lang/String;

.field public typeLib:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->clsid:Ljava/lang/String;

    return-void
.end method
