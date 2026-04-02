.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;
.source "TlbDispInterface.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V
    .locals 7

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p3, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 55
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v1, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getDocumentation(I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getDocString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->name:Ljava/lang/String;

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Type of kind \'DispInterface\' found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->logInfo(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->createPackageName(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->createClassName(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->setFilename(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfoUtil(I)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    move-result-object v1

    .line 71
    iget-object v3, v1, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->guid:Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/Guid$GUID;->toGuidString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, v1, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->cFuncs:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 76
    invoke-virtual {p2, v2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getFuncDesc(I)Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

    move-result-object v3

    .line 79
    iget-object v4, v3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 82
    invoke-virtual {p2, v4}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p0, v4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->isReservedMethod(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 87
    iget-object v4, v3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v4, v4, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_FUNC:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v5, v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne v4, v5, :cond_1

    .line 88
    new-instance v4, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;

    invoke-direct {v4, p1, p3, v3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v4, v3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v4, v4, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYGET:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v5, v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne v4, v5, :cond_2

    .line 90
    new-instance v4, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;

    invoke-direct {v4, p1, p3, v3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v4, v3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v4, v4, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v5, v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne v4, v5, :cond_3

    .line 92
    new-instance v4, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;

    invoke-direct {v4, p1, p3, v3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v4, v3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v4, v4, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUTREF:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v5, v5, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne v4, v5, :cond_4

    .line 94
    new-instance v4, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;

    invoke-direct {v4, p1, p3, v3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 97
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getClassBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->content:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_5

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->content:Ljava/lang/String;

    .line 105
    :cond_5
    invoke-virtual {p2, v3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->ReleaseFuncDesc(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 108
    :cond_6
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->createContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 120
    const-string v0, "uuid"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string p1, "helpstring"

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface.template"

    return-object v0
.end method
