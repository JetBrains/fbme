package org.fbme.integration.nxt.importer;

import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.FBNetworkConverter;
import org.jdom.Attribute;
import org.jdom.DataConversionException;
import org.jdom.Element;

import java.util.List;
import java.util.stream.Collectors;

public class FBNetworkNxtImporter extends FBNetworkConverter {
  private final FBNetwork myNetwork;

  public FBNetworkNxtImporter(ConverterArguments arguments, FBNetwork network) {
    super(arguments, network);
    myNetwork = network;
  }

  @Override
  protected ConnectionPath extractConnectionPath(Element connectionElement) {
    Attribute dx1Attribute = connectionElement.getAttribute("dx1");
    Attribute dyAttribute = connectionElement.getAttribute("dy");
    Attribute dx2Attribute = connectionElement.getAttribute("dx2");
    Element pointElement = connectionElement.getChild("Points");
    try {
      if (dx1Attribute != null && dyAttribute != null && dx2Attribute != null) {
        return new ConnectionPath((int) dx1Attribute.getFloatValue(), (int) dyAttribute.getFloatValue(), (int) dx1Attribute.getFloatValue());
      }
      if (dx1Attribute != null) {
        return new ConnectionPath((int) dx1Attribute.getFloatValue());
      }
      if (pointElement != null) {
        return buildPointsConnectionPath(pointElement);
      }
      return new ConnectionPath();
    } catch (DataConversionException e) {
      return new ConnectionPath();
    }
  }

  private static class Point {
    int x;
    int y;

    Point(int x, int y) {
      this.x = x;
      this.y = y;
    }
  }

  private ConnectionPath buildPointsConnectionPath(Element pointElement) {
    List<Element> pointElements = pointElement.getChildren("Points");
    List<Point> pointList = pointElements.stream().map(e -> new Point((int) Double.parseDouble(e.getChild("X").getValue()), (int) Double.parseDouble(e.getChild("Y").getValue()))).collect(Collectors.toList());
    if (pointList.size() < 2) {
      return new ConnectionPath();
    }
    Point firstPoint = pointList.get(0);
    Point lastPoint = pointList.get(pointList.size() - 1);
    if (firstPoint.x < lastPoint.x) {
      return new ConnectionPath((lastPoint.x - firstPoint.x) / 2);
    } else {
      int maxX = -1, minX = lastPoint.x, maxY = -1, minY = Math.min(firstPoint.y, lastPoint.y);
      for (Point point : pointList) {
        maxX = Math.max(maxX, point.x);
        minX = Math.min(minX, point.x);
        maxY = Math.max(maxY, point.y);
        minY = Math.min(minY, point.y);
      }
      int dy;
      if (firstPoint.y > lastPoint.y) {
        if (maxY - firstPoint.y > lastPoint.y - minY) {
          dy = maxY - firstPoint.y;
        } else {
          dy = -(lastPoint.y - minY);
        }
      } else {
        if (maxY - lastPoint.y > firstPoint.y - minY) {
          dy = maxY - lastPoint.y;
        } else {
          dy = -(firstPoint.y - minY);
        }
      }
      return new ConnectionPath(maxX - firstPoint.x, dy, lastPoint.x - minX);
    }
  }
}
