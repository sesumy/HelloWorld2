<%@page import="Models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Models.UrunModel" %>
    <%@page import="Models.SatisModel" %>
    <%@page import="Models.UserModel" %>
    <%@page import="DAO.UserDAO" %>
    <%@page import="DAO.UrunDAO" %>
    <%@page import="DAO.SatisDAO" %>
    <%@page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<p>User Listesi </p>
<% ArrayList<UserModel> users=UserDAO.tumKullaniciGetir(); %>
<%for(UserModel user:users) { %>
				<p>"userId: "<%=user.getUserId()%>"Password: "<%=user.getPassword()%></p>
				<%} %>

<p>Urun Listesi </p>
<% ArrayList<UrunModel> urun=UrunDAO.tumUrunleriGetir(); %>
<%for(UrunModel uruns:urun) { %>
				<p>"Urun ID: "<%=uruns.getUrunId()%>"Urun AD: "<%=uruns.getUrunAd()%>"Urun A�IKLAMA: "<%= uruns.getUrunAciklama()%>"Urun FIYAT: "<%=uruns.getFiyat()%></p>
				<%} %>
				
<p>Satis Listesi </p>
<% ArrayList<SatisModel> satis=SatisDAO.tumSatisGetir(); %>
<%for(SatisModel satislar:satis) { %>
				<p>"Satis ID: "<%=satislar.getUrunId()%>
				"User ID: "<%=satislar.getUserId()%>
				"Tarih: "<%= satislar.getSatisTarih()%>
				"Urun Adet: "<%=satislar.getSatisAdet()%></p>
				<%} %>

</body>
</html>