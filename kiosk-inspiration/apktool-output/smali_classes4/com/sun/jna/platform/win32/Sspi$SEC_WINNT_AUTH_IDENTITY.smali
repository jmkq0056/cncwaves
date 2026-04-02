.class public Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "User",
        "UserLength",
        "Domain",
        "DomainLength",
        "Password",
        "PasswordLength",
        "Flags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SEC_WINNT_AUTH_IDENTITY"
.end annotation


# instance fields
.field public Domain:Ljava/lang/String;

.field public DomainLength:I

.field public Flags:I

.field public Password:Ljava/lang/String;

.field public PasswordLength:I

.field public User:Ljava/lang/String;

.field public UserLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1101
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/4 v0, 0x2

    .line 1095
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->Flags:I

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->User:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->UserLength:I

    .line 1107
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->Domain:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->DomainLength:I

    .line 1108
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->Password:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;->PasswordLength:I

    .line 1109
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method
