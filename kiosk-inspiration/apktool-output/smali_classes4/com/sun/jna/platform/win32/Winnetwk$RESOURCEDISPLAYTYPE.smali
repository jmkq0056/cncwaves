.class public Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEDISPLAYTYPE;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RESOURCEDISPLAYTYPE"
.end annotation


# static fields
.field public static final RESOURCEDISPLAYTYPE_DOMAIN:I = 0x1

.field public static final RESOURCEDISPLAYTYPE_FILE:I = 0x4

.field public static final RESOURCEDISPLAYTYPE_GENERIC:I = 0x0

.field public static final RESOURCEDISPLAYTYPE_SERVER:I = 0x2

.field public static final RESOURCEDISPLAYTYPE_SHARE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Winnetwk;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winnetwk;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEDISPLAYTYPE;->this$0:Lcom/sun/jna/platform/win32/Winnetwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
