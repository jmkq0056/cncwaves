package org.xbill.DNS;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.eclipse.jetty.http.HttpStatus;
import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
public class TSIG {
    public static final short FUDGE = 300;
    public static final Name HMAC;
    public static final Name HMAC_MD5;
    public static final Name HMAC_SHA1;
    public static final Name HMAC_SHA224;
    public static final Name HMAC_SHA256;
    public static final Name HMAC_SHA384;
    public static final Name HMAC_SHA512;
    private static Map algMap;
    private Name alg;
    private Mac hmac;
    private Name name;

    public static class StreamVerifier {
        private TSIG key;
        private TSIGRecord lastTSIG;
        private int lastsigned;
        private int nresponses = 0;
        private Mac verifier;

        public StreamVerifier(TSIG tsig, TSIGRecord tSIGRecord) {
            this.key = tsig;
            this.verifier = tsig.hmac;
            this.lastTSIG = tSIGRecord;
        }

        public int verify(Message message, byte[] bArr) {
            int length;
            int length2;
            TSIGRecord tsig = message.getTSIG();
            int i4 = this.nresponses + 1;
            this.nresponses = i4;
            if (i4 == 1) {
                int iVerify = this.key.verify(message, bArr, this.lastTSIG);
                if (iVerify == 0) {
                    byte[] signature = tsig.getSignature();
                    DNSOutput dNSOutput = new DNSOutput();
                    dNSOutput.writeU16(signature.length);
                    this.verifier.update(dNSOutput.toByteArray());
                    this.verifier.update(signature);
                }
                this.lastTSIG = tsig;
                return iVerify;
            }
            if (tsig != null) {
                message.getHeader().decCount(3);
            }
            byte[] wire = message.getHeader().toWire();
            if (tsig != null) {
                message.getHeader().incCount(3);
            }
            this.verifier.update(wire);
            if (tsig == null) {
                length = bArr.length;
                length2 = wire.length;
            } else {
                length = message.tsigstart;
                length2 = wire.length;
            }
            this.verifier.update(bArr, wire.length, length - length2);
            if (tsig == null) {
                if (this.nresponses - this.lastsigned >= 100) {
                    message.tsigState = 4;
                    return 1;
                }
                message.tsigState = 2;
                return 0;
            }
            this.lastsigned = this.nresponses;
            this.lastTSIG = tsig;
            if (!tsig.getName().equals(this.key.name) || !tsig.getAlgorithm().equals(this.key.alg)) {
                if (Options.check("verbose")) {
                    System.err.println("BADKEY failure");
                }
                message.tsigState = 4;
                return 17;
            }
            DNSOutput dNSOutput2 = new DNSOutput();
            long time = tsig.getTimeSigned().getTime() / 1000;
            dNSOutput2.writeU16((int) (time >> 32));
            dNSOutput2.writeU32(time & 4294967295L);
            dNSOutput2.writeU16(tsig.getFudge());
            this.verifier.update(dNSOutput2.toByteArray());
            if (!TSIG.verify(this.verifier, tsig.getSignature())) {
                if (Options.check("verbose")) {
                    System.err.println("BADSIG failure");
                }
                message.tsigState = 4;
                return 16;
            }
            this.verifier.reset();
            DNSOutput dNSOutput3 = new DNSOutput();
            dNSOutput3.writeU16(tsig.getSignature().length);
            this.verifier.update(dNSOutput3.toByteArray());
            this.verifier.update(tsig.getSignature());
            message.tsigState = 1;
            return 0;
        }
    }

    static {
        Name nameFromConstantString = Name.fromConstantString("HMAC-MD5.SIG-ALG.REG.INT.");
        HMAC_MD5 = nameFromConstantString;
        HMAC = nameFromConstantString;
        Name nameFromConstantString2 = Name.fromConstantString("hmac-sha1.");
        HMAC_SHA1 = nameFromConstantString2;
        Name nameFromConstantString3 = Name.fromConstantString("hmac-sha224.");
        HMAC_SHA224 = nameFromConstantString3;
        Name nameFromConstantString4 = Name.fromConstantString("hmac-sha256.");
        HMAC_SHA256 = nameFromConstantString4;
        Name nameFromConstantString5 = Name.fromConstantString("hmac-sha384.");
        HMAC_SHA384 = nameFromConstantString5;
        Name nameFromConstantString6 = Name.fromConstantString("hmac-sha512.");
        HMAC_SHA512 = nameFromConstantString6;
        HashMap map = new HashMap();
        map.put(nameFromConstantString, "HmacMD5");
        map.put(nameFromConstantString2, "HmacSHA1");
        map.put(nameFromConstantString3, "HmacSHA224");
        map.put(nameFromConstantString4, "HmacSHA256");
        map.put(nameFromConstantString5, "HmacSHA384");
        map.put(nameFromConstantString6, "HmacSHA512");
        algMap = Collections.unmodifiableMap(map);
    }

    public TSIG(Name name, Name name2, byte[] bArr) {
        this.name = name2;
        this.alg = name;
        String strNameToAlgorithm = nameToAlgorithm(name);
        init_hmac(strNameToAlgorithm, new SecretKeySpec(bArr, strNameToAlgorithm));
    }

