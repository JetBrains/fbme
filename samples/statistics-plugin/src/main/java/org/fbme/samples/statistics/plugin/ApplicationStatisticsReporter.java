package org.fbme.samples.statistics.plugin;

import jetbrains.mps.messages.IMessageHandler;
import jetbrains.mps.messages.Message;
import jetbrains.mps.messages.MessageKind;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.samples.statistics.ApplicationStatistics;
import org.jetbrains.mps.openapi.model.SNode;

public final class ApplicationStatisticsReporter {

    private final PlatformRepository platformRepository;

    private ApplicationStatisticsReporter(PlatformRepository platformRepository) {
        this.platformRepository = platformRepository;
    }

    public void report(SNode node, IMessageHandler messageHandler) {
        ApplicationDeclaration declaration = platformRepository.getAdapter(node, ApplicationDeclaration.class);
        if (declaration != null) {
            new ApplicationStatistics(
                    declaration,
                    string -> messageHandler.handle(new Message(MessageKind.INFORMATION, string))
            ).traceApplication();
        }
    }
}
