package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SystemDeclaration extends NamedDeclaration {

    @NotNull List<ApplicationDeclaration> getApplications();

    @NotNull List<DeviceDeclaration> getDevices();

    @NotNull List<SegmentDeclaration> getSegments();

    @NotNull List<LinkDeclaration> getLinks();

    @NotNull List<MappingDeclaration> getMappings();
}
