.class public Lcom/sun/jna/platform/win32/Winsvc$SERVICE_DESCRIPTION;
.super Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lpDescription"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVICE_DESCRIPTION"
.end annotation


# instance fields
.field public lpDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 807
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;-><init>()V

    return-void
.end method
