package org.xbill.DNS;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public final class Address {
    public static final int IPv4 = 1;
    public static final int IPv6 = 2;

    private Address() {
    }

    private static InetAddress addrFromRecord(String str, Record record) {
        return InetAddress.getByAddress(str, (record instanceof ARecord ? ((ARecord) record).getAddress() : ((AAAARecord) record).getAddress()).getAddress());
    }

    public static int addressLength(int i4) {
        if (i4 == 1) {
            return 4;
        }
        if (i4 == 2) {
            return 16;
        }
        throw new IllegalArgumentException("unknown address family");
    }

    public static int familyOf(InetAddress inetAddress) {
        if (inetAddress instanceof Inet4Address) {
            return 1;
        }
        if (inetAddress instanceof Inet6Address) {
            return 2;
        }
        throw new IllegalArgumentException("unknown address family");
    }

    public static InetAddress[] getAllByName(String str) throws UnknownHostException {
        try {
            return new InetAddress[]{getByAddress(str)};
        } catch (UnknownHostException unused) {
            Record[] recordArrLookupHostName = lookupHostName(str, true);
            InetAddress[] inetAddressArr = new InetAddress[recordArrLookupHostName.length];
            for (int i4 = 0; i4 < recordArrLookupHostName.length; i4++) {
                inetAddressArr[i4] = addrFromRecord(str, recordArrLookupHostName[i4]);
            }
            return inetAddressArr;
        }
    }

    public static InetAddress getByAddress(String str) throws UnknownHostException {
        byte[] byteArray = toByteArray(str, 1);
        if (byteArray != null) {
            return InetAddress.getByAddress(str, byteArray);
        }
        byte[] byteArray2 = toByteArray(str, 2);
        if (byteArray2 != null) {
            return InetAddress.getByAddress(str, byteArray2);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Invalid address: ");
        stringBuffer.append(str);
        throw new UnknownHostException(stringBuffer.toString());
    }

    public static InetAddress getByName(String str) {
        try {
            return getByAddress(str);
        } catch (UnknownHostException unused) {
            return addrFromRecord(str, lookupHostName(str, false)[0]);
        }
    }

    public static String getHostName(InetAddress inetAddress) throws UnknownHostException {
        Record[] recordArrRun = new Lookup(ReverseMap.fromAddress(inetAddress), 12).run();
        if (recordArrRun != null) {
            return ((PTRRecord) recordArrRun[0]).getTarget().toString();
        }
        throw new UnknownHostException("unknown address");
    }

    public static boolean isDottedQuad(String str) {
        return toByteArray(str, 1) != null;
    }

    private static Record[] lookupHostName(String str, boolean z3) throws UnknownHostException {
        Record[] recordArrRun;
        Record[] recordArrRun2;
        try {
            Lookup lookup = new Lookup(str, 1);
            Record[] recordArrRun3 = lookup.run();
            if (recordArrRun3 == null) {
                if (lookup.getResult() != 4 || (recordArrRun2 = new Lookup(str, 28).run()) == null) {
                    throw new UnknownHostException("unknown host");
                }
                return recordArrRun2;
            }
            if (!z3 || (recordArrRun = new Lookup(str, 28).run()) == null) {
                return recordArrRun3;
            }
            Record[] recordArr = new Record[recordArrRun3.length + recordArrRun.length];
            System.arraycopy(recordArrRun3, 0, recordArr, 0, recordArrRun3.length);
            System.arraycopy(recordArrRun, 0, recordArr, recordArrRun3.length, recordArrRun.length);
            return recordArr;
        } catch (TextParseException unused) {
            throw new UnknownHostException("invalid name");
        }
    }

    private static byte[] parseV4(String str) {
        byte[] bArr = new byte[4];
        int length = str.length();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            char cCharAt = str.charAt(i7);
            if (cCharAt < '0' || cCharAt > '9') {
                if (cCharAt != '.' || i4 == 3 || i5 == 0) {
                    return null;
                }
                bArr[i4] = (byte) i6;
                i4++;
                i5 = 0;
                i6 = 0;
            } else {
                if (i5 == 3) {
                    return null;
                }
                if (i5 > 0 && i6 == 0) {
                    return null;
                }
                i5++;
                int i8 = (cCharAt - '0') + (i6 * 10);
                if (i8 > 255) {
                    return null;
                }
                i6 = i8;
            }
        }
        if (i4 != 3 || i5 == 0) {
            return null;
        }
        bArr[i4] = (byte) i6;
        return bArr;
    }

    private static byte[] parseV6(String str) {
        int i4;
        byte[] byteArray;
        byte[] bArr = new byte[16];
        int i5 = -1;
        String[] strArrSplit = str.split(":", -1);
        int length = strArrSplit.length - 1;
        if (strArrSplit[0].length() != 0) {
            i4 = 0;
        } else {
            if (length + 0 <= 0 || strArrSplit[1].length() != 0) {
                return null;
            }
            i4 = 1;
        }
        if (strArrSplit[length].length() == 0) {
            if (length - i4 <= 0 || strArrSplit[length - 1].length() != 0) {
                return null;
            }
            length--;
        }
        if ((length - i4) + 1 > 8) {
            return null;
        }
        int i6 = 0;
        while (true) {
            if (i4 > length) {
                break;
            }
            if (strArrSplit[i4].length() == 0) {
                if (i5 >= 0) {
                    return null;
                }
                i5 = i6;
            } else if (strArrSplit[i4].indexOf(46) < 0) {
                for (int i7 = 0; i7 < strArrSplit[i4].length(); i7++) {
                    try {
                        if (Character.digit(strArrSplit[i4].charAt(i7), 16) < 0) {
                            return null;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                int i8 = Integer.parseInt(strArrSplit[i4], 16);
                if (i8 > 65535 || i8 < 0) {
                    break;
                }
                int i9 = i6 + 1;
                bArr[i6] = (byte) (i8 >>> 8);
                i6 = i9 + 1;
                bArr[i9] = (byte) (i8 & 255);
            } else {
                if (i4 < length || i4 > 6 || (byteArray = toByteArray(strArrSplit[i4], 1)) == null) {
                    return null;
                }
                int i10 = 0;
                while (i10 < 4) {
                    bArr[i6] = byteArray[i10];
                    i10++;
                    i6++;
                }
            }
            i4++;
        }
        if (i6 < 16 && i5 < 0) {
            return null;
        }
        if (i5 >= 0) {
            int i11 = (16 - i6) + i5;
            System.arraycopy(bArr, i5, bArr, i11, i6 - i5);
            while (i5 < i11) {
                bArr[i5] = 0;
                i5++;
            }
        }
        return bArr;
        return null;
    }

    public static int[] toArray(String str, int i4) {
        byte[] byteArray = toByteArray(str, i4);
        if (byteArray == null) {
            return null;
        }
        int[] iArr = new int[byteArray.length];
        for (int i5 = 0; i5 < byteArray.length; i5++) {
            iArr[i5] = byteArray[i5] & 255;
        }
        return iArr;
    }

    public static byte[] toByteArray(String str, int i4) {
        if (i4 == 1) {
            return parseV4(str);
        }
        if (i4 == 2) {
            return parseV6(str);
        }
        throw new IllegalArgumentException("unknown address family");
    }

    public static String toDottedQuad(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(bArr[0] & 255);
        stringBuffer.append(".");
        stringBuffer.append(bArr[1] & 255);
        stringBuffer.append(".");
        stringBuffer.append(bArr[2] & 255);
        stringBuffer.append(".");
        stringBuffer.append(bArr[3] & 255);
        return stringBuffer.toString();
    }

    public static InetAddress truncate(InetAddress inetAddress, int i4) {
        int i5;
        int iAddressLength = addressLength(familyOf(inetAddress)) * 8;
        if (i4 < 0 || i4 > iAddressLength) {
            throw new IllegalArgumentException("invalid mask length");
        }
        if (i4 == iAddressLength) {
            return inetAddress;
        }
        byte[] address = inetAddress.getAddress();
        int i6 = i4 / 8;
        int i7 = i6 + 1;
        while (true) {
            if (i7 >= address.length) {
                break;
            }
            address[i7] = 0;
            i7++;
        }
        int i8 = 0;
        for (i5 = 0; i5 < i4 % 8; i5++) {
            i8 |= 1 << (7 - i5);
        }
        address[i6] = (byte) (address[i6] & i8);
        try {
            return InetAddress.getByAddress(address);
        } catch (UnknownHostException unused) {
            throw new IllegalArgumentException("invalid address");
        }
    }

    public static String toDottedQuad(int[] iArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(iArr[0]);
        stringBuffer.append(".");
        stringBuffer.append(iArr[1]);
        stringBuffer.append(".");
        stringBuffer.append(iArr[2]);
        stringBuffer.append(".");
        stringBuffer.append(iArr[3]);
        return stringBuffer.toString();
    }

    public static int[] toArray(String str) {
        return toArray(str, 1);
    }

    public static InetAddress getByAddress(String str, int i4) throws UnknownHostException {
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("unknown address family");
        }
        byte[] byteArray = toByteArray(str, i4);
        if (byteArray != null) {
            return InetAddress.getByAddress(str, byteArray);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Invalid address: ");
        stringBuffer.append(str);
        throw new UnknownHostException(stringBuffer.toString());
    }
}
