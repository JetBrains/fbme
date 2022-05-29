package org.fbme.integration.nxt.importer.network.block;

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;

import java.util.function.Function;

/**
 * This class is used to collect info for creation of new port
 * Also it contains coordinate shifts for new endpoint coordinate
 */
public class PortPathNetworkCoordinates {
    private final Function<FunctionBlockDeclaration, PortPath<?>> portPathFunction;
    private final FunctionBlockDeclaration oldFunctionBlockDeclaration;
    private final int xShift;
    private final int yShift;

    public PortPathNetworkCoordinates(
            Function<FunctionBlockDeclaration, PortPath<?>> portPathFunction,
            FunctionBlockDeclaration oldFunctionBlockDeclaration,
            int xShift,
            int yShift
    ) {
        this.portPathFunction = portPathFunction;
        this.oldFunctionBlockDeclaration = oldFunctionBlockDeclaration;
        this.xShift = xShift;
        this.yShift = yShift;
    }

    public PortPath<?> createPortPath(FunctionBlockDeclaration functionBlockDeclaration) {
        return portPathFunction.apply(functionBlockDeclaration);
    }

    public FunctionBlockDeclaration getOldFunctionBlockDeclaration() {
        return oldFunctionBlockDeclaration;
    }

    public int getXShift() {
        return xShift;
    }

    public int getYShift() {
        return yShift;
    }
}
