package org.fbme.lib.iec61499.ecc;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.st.expressions.Expression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ECTransitionCondition extends Element {

    @NotNull CompositeReference<PortPath<EventDeclaration>> getEventReference();

    @Nullable Expression getGuardCondition();

    void setGuardCondition(@NotNull Expression condition);
}
