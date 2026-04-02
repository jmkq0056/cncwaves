package org.kamranzafar.jtar;

import com.google.firebase.sessions.settings.RemoteSettings;
import com.sun.jna.platform.win32.WinError;
import java.io.File;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class TarEntry {
    protected File file;
    protected TarHeader header;

    private TarEntry() {
        this.file = null;
        this.header = new TarHeader();
    }

    public TarEntry(File file, String str) {
        this();
        this.file = file;
        extractTarHeader(str);
    }

    public TarEntry(byte[] bArr) {
        this();
        parseTarHeader(bArr);
    }

    public TarEntry(TarHeader tarHeader) {
        this.file = null;
        this.header = tarHeader;
    }

    public boolean equals(TarEntry tarEntry) {
        return this.header.name.toString().equals(tarEntry.header.name.toString());
    }

    public boolean isDescendent(TarEntry tarEntry) {
        return tarEntry.header.name.toString().startsWith(this.header.name.toString());
    }

    public TarHeader getHeader() {
        return this.header;
    }

    public String getName() {
        String string = this.header.name.toString();
        return (this.header.namePrefix == null || this.header.namePrefix.toString().equals("")) ? string : this.header.namePrefix.toString() + RemoteSettings.FORWARD_SLASH_STRING + string;
    }

    public void setName(String str) {
        this.header.name = new StringBuffer(str);
    }

    public int getUserId() {
        return this.header.userId;
    }

    public void setUserId(int i) {
        this.header.userId = i;
    }

    public int getGroupId() {
        return this.header.groupId;
    }

    public void setGroupId(int i) {
        this.header.groupId = i;
    }

    public String getUserName() {
        return this.header.userName.toString();
    }

    public void setUserName(String str) {
        this.header.userName = new StringBuffer(str);
    }

    public String getGroupName() {
        return this.header.groupName.toString();
    }

    public void setGroupName(String str) {
        this.header.groupName = new StringBuffer(str);
    }

    public void setIds(int i, int i2) {
        setUserId(i);
        setGroupId(i2);
    }

    public void setModTime(long j) {
        this.header.modTime = j / 1000;
    }

    public void setModTime(Date date) {
        this.header.modTime = date.getTime() / 1000;
    }

    public Date getModTime() {
        return new Date(this.header.modTime * 1000);
    }

    public File getFile() {
        return this.file;
    }

    public long getSize() {
        return this.header.size;
    }

    public void setSize(long j) {
        this.header.size = j;
    }

    public boolean isDirectory() {
        File file = this.file;
        if (file != null) {
            return file.isDirectory();
        }
        TarHeader tarHeader = this.header;
        if (tarHeader != null) {
            return tarHeader.linkFlag == 53 || this.header.name.toString().endsWith(RemoteSettings.FORWARD_SLASH_STRING);
        }
        return false;
    }

    public void extractTarHeader(String str) {
        this.header = TarHeader.createHeader(str, this.file.length(), this.file.lastModified() / 1000, this.file.isDirectory(), PermissionUtils.permissions(this.file));
    }

    public long computeCheckSum(byte[] bArr) {
        long j = 0;
        for (byte b : bArr) {
            j += (long) (b & 255);
        }
        return j;
    }

    public void writeEntryHeader(byte[] bArr) {
        int longOctalBytes = Octal.getLongOctalBytes(this.header.modTime, bArr, Octal.getLongOctalBytes(this.header.size, bArr, Octal.getOctalBytes(this.header.groupId, bArr, Octal.getOctalBytes(this.header.userId, bArr, Octal.getOctalBytes(this.header.mode, bArr, TarHeader.getNameBytes(this.header.name, bArr, 0, 100), 8), 8), 8), 12), 12);
        int i = longOctalBytes;
        int i2 = 0;
        while (i2 < 8) {
            bArr[i] = 32;
            i2++;
            i++;
        }
        bArr[i] = this.header.linkFlag;
        for (int nameBytes = TarHeader.getNameBytes(this.header.namePrefix, bArr, Octal.getOctalBytes(this.header.devMinor, bArr, Octal.getOctalBytes(this.header.devMajor, bArr, TarHeader.getNameBytes(this.header.groupName, bArr, TarHeader.getNameBytes(this.header.userName, bArr, TarHeader.getNameBytes(this.header.magic, bArr, TarHeader.getNameBytes(this.header.linkName, bArr, i + 1, 100), 8), 32), 32), 8), 8), 155); nameBytes < bArr.length; nameBytes++) {
            bArr[nameBytes] = 0;
        }
        Octal.getCheckSumOctalBytes(computeCheckSum(bArr), bArr, longOctalBytes, 8);
    }

    public void parseTarHeader(byte[] bArr) {
        this.header.name = TarHeader.parseName(bArr, 0, 100);
        this.header.mode = (int) Octal.parseOctal(bArr, 100, 8);
        this.header.userId = (int) Octal.parseOctal(bArr, 108, 8);
        this.header.groupId = (int) Octal.parseOctal(bArr, 116, 8);
        this.header.size = Octal.parseOctal(bArr, WinError.ERROR_INVALID_LEVEL, 12);
        this.header.modTime = Octal.parseOctal(bArr, 136, 12);
        this.header.checkSum = (int) Octal.parseOctal(bArr, WinError.ERROR_PATH_BUSY, 8);
        this.header.linkFlag = bArr[156];
        this.header.linkName = TarHeader.parseName(bArr, WinError.ERROR_DISCARDED, 100);
        this.header.magic = TarHeader.parseName(bArr, 257, 8);
        this.header.userName = TarHeader.parseName(bArr, 265, 32);
        this.header.groupName = TarHeader.parseName(bArr, 297, 32);
        this.header.devMajor = (int) Octal.parseOctal(bArr, 329, 8);
        this.header.devMinor = (int) Octal.parseOctal(bArr, 337, 8);
        this.header.namePrefix = TarHeader.parseName(bArr, 345, 155);
    }
}
