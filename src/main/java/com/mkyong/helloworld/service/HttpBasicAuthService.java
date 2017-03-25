package com.mkyong.helloworld.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import java.io.OutputStream;

 import java.net.HttpURLConnection;
import java.net.MalformedURLException;

 import java.net.URL;
 import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class HttpBasicAuthService {
 
 //   public static final String ADD_URL = "http://119.28.103.63:35357/v2.0/tokens";
 //   public static final String ADD_URL = "http://192.168.4.97:35357/v2.0/tokens";
    public  JSONObject appbasicurl(String basicurl,JSONObject obj2,String Method) throws IOException, JSONException {
    	HttpURLConnection connection=null;
        try {
             //
             URL url = new URL(basicurl);
             connection = (HttpURLConnection) url.openConnection();
             

             //
             
             connection.setDoOutput(true);
             connection.setDoInput(true);
             connection.setRequestMethod(Method); //
             connection.setUseCaches(false);
             connection.setInstanceFollowRedirects(true);
             
             //
             connection.setRequestProperty("Content-Type","application/json");  //
             //connection.setRequestProperty("Content-Type", "text/xml");   //
             connection.setRequestProperty("Accept","application/json");//
//             connection.setRequestProperty("X-Auth-Token","xx");  //
             connection.connect();
 
             //
             
           /* JSONObject user = new JSONObject();  
            user.put("username", "admin");
            user.put("password", "a85b08ae92c14d7a");*/

            //
            
           /* JSONObject obj = new JSONObject();
             obj.put("passwordCredentials",user);
             obj.put("tenantName", "admin");
             JSONObject obj2=new JSONObject();
             obj2.put("auth", obj);*/
             OutputStream out = connection.getOutputStream();                        
             out.write(obj2.toString().getBytes());
             out.flush();
             out.close();
 
//
             BufferedReader reader = new BufferedReader(new InputStreamReader(
                     connection.getInputStream()));
             String lines;
             StringBuffer sb = new StringBuffer("");
             while ((lines = reader.readLine()) != null) {
                 lines = new String(lines.getBytes(), "utf-8");
                 sb.append(lines);
             }
             JSONObject jsonobject = new JSONObject(sb.toString());  
            /* JSONObject jsonobject2 = new JSONObject(jsonobject.getString("access").toString()); //
             JSONObject jsonobject3=new JSONObject(jsonobject2.getString("token").toString());
             JSONObject jsonobject4=new JSONObject(jsonobject3.getString("tenant").toString());
             System.out.println(jsonobject3.getString("id").toString());
            // JSONObject jo=new JSONObject("{}");
         JSONObject jo2=    appbasicurl("http://119.28.103.63:8774/v2.1/"+jsonobject4.getString("id").toString()+"/servers/detail",jsonobject3.getString("id").toString(),"GET");
             System.out.println(jo2.toString());
             System.out.println(jsonobject4.getString("id").toString());*/
             reader.close();
////
             connection.disconnect();
             return jsonobject;
         } catch (MalformedURLException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         } catch (IOException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
        return null;
 
    }
    
    public  JSONObject appbasicurl(String basicurl,String apitoken,String Method) throws IOException, JSONException {
    	HttpURLConnection connection=null;
        try {
             //
             URL url = new URL(basicurl);
             connection = (HttpURLConnection) url.openConnection();
             

             //
             
             connection.setDoOutput(true);
             connection.setDoInput(true);
             connection.setRequestMethod(Method); //
             connection.setUseCaches(false);
             connection.setInstanceFollowRedirects(true);
             
             //
             connection.setRequestProperty("Content-Type","application/json");  //
             //connection.setRequestProperty("Content-Type", "text/xml");   //
             connection.setRequestProperty("Accept","application/json");//
             connection.setRequestProperty("X-Auth-Token",apitoken);  //
             connection.connect();
 
             //
             
        /*    JSONObject user = new JSONObject();  
            user.put("username", "admin");
            user.put("password", "a85b08ae92c14d7a");

            //
            
            JSONObject obj = new JSONObject();
             obj.put("passwordCredentials",user);
             obj.put("tenantName", "admin");
             JSONObject obj2=new JSONObject();
             obj2.put("auth", obj);*/
           /*  OutputStream out = connection.getOutputStream();                        
             out.write(obj2.toString().getBytes());
             out.flush();
             out.close();*/
 
//
             BufferedReader reader = new BufferedReader(new InputStreamReader(
                     connection.getInputStream()));
             String lines;
             StringBuffer sb = new StringBuffer("");
             while ((lines = reader.readLine()) != null) {
                 lines = new String(lines.getBytes(), "utf-8");
                 sb.append(lines);
             }
             JSONObject jsonobject = new JSONObject(sb.toString());  
             /*JSONObject jsonobject2 = new JSONObject(jsonobject.getString("access").toString()); //
             JSONObject jsonobject3=new JSONObject(jsonobject2.getString("token").toString());
             JSONObject jsonobject4=new JSONObject(jsonobject3.getString("tenant").toString());
             System.out.println(jsonobject3.getString("id").toString());
             System.out.println(jsonobject4.getString("id").toString());*/
            // System.out.println(sb);
             reader.close();
////
             connection.disconnect();
             return jsonobject;
         } catch (MalformedURLException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         } catch (IOException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
           return null;
    }
 
   /* public static void main(String[] args) throws IOException, JSONException {
    	JSONObject user = new JSONObject();
        user.put("username", "admin");
        user.put("password", "a85b08ae92c14d7a");

        //

        JSONObject obj = new JSONObject();
         obj.put("passwordCredentials",user);
         obj.put("tenantName", "admin");
         JSONObject obj2=new JSONObject();
         obj2.put("auth", obj);
         JSONObject jsonobject=appbasicurl("http://119.28.103.63:35357/v2.0/tokens",obj2,"POST");
         JSONObject jsonobject2 = new JSONObject(jsonobject.getString("access").toString()); //
         JSONObject jsonobject3=new JSONObject(jsonobject2.getString("token").toString());
         JSONObject jsonobject4=new JSONObject(jsonobject3.getString("tenant").toString());
         System.out.println(jsonobject3.getString("id").toString());
        // JSONObject jo=new JSONObject("{}");
     JSONObject jo2=    appbasicurl("http://119.28.103.63:8774/v2.1/"+jsonobject4.getString("id").toString()+"/servers/detail",jsonobject3.getString("id").toString(),"GET");
         System.out.println(jo2.toString());
         System.out.println(jsonobject4.getString("id").toString());
     }*/
 
}