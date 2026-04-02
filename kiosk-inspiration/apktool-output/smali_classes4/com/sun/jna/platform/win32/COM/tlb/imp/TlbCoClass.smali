.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;
.source "TlbCoClass.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p3, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 56
    invoke-virtual {p3, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfoUtil(I)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    move-result-object p3

    .line 58
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getDocumentation(I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getDocString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->name:Ljava/lang/String;

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Type of kind \'CoClass\' found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->logInfo(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createPackageName(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createClassName(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->setFilename(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getLibAttr()Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;->guid:Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$GUID;->toGuidString()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getLibAttr()Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;

    move-result-object p2

    iget-object p2, p2, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;->wMajorVerNum:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result p2

    .line 72
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getLibAttr()Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;->wMinorVerNum:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->guid:Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Guid$GUID;->toGuidString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createCLSID(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createCLSIDName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    move-result-object p1

    .line 82
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->cImplTypes:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result p1

    .line 85
    const-string p2, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 86
    invoke-virtual {p3, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getRefTypeOfImplType(I)Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    move-result-object v1

    .line 88
    invoke-virtual {p3, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getRefTypeInfo(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    invoke-direct {v2, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;-><init>(Lcom/sun/jna/platform/win32/COM/ITypeInfo;)V

    .line 90
    invoke-virtual {p0, v2, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createFunctions(Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;-><init>(I)V

    .line 92
    invoke-virtual {v2, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createInterfaces(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->createContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createCLSID(Ljava/lang/String;)V
    .locals 1

    .line 150
    const-string v0, "clsid"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createCLSIDName(Ljava/lang/String;)V
    .locals 1

    .line 146
    const-string v0, "clsidname"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createFunctions(Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;Ljava/lang/String;)V
    .locals 7

    .line 104
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    move-result-object p2

    .line 105
    iget-object p2, p2, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->cFuncs:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_6

    .line 108
    invoke-virtual {p1, v2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getFuncDesc(I)Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

    move-result-object v5

    .line 111
    iget-object v0, v5, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v0, v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v1, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_FUNC:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v1, v1, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->isVTableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;

    iget v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->index:I

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;-><init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    :cond_0
    move-object v6, p1

    .line 115
    new-instance v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;

    iget v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->index:I

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;-><init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    :cond_1
    move-object v6, p1

    .line 117
    iget-object p1, v5, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget p1, p1, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYGET:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v0, v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne p1, v0, :cond_2

    .line 118
    new-instance v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;

    iget v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->index:I

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;-><init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object p1, v5, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget p1, p1, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v0, v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne p1, v0, :cond_3

    .line 120
    new-instance v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;

    iget v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->index:I

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;-><init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object p1, v5, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget p1, p1, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    sget-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUTREF:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    iget v0, v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    if-ne p1, v0, :cond_4

    .line 122
    new-instance v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;

    iget v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->index:I

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;-><init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 125
    :goto_1
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->isReservedMethod(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getClassBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->content:Ljava/lang/String;

    add-int/lit8 p1, p2, -0x1

    if-ge v2, p1, :cond_5

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->content:Ljava/lang/String;

    .line 134
    :cond_5
    invoke-virtual {v6, v5}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->ReleaseFuncDesc(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V

    add-int/lit8 v2, v2, 0x1

    move-object p1, v6

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected createInterfaces(Ljava/lang/String;)V
    .locals 1

    .line 154
    const-string v0, "interfaces"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createJavaDocHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 140
    const-string v0, "uuid"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p1, "version"

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string p1, "helpstring"

    invoke-virtual {p0, p1, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass.template"

    return-object v0
.end method
