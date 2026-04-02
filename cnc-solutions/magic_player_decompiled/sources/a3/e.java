package a3;

import a3.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InputStream f102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OutputStream f103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Properties f107f;

    public e(InputStream inputStream, OutputStream outputStream, String str, String str2, int i4, Properties properties) {
        this.f102a = inputStream;
        this.f103b = outputStream;
        this.f104c = str;
        this.f105d = str2;
        this.f106e = i4;
        this.f107f = properties;
    }

    public void a() throws IOException {
        byte[] bArr = new byte[16];
        System.arraycopy(UUID.randomUUID().toString().getBytes(), 0, bArr, 0, 16);
        a.C0003a c0003a = a.f94a;
        c0003a.putByteArray("aKey", bArr);
        String str = c0003a.f95a;
        try {
            String rawPath = "/mqtt";
            URI uri = new URI(this.f104c);
            if (uri.getRawPath() != null && !uri.getRawPath().isEmpty()) {
                rawPath = uri.getRawPath();
                if (uri.getRawQuery() != null && !uri.getRawQuery().isEmpty()) {
                    rawPath = String.valueOf(rawPath) + "?" + uri.getRawQuery();
                }
            }
            PrintWriter printWriter = new PrintWriter(this.f103b);
            printWriter.print("GET " + rawPath + " HTTP/1.1\r\n");
            if (this.f106e != 80) {
                printWriter.print("Host: " + this.f105d + ":" + this.f106e + "\r\n");
            } else {
                printWriter.print("Host: " + this.f105d + "\r\n");
            }
            printWriter.print("Upgrade: websocket\r\n");
            printWriter.print("Connection: Upgrade\r\n");
            printWriter.print("Sec-WebSocket-Key: " + str + "\r\n");
            printWriter.print("Sec-WebSocket-Protocol: mqtt\r\n");
            printWriter.print("Sec-WebSocket-Version: 13\r\n");
            Properties properties = this.f107f;
            if (properties != null) {
                for (String str2 : properties.keySet()) {
                    printWriter.print(String.valueOf(str2) + ": " + this.f107f.getProperty(str2) + "\r\n");
                }
            }
            String userInfo = uri.getUserInfo();
            if (userInfo != null) {
                StringBuilder sb = new StringBuilder("Authorization: Basic ");
                a.C0003a c0003a2 = a.f94a;
                c0003a2.putByteArray("akey", userInfo.getBytes());
                sb.append(c0003a2.f95a);
                sb.append("\r\n");
                printWriter.print(sb.toString());
            }
            printWriter.print("\r\n");
            printWriter.flush();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f102a));
            ArrayList arrayList = new ArrayList();
            String line = bufferedReader.readLine();
            if (line == null) {
                throw new IOException("WebSocket Response header: Invalid response from Server, It may not support WebSockets.");
            }
            while (!line.equals("")) {
                arrayList.add(line);
                line = bufferedReader.readLine();
            }
            HashMap map = new HashMap();
            for (int i4 = 1; i4 < arrayList.size(); i4++) {
                String[] strArrSplit = ((String) arrayList.get(i4)).split(":");
                map.put(strArrSplit[0].toLowerCase(), strArrSplit[1]);
            }
            String str3 = (String) map.get("connection");
            if (str3 == null || str3.equalsIgnoreCase("upgrade")) {
                throw new IOException("WebSocket Response header: Incorrect connection header");
            }
            String str4 = (String) map.get("upgrade");
            if (str4 == null || !str4.toLowerCase().contains("websocket")) {
                throw new IOException("WebSocket Response header: Incorrect upgrade.");
            }
            if (((String) map.get("sec-websocket-protocol")) == null) {
                throw new IOException("WebSocket Response header: empty sec-websocket-protocol");
            }
            if (!map.containsKey("sec-websocket-accept")) {
                throw new IOException("WebSocket Response header: Missing Sec-WebSocket-Accept");
            }
            try {
                b(str, (String) map.get("sec-websocket-accept"));
            } catch (c unused) {
                throw new IOException("WebSocket Response header: Incorrect Sec-WebSocket-Key");
            } catch (NoSuchAlgorithmException e4) {
                throw new IOException(e4.getMessage());
            }
        } catch (URISyntaxException e5) {
            throw new IllegalStateException(e5.getMessage());
        }
    }

    public final void b(String str, String str2) throws c {
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest((String.valueOf(str) + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes());
        a.C0003a c0003a = a.f94a;
        c0003a.putByteArray("aKey", bArrDigest);
        if (!c0003a.f95a.trim().equals(str2.trim())) {
            throw new c();
        }
    }
}
