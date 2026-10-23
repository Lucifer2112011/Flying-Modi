package com.idk.util;

import com.idk.core.GameObject;
import com.idk.core.ObjectModifier;
import com.idk.core.Scene;
import com.idk.core.SceneInterface;
import java.io.File;
import java.io.FileOutputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes2.dex */
public class XmlUtils {
    public static void toXML(Scene scene, File file) throws Exception {
        DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
        Document doc = docBuilder.newDocument();
        Element elementCreateElement = doc.createElement("scene");
        Element list_interface = doc.createElement("interface");
        for (SceneInterface sceneInterface : scene.getInterfaceArray()) {
            list_interface.appendChild(doc.createElement(sceneInterface.getClass().getName()));
        }
        elementCreateElement.appendChild(list_interface);
        Element objects = doc.createElement("objects");
        GameObject[] objectArray = scene.getObjectArray();
        int length = objectArray.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                GameObject gameObject = objectArray[i2];
                Element element = doc.createElement(gameObject.name);
                element.setAttribute("ac", String.valueOf(gameObject.active));
                element.setAttribute("p", gameObject.transform.position.x + ":" + gameObject.transform.position.y);
                element.setAttribute("s", gameObject.transform.scale.x + ":" + gameObject.transform.scale.y);
                element.setAttribute("a", "" + gameObject.transform.angle);
                Element modifiers = doc.createElement("modifiers");
                for (ObjectModifier modifier : gameObject.getModifierArray()) {
                    Element element1 = doc.createElement(modifier.getClass().getName());
                    modifiers.appendChild(element1);
                }
                element.appendChild(modifiers);
                objects.appendChild(element);
                i = i2 + 1;
            } else {
                elementCreateElement.appendChild(objects);
                DOMSource source = new DOMSource(elementCreateElement);
                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                transformer.setOutputProperty("indent", "yes");
                transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
                transformer.transform(source, new StreamResult(new FileOutputStream(file)));
                return;
            }
        }
    }
}
