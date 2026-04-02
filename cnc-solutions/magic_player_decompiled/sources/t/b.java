package t;

import android.media.AudioManager;
import android.util.Log;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytes;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.model.Channel;
import org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl;
import org.fourthline.cling.support.renderingcontrol.RenderingControlException;

/* JADX INFO: loaded from: classes.dex */
public class b extends AbstractAudioRenderingControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q.a f3493a;

    public b(LastChange lastChange) {
        super(lastChange);
        this.f3493a = new q.a(w0.c.f3777a);
    }

    public void a(String str) throws RenderingControlException {
        if (!getChannel(str).equals(Channel.Master)) {
            throw new RenderingControlException(ErrorCode.ARGUMENT_VALUE_INVALID, androidx.appcompat.view.a.a("Unsupported audio channel: ", str));
        }
    }

    @Override // org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl
    public Channel[] getCurrentChannels() {
        return new Channel[]{Channel.Master};
    }

    @Override // org.fourthline.cling.support.lastchange.LastChangeDelegator
    public UnsignedIntegerFourBytes[] getCurrentInstanceIds() {
        return new UnsignedIntegerFourBytes[0];
    }

    @Override // org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl
    public boolean getMute(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) throws RenderingControlException {
        a(str);
        return this.f3493a.b() == 0;
    }

    @Override // org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl
    public UnsignedIntegerTwoBytes getVolume(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) throws RenderingControlException {
        a(str);
        int iC = this.f3493a.c(this.f3493a.b());
        Log.d("AudioRenderingControl", "Getting backend volume: " + iC);
        return new UnsignedIntegerTwoBytes(iC);
    }

    @Override // org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl
    public void setMute(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, boolean z3) throws RenderingControlException {
        a(str);
        Log.d("AudioRenderingControl", "Setting backend mute to: " + z3);
        q.a aVar = this.f3493a;
        AudioManager audioManager = aVar.f3093a;
        if (audioManager != null) {
            audioManager.setStreamMute(aVar.f3094b, z3);
        }
    }

    @Override // org.fourthline.cling.support.renderingcontrol.AbstractAudioRenderingControl
    public void setVolume(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, UnsignedIntegerTwoBytes unsignedIntegerTwoBytes) throws RenderingControlException {
        a(str);
        long jLongValue = unsignedIntegerTwoBytes.getValue().longValue();
        Log.d("AudioRenderingControl", "Setting backend volume to: " + jLongValue);
        this.f3493a.d(this.f3493a.a((int) jLongValue));
    }
}
