<%@ page import="com.bis.commonclasses.security.BISEncoder" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.*"%>
<%@page import="org.json.*"%>



<%
	String contextPath = request.getContextPath();

	response.setContentType("application/json");

	String log1="";
	String Key="";
	String Country="";
	String Location="";
	

    if (request.getMethod().equalsIgnoreCase("POST") || request.getMethod().equalsIgnoreCase("GET")) {
		if (request.getParameter("Key") != null)
		    Key = request.getParameter("Key").toString();
		log1 = ";Key " + Key;
		
		if (request.getParameter("Country") != null)
		   Country = request.getParameter("Country").toString();
		log1 = log1+ ";Country" + Country;
		
		if (request.getParameter("Location") != null)
		    Location = request.getParameter("Location").toString();
		log1 =log1+  ";Location " + Location;
		//out.println(Country);
		//out.println(Location);
    }

    Scanner sc = new Scanner(new File("C:\\ADAPTV11_DEV\\ADAPTV11-JBOSS\\DEPLOY\\adaptv11.ear\\adaptv11.war\\template\\view_templates\\STANDARD\\US\\json_zip.json"));
	List<String> lines = new ArrayList<String>();
	while (sc.hasNextLine()) {
  		lines.add(sc.nextLine());
	}

	String[] arr = lines.toArray(new String[0]);
	String loc = "";
	int length = arr.length;
	for(int i = 0; i < length; i++) {
		loc = arr[i];
		//out.println(i+": "+loc.indexOf(" + Location + "));
		if(loc.indexOf(Location)>-1) {
			out.println( loc);
			break;
		}
	}
 


%>
