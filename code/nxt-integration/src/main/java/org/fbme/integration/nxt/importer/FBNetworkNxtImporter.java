package org.fbme.integration.nxt.importer;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.EndpointCoordinate;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.FBNetworkConverter;
import org.jdom.Attribute;
import org.jdom.DataConversionException;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import java.awt.Point;
import java.util.List;
import java.util.stream.Collectors;

public class FBNetworkNxtImporter extends FBNetworkConverter {
    private final FBNetwork myNetwork;
    private final IEC61499Factory factory;

    public FBNetworkNxtImporter(ConverterArguments arguments, FBNetwork network) {
        super(arguments, network);
        myNetwork = network;
        factory = getFactory();
    }

    @Override
    protected void extractEndpointCoordinates(@NotNull List<EndpointCoordinate> endpointCoordinates) {
        Element element = getElement();
        if (element == null) {
            return;
        }

        List<Element> externalInputs = element.getChildren("Input");
        List<Element> externalOutputs = element.getChildren("Output");

        if (externalInputs.size() == 0 && externalOutputs.size() == 0) {
            super.extractEndpointCoordinates(endpointCoordinates);
            return;
        }

        for (Element externalInput : externalInputs) {
            endpointCoordinates.add(convertEndpointCoordinate(externalInput));
        }
        for (Element externalOutput : externalOutputs) {
            endpointCoordinates.add(convertEndpointCoordinate(externalOutput));
        }
    }

    @Override
    @NotNull
    protected ConnectionPath extractConnectionPath(Element connectionElement) {
        Attribute dx1Attribute = connectionElement.getAttribute("dx1");
        Attribute dyAttribute = connectionElement.getAttribute("dy");
        Attribute dx2Attribute = connectionElement.getAttribute("dx2");
        ConnectionPath.Kind kind = ConnectionPath.Kind.Straight;
        int dx1 = 0, dy = 0, dx2 = 0;
        try {
            if (dx1Attribute != null && dyAttribute != null && dx2Attribute != null) {
                kind = ConnectionPath.Kind.FourAngles;
                dx1 = (int) dx1Attribute.getFloatValue();
                dy = (int) dyAttribute.getFloatValue();
                dx2 = (int) dx2Attribute.getFloatValue();
            } else if (dx1Attribute != null) {
                kind = ConnectionPath.Kind.TwoAngles;
                dx1 = (int) dx1Attribute.getFloatValue();
            }
            List<Point> pointList = getPointList(connectionElement);
            if (pointList != null) {
                return new LongConnectionPath(
                        dx1,
                        dy,
                        dx2,
                        pointList
                );
            }
            return new ConnectionPath(kind, dx1, dy, dx2);
        } catch (DataConversionException e) {
            return new ConnectionPath();
        }
    }

    private EndpointCoordinate convertEndpointCoordinate(Element element) {
        String name = element.getAttributeValue("Name");
        EndpointCoordinate endpointCoordinate = factory.createEndpointCoordinate();
        endpointCoordinate.getPortReference().setFQName(name);

        String x, y;
        Element position = element.getChild("Position");
        double upscaleCoef = 1.0;
        if (position != null) {
            x = position.getChild("X").getValue();
            y = position.getChild("Y").getValue();
            upscaleCoef = 4.0;
        } else {
            x = element.getAttributeValue("x");
            y = element.getAttributeValue("y");
        }

        endpointCoordinate.setX(x != null ? (int) (Double.parseDouble(x) * upscaleCoef) : 0);
        endpointCoordinate.setY(y != null ? (int) (Double.parseDouble(y) * upscaleCoef) : 0);
        return endpointCoordinate;
    }

    private List<Point> getPointList(Element connectionElement) {
        double upscaleCoef = 4.0;
        Element pointElement = connectionElement.getChild("Points");
        if (pointElement != null) {
            List<Element> pointElements = pointElement.getChildren("Points");
            List<Point> pointList = pointElements
                    .stream()
                    .map(e -> new Point((int) (Double.parseDouble(e.getChild("X").getValue()) * upscaleCoef),
                            (int) (Double.parseDouble(e.getChild("Y").getValue()) * upscaleCoef)))
                    .collect(Collectors.toList());
            return pointList.subList(1, pointList.size() - 1);
        }
        pointElement = connectionElement.getChild("BendPoints");
        if (pointElement != null) {
            List<Element> pointElements = pointElement.getChildren("BendPoint");
            return pointElements
                    .stream()
                    .map(e -> new Point((int) (Double.parseDouble(e.getAttributeValue("x"))),
                            (int) (Double.parseDouble(e.getAttributeValue("y")))))
                    .collect(Collectors.toList());
        }
        return null;
    }
}
