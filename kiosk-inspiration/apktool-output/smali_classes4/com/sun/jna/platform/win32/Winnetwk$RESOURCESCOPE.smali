.class public Lcom/sun/jna/platform/win32/Winnetwk$RESOURCESCOPE;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RESOURCESCOPE"
.end annotation


# static fields
.field public static final RESOURCE_CONNECTED:I = 0x1

.field public static final RESOURCE_CONTEXT:I = 0x5

.field public static final RESOURCE_GLOBALNET:I = 0x2

.field public static final RESOURCE_RECENT:I = 0x4

.field public static final RESOURCE_REMEMBERED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Winnetwk;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winnetwk;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winnetwk$RESOURCESCOPE;->this$0:Lcom/sun/jna/platform/win32/Winnetwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
