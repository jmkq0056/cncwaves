package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa031zz extends aaa012zz {
    aaa031zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        BBDeviceController.AmountInputType amountInputType;
        String str;
        int i;
        BBDeviceController.AmountInputType amountInputType2;
        String str2;
        String str3;
        int i2;
        String str4;
        Object obj = hashtable.get("amountInputType");
        if (obj != null) {
            String strAaa000 = ccc034zz.aaa000(obj, "DF851E");
            if (strAaa000 != null) {
                str = "" + strAaa000;
                amountInputType = (BBDeviceController.AmountInputType) obj;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid amountInputType");
                return;
            }
        } else {
            amountInputType = null;
            str = "";
        }
        if (hashtable.containsKey("tipsAmountOptions")) {
            Object obj2 = hashtable.get("tipsAmountOptions");
            if (obj2.getClass().isArray()) {
                Object[] objArr = (Object[]) obj2;
                if (objArr.length == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsAmountOptions");
                    return;
                }
                hashtable.remove("tipsAmount1");
                hashtable.remove("tipsAmount2");
                hashtable.remove("tipsAmount3");
                int i3 = 0;
                for (int i4 = 0; i4 < objArr.length; i4++) {
                    Object obj3 = objArr[i4];
                    if (obj3 == null || !(obj3 instanceof String) || !((String) obj3).equalsIgnoreCase("")) {
                        if (i3 == 0) {
                            hashtable.put("tipsAmount1", objArr[i4]);
                        } else if (i3 == 1) {
                            hashtable.put("tipsAmount2", objArr[i4]);
                        } else if (i3 == 2) {
                            hashtable.put("tipsAmount3", objArr[i4]);
                        }
                        i3++;
                    }
                }
                i = 0;
                if (i3 == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsAmountOptions");
                    return;
                }
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsAmountOptions");
                return;
            }
        } else {
            i = 0;
        }
        Object obj4 = hashtable.get("tipsAmount1");
        if (obj4 != null) {
            int[] iArr = new int[1];
            amountInputType2 = amountInputType;
            str2 = "";
            String strAaa0002 = ccc034zz.aaa000(obj4, "DF852D", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr);
            if (strAaa0002 == null && iArr[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa0002 == null && iArr[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa0002 == null && iArr[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa0002 == null && iArr[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount pattern");
                return;
            } else if (strAaa0002 != null) {
                str = str + strAaa0002;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount");
                return;
            }
        } else {
            amountInputType2 = amountInputType;
            str2 = "";
        }
        Object obj5 = hashtable.get("tipsAmount2");
        if (obj5 != null) {
            int[] iArr2 = new int[1];
            String strAaa0003 = ccc034zz.aaa000(obj5, "DF852E", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr2);
            if (strAaa0003 == null && iArr2[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa0003 == null && iArr2[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa0003 == null && iArr2[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa0003 == null && iArr2[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount pattern");
                return;
            } else if (strAaa0003 != null) {
                str = str + strAaa0003;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount");
                return;
            }
        }
        Object obj6 = hashtable.get("tipsAmount3");
        if (obj6 != null) {
            int[] iArr3 = new int[1];
            String strAaa0004 = ccc034zz.aaa000(obj6, "DF852F", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr3);
            if (strAaa0004 == null && iArr3[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa0004 == null && iArr3[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa0004 == null && iArr3[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa0004 == null && iArr3[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount pattern");
                return;
            } else if (strAaa0004 != null) {
                str = str + strAaa0004;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips amount");
                return;
            }
        }
        if (hashtable.containsKey("tipsPercentageOptions")) {
            Object obj7 = hashtable.get("tipsPercentageOptions");
            if (obj7.getClass().isArray()) {
                Object[] objArr2 = (Object[]) obj7;
                if (objArr2.length == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsPercentageOptions");
                    return;
                }
                hashtable.remove("tipsPercentage1");
                hashtable.remove("tipsPercentage2");
                hashtable.remove("tipsPercentage3");
                int i5 = i;
                int i6 = i5;
                while (i5 < objArr2.length) {
                    Object obj8 = objArr2[i5];
                    Object[] objArr3 = objArr2;
                    if (obj8 == null || !(obj8 instanceof String)) {
                        str4 = str2;
                    } else {
                        str4 = str2;
                        if (((String) obj8).equalsIgnoreCase(str4)) {
                        }
                        i5++;
                        str2 = str4;
                        objArr2 = objArr3;
                    }
                    if (i6 == 0) {
                        hashtable.put("tipsPercentage1", objArr3[i5]);
                    } else if (i6 == 1) {
                        hashtable.put("tipsPercentage2", objArr3[i5]);
                    } else if (i6 == 2) {
                        hashtable.put("tipsPercentage3", objArr3[i5]);
                    } else {
                        i5++;
                        str2 = str4;
                        objArr2 = objArr3;
                    }
                    i6++;
                    i5++;
                    str2 = str4;
                    objArr2 = objArr3;
                }
                str3 = str2;
                if (i6 == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsPercentageOptions");
                    return;
                }
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipsPercentageOptions");
                return;
            }
        } else {
            str3 = str2;
        }
        Object obj9 = hashtable.get("tipsPercentage1");
        if (obj9 != null) {
            String strAaa0005 = ccc034zz.aaa000(obj9, "DF8542");
            if (strAaa0005 != null) {
                str = str + strAaa0005;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips percentage");
                return;
            }
        }
        Object obj10 = hashtable.get("tipsPercentage2");
        if (obj10 != null) {
            String strAaa0006 = ccc034zz.aaa000(obj10, "DF8543");
            if (strAaa0006 != null) {
                str = str + strAaa0006;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips percentage");
                return;
            }
        }
        Object obj11 = hashtable.get("tipsPercentage3");
        if (obj11 != null) {
            String strAaa0007 = ccc034zz.aaa000(obj11, "DF8544");
            if (strAaa0007 != null) {
                str = str + strAaa0007;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips percentage");
                return;
            }
        }
        if (hashtable.containsKey("cashbackAmountOptions")) {
            Object obj12 = hashtable.get("cashbackAmountOptions");
            if (obj12.getClass().isArray()) {
                Object[] objArr4 = (Object[]) obj12;
                if (objArr4.length == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashbackAmountOptions");
                    return;
                }
                hashtable.remove("cashback1");
                hashtable.remove("cashback2");
                hashtable.remove("cashback3");
                int i7 = i;
                int i8 = i7;
                while (i7 < objArr4.length) {
                    Object obj13 = objArr4[i7];
                    if (obj13 == null || !(obj13 instanceof String) || !((String) obj13).equalsIgnoreCase(str3)) {
                        if (i8 == 0) {
                            hashtable.put("cashback1", objArr4[i7]);
                        } else if (i8 == 1) {
                            hashtable.put("cashback2", objArr4[i7]);
                        } else if (i8 == 2) {
                            hashtable.put("cashback3", objArr4[i7]);
                        }
                        i8++;
                    }
                    i7++;
                }
                if (i8 == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashbackAmountOptions");
                    return;
                }
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashbackAmountOptions");
                return;
            }
        }
        Object obj14 = hashtable.get("cashback1");
        if (obj14 != null) {
            int[] iArr4 = new int[1];
            String strAaa0008 = ccc034zz.aaa000(obj14, "DF8558", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr4);
            if (strAaa0008 == null && iArr4[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa0008 == null && iArr4[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa0008 == null && iArr4[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa0008 == null && iArr4[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback pattern");
                return;
            } else if (strAaa0008 != null) {
                str = str + strAaa0008;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback");
                return;
            }
        }
        Object obj15 = hashtable.get("cashback2");
        if (obj15 != null) {
            int[] iArr5 = new int[1];
            String strAaa0009 = ccc034zz.aaa000(obj15, "DF8559", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr5);
            if (strAaa0009 == null && iArr5[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa0009 == null && iArr5[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa0009 == null && iArr5[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa0009 == null && iArr5[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback pattern");
                return;
            } else if (strAaa0009 != null) {
                str = str + strAaa0009;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback");
                return;
            }
        }
        Object obj16 = hashtable.get("cashback3");
        if (obj16 != null) {
            int[] iArr6 = new int[1];
            String strAaa00010 = ccc034zz.aaa000(obj16, "DF855A", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr6);
            if (strAaa00010 == null && iArr6[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa00010 == null && iArr6[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa00010 == null && iArr6[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa00010 == null && iArr6[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback pattern");
                return;
            } else if (strAaa00010 != null) {
                str = str + strAaa00010;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid cashback");
                return;
            }
        }
        Object obj17 = hashtable.get("tipEligibleAmount");
        if (obj17 != null) {
            int[] iArr7 = new int[1];
            String strAaa00011 = ccc034zz.aaa000(obj17, "DF8928", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr7);
            if (strAaa00011 == null && iArr7[i] == 2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                return;
            }
            if (strAaa00011 == null && iArr7[i] == 4) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
            if (strAaa00011 == null && iArr7[i] == 5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                return;
            }
            if (strAaa00011 == null && iArr7[i] == 6) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips eligible pattern");
                return;
            } else if (strAaa00011 != null) {
                str = str + strAaa00011;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipEligibleAmount");
                return;
            }
        }
        Object obj18 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME);
        if (obj18 != null) {
            String strAaa00012 = ccc034zz.aaa000(obj18, TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT);
            if (strAaa00012 != null) {
                str = str + strAaa00012;
                i2 = 1;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                return;
            }
        } else {
            BBDeviceController.AmountInputType amountInputType3 = amountInputType2;
            if (amountInputType3 == BBDeviceController.AmountInputType.AMOUNT_AND_TIPS || amountInputType3 == BBDeviceController.AmountInputType.AMOUNT_AND_TIPS_IN_PERCENTAGE) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is missing");
                return;
            }
            i2 = i;
        }
        Object obj19 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_CHARACTERS_PARAM_NAME);
        if (obj19 != null) {
            String strAaa00013 = ccc034zz.aaa000(obj19, (this.aaa000.aaa011.aaa014().aaa005().equalsIgnoreCase(str3) || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WPC2") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WPP2")) ? "DF32" : "DF873A");
            if (strAaa00013 != null) {
                str = str + strAaa00013;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid currencyCharacters");
                return;
            }
        }
        Object obj20 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME);
        if (obj20 != null) {
            String strAaa00014 = ccc034zz.aaa000(obj20, TlvMap.TAG_TRANSACTION_CURRENCY_CODE);
            if (strAaa00014 != null) {
                if (i2 != 0) {
                    strAaa00014 = strAaa00014.substring(i, strAaa00014.indexOf(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT));
                }
                String str5 = str + strAaa00014;
                Object obj21 = hashtable.get("setAmountTimeout");
                if (obj21 != null) {
                    String strAaa00015 = ccc034zz.aaa000(obj21, "DF65");
                    if (strAaa00015 != null) {
                        str5 = str5 + strAaa00015;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid setAmountTimeout");
                        return;
                    }
                }
                Object obj22 = hashtable.get(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME);
                if (obj22 != null) {
                    int[] iArr8 = new int[1];
                    String strAaa00016 = ccc034zz.aaa000(obj22, TlvMap.TAG_AMOUNT_AUTHORIZED, hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME), iArr8);
                    if (strAaa00016 == null && iArr8[0] == 2) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                        return;
                    }
                    if (strAaa00016 == null && iArr8[0] == 4) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid currencyExponent");
                        return;
                    }
                    if (strAaa00016 == null && iArr8[0] == 5) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                        return;
                    }
                    if (strAaa00016 == null && iArr8[0] == 6) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid amount pattern");
                        return;
                    } else if (strAaa00016 != null) {
                        str5 = str5 + strAaa00016;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid amount");
                        return;
                    }
                }
                Object obj23 = hashtable.get("otherAmountOption");
                if (obj23 != null) {
                    String strAaa00017 = ccc034zz.aaa000(obj23, "DF856E");
                    if (strAaa00017 != null) {
                        str5 = str5 + strAaa00017;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid otherAmountOption");
                        return;
                    }
                }
                aaa011zz aaa011zzVar = this.aaa001;
                aaa011zzVar.aaa005 = 0;
                aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa059, (byte) 0, (byte) 0, ccc071zz.aaa005(str5));
                aaa011zz aaa011zzVar2 = this.aaa001;
                aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyCode");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
    }
}
