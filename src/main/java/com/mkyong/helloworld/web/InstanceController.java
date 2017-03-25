package com.mkyong.helloworld.web;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mkyong.helloworld.service.HelloWorldService;
import com.mkyong.helloworld.service.HttpBasicAuthService;
import com.mkyong.helloworld.service.databaseService;

@Controller
public class InstanceController {

	private final Logger logger = LoggerFactory.getLogger(InstanceController.class);
	private final HttpBasicAuthService instanceService;

	@Autowired
	public InstanceController( HttpBasicAuthService instanceService) {
		this.instanceService = instanceService;

	}

	@RequestMapping(value = "/instancetables", method = RequestMethod.GET)
	public String instancetables(Map<String, Object> model) throws IOException,JSONException  {

		//logger.debug("index() is executed!");
		JSONObject user = new JSONObject();
		user.put("username", "admin");
		user.put("password", "a85b08ae92c14d7a");

		//

		JSONObject obj = new JSONObject();
		obj.put("passwordCredentials",user);
		obj.put("tenantName", "admin");
		JSONObject obj2=new JSONObject();
		obj2.put("auth", obj);
		//HttpBasicAuth httpurl=new HttpBasicAuth();
		logger.debug(obj2.toString());
		JSONObject jsonobject=instanceService.appbasicurl("http://119.28.103.63:35357/v2.0/tokens",obj2,"POST");
		logger.debug(jsonobject.get("access").toString());
		JSONObject jsonobject2 = new JSONObject(jsonobject.get("access").toString()); //
		JSONObject jsonobject3=new JSONObject(jsonobject2.get("token").toString());
		JSONObject jsonobject4=new JSONObject(jsonobject3.get("tenant").toString());
		//  System.out.println(jsonobject3.getString("id").toString());
		// JSONObject jo=new JSONObject("{}");
		JSONObject jo2=    instanceService.appbasicurl("http://119.28.103.63:8774/v2.1/"+jsonobject4.getString("id").toString()+"/servers/detail",jsonobject3.getString("id").toString(),"GET");
		//System.out.println(jo2.toString());
		//jo2.getString("Server")
		try{
			File file = new File("/root/spring4-mvc-gradle-xml-hello-world-master/src/main/webapp/resources/core/tables/data1.json");
			file.createNewFile();
			FileWriter writer = new FileWriter("/root/spring4-mvc-gradle-xml-hello-world-master/src/main/webapp/resources/core/tables/data1.json");
			BufferedWriter bw = new BufferedWriter(writer);
			bw.write(jo2.get("servers").toString());

			bw.close();
			writer.close();

		} catch (FileNotFoundException e){
			e.printStackTrace();
		}
		return "instancetables";
	}
	@RequestMapping(value = "/log", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {

		//logger.debug("index() is executed!");

		Connection conn=databaseService.getConnection();
		logger.debug(conn.getClass().getName());
		databaseService.close(conn,null,null);

		return "log";
	}

}