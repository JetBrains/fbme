package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.RootElement;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SystemDeclaration extends Declaration, RootElement {

    @NotNull List<ApplicationDeclaration> getApplications();

    @NotNull List<DeviceDeclaration> getDevices();

    @NotNull List<SegmentDeclaration> getSegments();

    @NotNull List<Link> getLinks();

    @NotNull List<Mapping> getMappings();
}
