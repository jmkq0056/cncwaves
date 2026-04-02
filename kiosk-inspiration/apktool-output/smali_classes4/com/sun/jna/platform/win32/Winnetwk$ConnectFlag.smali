.class public Lcom/sun/jna/platform/win32/Winnetwk$ConnectFlag;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectFlag"
.end annotation


# static fields
.field public static final CONNECT_CMD_SAVECRED:I = 0x1000

.field public static final CONNECT_COMMANDLINE:I = 0x800

.field public static final CONNECT_INTERACTIVE:I = 0x8

.field public static final CONNECT_LOCALDRIVE:I = 0x100

.field public static final CONNECT_PROMPT:I = 0x10

.field public static final CONNECT_REDIRECT:I = 0x80

.field public static final CONNECT_UPDATE_PROFILE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Winnetwk;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winnetwk;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winnetwk$ConnectFlag;->this$0:Lcom/sun/jna/platform/win32/Winnetwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
