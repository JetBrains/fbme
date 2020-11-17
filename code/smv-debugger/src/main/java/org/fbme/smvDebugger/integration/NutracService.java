package org.fbme.smvDebugger.integration;

import java.nio.file.Path;

import org.fbme.smvDebugger.commons.OS;
import org.fbme.smvDebugger.commons.OSUtils;

public class NutracService extends AbstractIntegrationService {
  public static final String NUTRAC_FILE_EXTENSION = "nutrac";
  private static final String CSV_FILE_EXTENSION = "csv";

  public NutracService(final Path nutracBinaryPath) {
    super(nutracBinaryPath);
  }

  public Path convertToCsv(final Path rawCounterexamplePath) {
    runProcess(rawCounterexamplePath);
    return newPathOf(rawCounterexamplePath, CSV_FILE_EXTENSION);
  }

  @Override
  protected String getCommand(final Path counterexamplePath) {
    if (OSUtils.getOS() == OS.MAC_OS) {
      return MAC_MONO_FRAMEWORK + " " + binaryPath + " " + counterexamplePath;
    }
    return "";
  }
}
