.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;
.source "TlbEnum.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V
    .locals 6

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p3, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 54
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getDocumentation(I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getDocString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->name:Ljava/lang/String;

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Type of kind \'Enum\' found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->logInfo(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->createPackageName(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->createClassName(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->setFilename(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfoUtil(I)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    move-result-object p2

    .line 70
    iget-object p3, p2, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->guid:Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/Guid$GUID;->toGuidString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p2, p2, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->cVars:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 75
    invoke-virtual {p1, p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getVarDesc(I)Lcom/sun/jna/platform/win32/OaIdl$VARDESC;

    move-result-object v0

    .line 76
    iget-object v1, v0, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;->_vardesc:Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->lpvarValue:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    .line 77
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 83
    invoke-virtual {p1, v2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\t\tpublic static final int "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    if-ge p3, v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    .line 92
    :cond_1
    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->ReleaseVarDesc(Lcom/sun/jna/platform/win32/OaIdl$VARDESC;)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->createContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    const-string v0, "uuid"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string p1, "helpstring"

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbEnum.template"

    return-object v0
.end method
