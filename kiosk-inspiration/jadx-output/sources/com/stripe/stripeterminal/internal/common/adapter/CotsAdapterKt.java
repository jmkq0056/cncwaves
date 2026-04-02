package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.aidlservice.CotsUxConfig;
import com.stripe.stripeterminal.external.models.TapToPayUxConfiguration;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0002¨\u0006\u0005"}, d2 = {"toProto", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "adapter_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CotsAdapterKt {
    private static final CotsUxConfig.ColorOverride toProto(TapToPayUxConfiguration.Color color) {
        if (Intrinsics.areEqual(color, TapToPayUxConfiguration.Color.Default.INSTANCE)) {
            return null;
        }
        if (color instanceof TapToPayUxConfiguration.Color.Resource) {
            return new CotsUxConfig.ColorOverride(Integer.valueOf(((TapToPayUxConfiguration.Color.Resource) color).getResId()), null, null, 6, null);
        }
        if (color instanceof TapToPayUxConfiguration.Color.Value) {
            return new CotsUxConfig.ColorOverride(null, Integer.valueOf(((TapToPayUxConfiguration.Color.Value) color).getColor()), null, 5, null);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final CotsUxConfig toProto(TapToPayUxConfiguration tapToPayUxConfiguration) {
        CotsUxConfig.TapZoneOverride tapZoneOverride;
        CotsUxConfig.PositionOverride positionOverride;
        Intrinsics.checkNotNullParameter(tapToPayUxConfiguration, "<this>");
        TapToPayUxConfiguration.TapZone tapZone = tapToPayUxConfiguration.getTapZone();
        if (tapZone instanceof TapToPayUxConfiguration.TapZone.Manual) {
            TapToPayUxConfiguration.TapZone.Manual manual = (TapToPayUxConfiguration.TapZone.Manual) tapZone;
            CotsUxConfig.Indicator indicatorValueOf = CotsUxConfig.Indicator.valueOf(manual.getIndicator().name());
            TapToPayUxConfiguration.TapZonePosition position = manual.getPosition();
            if (Intrinsics.areEqual(position, TapToPayUxConfiguration.TapZonePosition.Default.INSTANCE)) {
                positionOverride = null;
            } else {
                if (!(position instanceof TapToPayUxConfiguration.TapZonePosition.Manual)) {
                    throw new NoWhenBranchMatchedException();
                }
                TapToPayUxConfiguration.TapZonePosition.Manual manual2 = (TapToPayUxConfiguration.TapZonePosition.Manual) position;
                positionOverride = new CotsUxConfig.PositionOverride(manual2.getXBias(), manual2.getYBias(), null, 4, null);
            }
            tapZoneOverride = new CotsUxConfig.TapZoneOverride(indicatorValueOf, positionOverride, null, 4, null);
        } else {
            if (!Intrinsics.areEqual(tapZone, TapToPayUxConfiguration.TapZone.Default.INSTANCE)) {
                throw new NoWhenBranchMatchedException();
            }
            tapZoneOverride = null;
        }
        return new CotsUxConfig(tapZoneOverride, new CotsUxConfig.ColorScheme(toProto(tapToPayUxConfiguration.getColors().getPrimary()), toProto(tapToPayUxConfiguration.getColors().getError()), toProto(tapToPayUxConfiguration.getColors().getSuccess()), null, 8, null), CotsUxConfig.DarkMode.valueOf(tapToPayUxConfiguration.getDarkMode().name()), null, 8, null);
    }
}
