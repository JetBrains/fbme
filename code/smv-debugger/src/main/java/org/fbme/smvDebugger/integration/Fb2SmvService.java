package org.fbme.smvDebugger.integration;

import java.nio.file.Path;

import org.fbme.smvDebugger.commons.OS;
import org.fbme.smvDebugger.commons.OSUtils;

public class Fb2SmvService extends AbstractIntegrationService {
  private static final String SMV_FILE_EXTENSION = "smv";

  public Fb2SmvService(final Path fb2SmvBinaryPath) {
    super(fb2SmvBinaryPath);
  }

  public Path convertFbToSmv(final Path fbPath) {
    runProcess(fbPath);
    return newPathOf(fbPath, SMV_FILE_EXTENSION);
  }

  @Override
  protected String getCommand(final Path fbPath) {
    if (OSUtils.getOS() == OS.MAC_OS) {
      return MAC_MONO_FRAMEWORK + " " + binaryPath + " " + fbPath;
    }
    return binaryPath + " " + fbPath;
  }
}
