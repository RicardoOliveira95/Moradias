/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backend;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import tarefa1.Festival;
import java.util.logging.Logger;
import org.apache.commons.io.*;

public class Tarefa1 {

    /**
     * @param args the command line arguments
     */
    static Logger logger = Logger.getLogger(Tarefa1.class.getName());
    private static void loadDLL(String location) {
    try {
        File dll = new File(location);
        System.load(dll.getAbsolutePath());
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    
    private static void loadJPLDll() {
    try {
        InputStream in = Tarefa1.class.getResourceAsStream("/test/resources/jpl.dll");
        File fileOut = new File("jpl.dll");
        OutputStream out = FileUtils.openOutputStream(fileOut);
        IOUtils.copy(in, out);
        in.close();
        out.close();
        System.load(fileOut.getAbsolutePath());// loading goes here
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    
    public static void main(String[] args) {
        loadJPLDll();
        logger.info(System.getProperty("java.library.path"));
        //load dlls
        loadDLL("C:/Program Files/swipl/bin/libwinpthread-1.dll");
        loadDLL("C:/Program Files/swipl/bin/libgcc_s_seh-1.dll");
        loadDLL("C:/Program Files/swipl/bin/libgmp-10.dll");
        loadDLL("C:/Program Files/swipl/bin/libswipl.dll");    
        loadDLL("C:/Program Files/swipl/bin/json.dll");
        loadDLL("C:/Program Files/swipl/bin/jpl.dll");
    
        Festival festival = new Festival();
        festival.setVisible(true);
    }
    
}
