.class public Lcom/sun/jna/platform/win32/COM/COMInvokeException;
.super Lcom/sun/jna/platform/win32/COM/COMException;
.source "COMInvokeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final description:Ljava/lang/String;

.field private final errorArg:Ljava/lang/Integer;

.field private final helpContext:Ljava/lang/Integer;

.field private final helpFile:Ljava/lang/String;

.field private final scode:Ljava/lang/Integer;

.field private final source:Ljava/lang/String;

.field private final wCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/sun/jna/platform/win32/COM/COMInvokeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMInvokeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 114
    invoke-static {p2, p1, p3}, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 115
    iput-object p4, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->description:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->errorArg:Ljava/lang/Integer;

    .line 117
    iput-object p5, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpContext:Ljava/lang/Integer;

    .line 118
    iput-object p6, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpFile:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->scode:Ljava/lang/Integer;

    .line 120
    iput-object p8, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->source:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->wCode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->description:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->errorArg:Ljava/lang/Integer;

    .line 83
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpContext:Ljava/lang/Integer;

    .line 84
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpFile:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->scode:Ljava/lang/Integer;

    .line 86
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->source:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->wCode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMInvokeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v0

    const v1, -0x7ffdfffb

    if-eq v0, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    const v0, -0x7ffdfffc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 186
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (puArgErr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorArg()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->errorArg:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/Integer;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpContext:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHelpFile()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->helpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getScode()Ljava/lang/Integer;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->scode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getWCode()Ljava/lang/Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMInvokeException;->wCode:Ljava/lang/Integer;

    return-object v0
.end method
