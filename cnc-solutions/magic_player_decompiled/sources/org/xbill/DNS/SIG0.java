package org.xbill.DNS;

import java.security.PrivateKey;
import java.util.Date;
import org.eclipse.jetty.http.HttpStatus;
import org.xbill.DNS.DNSSEC;

/* JADX INFO: loaded from: classes2.dex */
public class SIG0 {
    private static final short VALIDITY = 300;

    private SIG0() {
    }

    public static void signMessage(Message message, KEYRecord kEYRecord, PrivateKey privateKey, SIGRecord sIGRecord) {
        int iIntValue = Options.intValue("sig0validity");
        if (iIntValue < 0) {
            iIntValue = HttpStatus.MULTIPLE_CHOICES_300;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        message.addRecord(DNSSEC.signMessage(message, sIGRecord, kEYRecord, privateKey, new Date(jCurrentTimeMillis), new Date(jCurrentTimeMillis + ((long) (iIntValue * 1000)))), 3);
    }

    public static void verifyMessage(Message message, byte[] bArr, KEYRecord kEYRecord, SIGRecord sIGRecord) throws DNSSEC.DNSSECException {
        SIGRecord sIGRecord2;
        Record[] sectionArray = message.getSectionArray(3);
        int i4 = 0;
        while (true) {
            if (i4 >= sectionArray.length) {
                sIGRecord2 = null;
                break;
            } else {
                if (sectionArray[i4].getType() == 24 && ((SIGRecord) sectionArray[i4]).getTypeCovered() == 0) {
                    sIGRecord2 = (SIGRecord) sectionArray[i4];
                    break;
                }
                i4++;
            }
        }
        DNSSEC.verifyMessage(message, bArr, sIGRecord2, sIGRecord, kEYRecord);
    }
}
