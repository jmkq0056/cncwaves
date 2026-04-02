.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbFunctionDispId.java"


# direct methods
.method public constructor <init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 5

    .line 53
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 55
    iget-object p2, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iget-short p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->paramCount:S

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p5, p2, p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 57
    :goto_0
    iget-short p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->paramCount:S

    const-string v0, "VARIANT"

    if-ge p3, p5, :cond_2

    .line 58
    iget-object p5, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object p5, p5, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    aget-object p5, p5, p3

    add-int/lit8 v1, p3, 0x1

    .line 59
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object p5, p5, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;->tdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    invoke-virtual {p0, p5}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object p5

    .line 61
    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodparams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodparams:Ljava/lang/String;

    .line 65
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 66
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "new VARIANT("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ")"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    .line 71
    :goto_1
    iget-short p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->paramCount:S

    add-int/lit8 p5, p5, -0x1

    if-ge p3, p5, :cond_1

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodparams:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ", "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodparams:Ljava/lang/String;

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    :cond_1
    move p3, v1

    goto/16 :goto_0

    .line 78
    :cond_2
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->returnType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 79
    const-string p2, "pResult"

    goto :goto_2

    .line 81
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "(("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->returnType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") pResult.getValue())"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    :goto_2
    const-string p3, "helpstring"

    iget-object p4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->docStr:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string p3, "returntype"

    iget-object p4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->returnType:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p3, "returnvalue"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string p2, "methodname"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p2, "methodparams"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodparams:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p2, "methodvariables"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->methodvariables:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-short p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->vtableId:S

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vtableid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "memberid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string p2, "functionCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionDispId.template"

    return-object v0
.end method