    public static Name algorithmToName(String str) {
        for (Map.Entry entry : algMap.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getValue())) {
                return (Name) entry.getKey();
            }
        }
        throw new IllegalArgumentException("Unknown algorithm");
    }

    public static TSIG fromString(String str) {
        String[] strArrSplit = str.split("[:/]", 3);
        if (strArrSplit.length < 2) {
            throw new IllegalArgumentException("Invalid TSIG key specification");
        }
        if (strArrSplit.length == 3) {
            try {
                return new TSIG(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            } catch (IllegalArgumentException unused) {
                strArrSplit = str.split("[:/]", 2);
            }
        }
        return new TSIG(HMAC_MD5, strArrSplit[0], strArrSplit[1]);
    }

    private void init_hmac(String str, SecretKey secretKey) {
        try {
            Mac mac = Mac.getInstance(str);
            this.hmac = mac;
            mac.init(secretKey);
        } catch (GeneralSecurityException unused) {
            throw new IllegalArgumentException("Caught security exception setting up HMAC.");
        }
    }

    public static String nameToAlgorithm(Name name) {
        String str = (String) algMap.get(name);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Unknown algorithm");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean verify(Mac mac, byte[] bArr) {
        return verify(mac, bArr, false);
    }

    public void apply(Message message, int i4, TSIGRecord tSIGRecord) {
        message.addRecord(generate(message, message.toWire(), i4, tSIGRecord), 3);
        message.tsigState = 3;
    }

    public void applyStream(Message message, TSIGRecord tSIGRecord, boolean z3) {
        if (z3) {
            apply(message, tSIGRecord);
            return;
        }
        Date date = new Date();
        this.hmac.reset();
        int iIntValue = Options.intValue("tsigfudge");
        int i4 = (iIntValue < 0 || iIntValue > 32767) ? HttpStatus.MULTIPLE_CHOICES_300 : iIntValue;
        DNSOutput dNSOutput = new DNSOutput();
        dNSOutput.writeU16(tSIGRecord.getSignature().length);
        this.hmac.update(dNSOutput.toByteArray());
        this.hmac.update(tSIGRecord.getSignature());
        this.hmac.update(message.toWire());
        DNSOutput dNSOutput2 = new DNSOutput();
        long time = date.getTime() / 1000;
        dNSOutput2.writeU16((int) (time >> 32));
        dNSOutput2.writeU32(time & 4294967295L);
        dNSOutput2.writeU16(i4);
        this.hmac.update(dNSOutput2.toByteArray());
        message.addRecord(new TSIGRecord(this.name, 255, 0L, this.alg, date, i4, this.hmac.doFinal(), message.getHeader().getID(), 0, null), 3);
        message.tsigState = 3;
    }

    public TSIGRecord generate(Message message, byte[] bArr, int i4, TSIGRecord tSIGRecord) {
        boolean z3;
        byte[] byteArray;
        Date date = i4 != 18 ? new Date() : tSIGRecord.getTimeSigned();
        if (i4 == 0 || i4 == 18) {
            z3 = true;
            this.hmac.reset();
        } else {
            z3 = false;
        }
        int iIntValue = Options.intValue("tsigfudge");
        int i5 = (iIntValue < 0 || iIntValue > 32767) ? HttpStatus.MULTIPLE_CHOICES_300 : iIntValue;
        if (tSIGRecord != null) {
            DNSOutput dNSOutput = new DNSOutput();
            dNSOutput.writeU16(tSIGRecord.getSignature().length);
            if (z3) {
                this.hmac.update(dNSOutput.toByteArray());
                this.hmac.update(tSIGRecord.getSignature());
            }
        }
        if (z3) {
            this.hmac.update(bArr);
        }
        DNSOutput dNSOutput2 = new DNSOutput();
        this.name.toWireCanonical(dNSOutput2);
        dNSOutput2.writeU16(255);
        dNSOutput2.writeU32(0L);
        this.alg.toWireCanonical(dNSOutput2);
        long time = date.getTime() / 1000;
        dNSOutput2.writeU16((int) (time >> 32));
        dNSOutput2.writeU32(time & 4294967295L);
        dNSOutput2.writeU16(i5);
        dNSOutput2.writeU16(i4);
        dNSOutput2.writeU16(0);
        if (z3) {
            this.hmac.update(dNSOutput2.toByteArray());
        }
        byte[] bArrDoFinal = z3 ? this.hmac.doFinal() : new byte[0];
        if (i4 == 18) {
            DNSOutput dNSOutput3 = new DNSOutput();
            long time2 = new Date().getTime() / 1000;
            dNSOutput3.writeU16((int) (time2 >> 32));
            dNSOutput3.writeU32(time2 & 4294967295L);
            byteArray = dNSOutput3.toByteArray();
        } else {
            byteArray = null;
        }
        return new TSIGRecord(this.name, 255, 0L, this.alg, date, i5, bArrDoFinal, message.getHeader().getID(), i4, byteArray);
    }

    public int recordLength() {
        return this.alg.length() + this.name.length() + 10 + 8 + 18 + 4 + 8;
    }

    private static boolean verify(Mac mac, byte[] bArr, boolean z3) {
        byte[] bArrDoFinal = mac.doFinal();
        if (z3 && bArr.length < bArrDoFinal.length) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArrDoFinal, 0, bArr2, 0, length);
            bArrDoFinal = bArr2;
        }
        return Arrays.equals(bArr, bArrDoFinal);
    }

    public void apply(Message message, TSIGRecord tSIGRecord) {
        apply(message, 0, tSIGRecord);
    }

    public TSIG(Name name, Name name2, SecretKey secretKey) {
        this.name = name2;
        this.alg = name;
        init_hmac(nameToAlgorithm(name), secretKey);
    }

    public byte verify(Message message, byte[] bArr, int i4, TSIGRecord tSIGRecord) {
        message.tsigState = 4;
        TSIGRecord tsig = message.getTSIG();
        this.hmac.reset();
        if (tsig == null) {
            return (byte) 1;
        }
        if (!tsig.getName().equals(this.name) || !tsig.getAlgorithm().equals(this.alg)) {
            if (Options.check("verbose")) {
                System.err.println("BADKEY failure");
            }
            return (byte) 17;
        }
        if (Math.abs(System.currentTimeMillis() - tsig.getTimeSigned().getTime()) > ((long) tsig.getFudge()) * 1000) {
            if (!Options.check("verbose")) {
                return (byte) 18;
            }
            System.err.println("BADTIME failure");
            return (byte) 18;
        }
        if (tSIGRecord != null && tsig.getError() != 17 && tsig.getError() != 16) {
            DNSOutput dNSOutput = new DNSOutput();
            dNSOutput.writeU16(tSIGRecord.getSignature().length);
            this.hmac.update(dNSOutput.toByteArray());
            this.hmac.update(tSIGRecord.getSignature());
        }
        message.getHeader().decCount(3);
        byte[] wire = message.getHeader().toWire();
        message.getHeader().incCount(3);
        this.hmac.update(wire);
        this.hmac.update(bArr, wire.length, message.tsigstart - wire.length);
        DNSOutput dNSOutput2 = new DNSOutput();
        tsig.getName().toWireCanonical(dNSOutput2);
        dNSOutput2.writeU16(tsig.dclass);
        dNSOutput2.writeU32(tsig.ttl);
        tsig.getAlgorithm().toWireCanonical(dNSOutput2);
        long time = tsig.getTimeSigned().getTime() / 1000;
        dNSOutput2.writeU16((int) (time >> 32));
        dNSOutput2.writeU32(time & 4294967295L);
        dNSOutput2.writeU16(tsig.getFudge());
        dNSOutput2.writeU16(tsig.getError());
        if (tsig.getOther() != null) {
            dNSOutput2.writeU16(tsig.getOther().length);
            dNSOutput2.writeByteArray(tsig.getOther());
        } else {
            dNSOutput2.writeU16(0);
        }
        this.hmac.update(dNSOutput2.toByteArray());
        byte[] signature = tsig.getSignature();
        int macLength = this.hmac.getMacLength();
        int i5 = this.hmac.getAlgorithm().toLowerCase().contains("md5") ? 10 : macLength / 2;
        if (signature.length > macLength) {
            if (Options.check("verbose")) {
                System.err.println("BADSIG: signature too long");
            }
            return (byte) 16;
        }
        if (signature.length < i5) {
            if (Options.check("verbose")) {
                System.err.println("BADSIG: signature too short");
            }
            return (byte) 16;
        }
        if (!verify(this.hmac, signature, true)) {
            if (Options.check("verbose")) {
                System.err.println("BADSIG: signature verification");
            }
            return (byte) 16;
        }
        message.tsigState = 1;
        return (byte) 0;
    }

    public TSIG(Mac mac, Name name) {
        this.name = name;
        this.hmac = mac;
        this.alg = algorithmToName(mac.getAlgorithm());
    }

    public TSIG(Name name, byte[] bArr) {
        this(HMAC_MD5, name, bArr);
    }

    public TSIG(Name name, String str, String str2) {
        byte[] bArrFromString = base64.fromString(str2);
        if (bArrFromString != null) {
            try {
                this.name = Name.fromString(str, Name.root);
                this.alg = name;
                String strNameToAlgorithm = nameToAlgorithm(name);
                init_hmac(strNameToAlgorithm, new SecretKeySpec(bArrFromString, strNameToAlgorithm));
                return;
            } catch (TextParseException unused) {
                throw new IllegalArgumentException("Invalid TSIG key name");
            }
        }
        throw new IllegalArgumentException("Invalid TSIG key string");
    }

    public TSIG(String str, String str2, String str3) {
        this(algorithmToName(str), str2, str3);
    }

    public TSIG(String str, String str2) {
        this(HMAC_MD5, str, str2);
    }

    public int verify(Message message, byte[] bArr, TSIGRecord tSIGRecord) {
        return verify(message, bArr, bArr.length, tSIGRecord);
    }
}
