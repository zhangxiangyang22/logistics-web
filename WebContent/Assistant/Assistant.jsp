<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/logistics/css/style.css">
<title>assistant</title>
</head>
<jsp:include page="/top.jsp"/>
<body>
<script src="js/road.js"></script>
<script src="js/number.js"></script>
<table width="785" height="500" border="0" align="center" cellpadding="0" cellspacing="0" class="wenbenkuang">
	<tr>
		<td colspan="2" valign="top">
		 	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		 		<tr>
            		<td width="100%" height="12" valign=top></td>
          		</tr>
          		<tr>
           	 		<td width="100%" height="12" align=center valign=top bgcolor="#339900"> �� �� �� ��</td>
          		</tr>
          		<tr>
            		<td height="12">&nbsp;			</td>
          		</tr>
				<tr>
            		<td height="404" align="center">
						<table width="590" height="372" border="0" cellpadding="0" cellspacing="0">
              				<tr>
                				<td height="20" bgcolor="#efefef">
									<div align="center">���ƺ��������������ѯ</div>							  </td>
              				</tr>
							<tr>
                				<td height="162">
									<div align="center">
										<form name="form10" method="post" action="">
                  						<table width="394" height="84" border="0" cellpadding="0" cellspacing="0">
                    						<tr>
                      							<td width="148" height="30">
													<div align="right">ʡ���С���������</div>
												</td>
                      							<td width="48"><select name="country">
                      							  <option value="��" selected>��</option>
                      							  <option value="��">��</option>
                      							  <option value="��">��</option>
                      							  <option value="��">��</option>
                      							  <option value="��">��</option>
                      							  <option value="��">��</option>
                      							  <option value="��">��</option>
												  <option value="��">��</option>
												  <option value="��">��</option>
												  <option value="��">��</option>
                    							  </select>
</td>
                    						    <td width="84"><div align="right">���ţ�</div></td>
                    						    <td width="114"><select name="city">
                    						      <option value="A" selected>A</option>
                    						      <option value="B">B</option>
                    						      <option value="C">C</option>
                    						      <option value="D">D</option>
                    						      <option value="E">E</option>
                    						      <option value="F">F</option>
                    						      <option value="G">G</option>
                    						      <option value="H">H</option>
                    						      <option value="I">I</option>
                    						      <option value="J">J</option>
                    						      <option value="K">K</option>
                    						      <option value="L">L</option>
                    						      <option value="M">M</option>
                    						      <option value="N">N</option>
                    						      <option value="O">O</option>
                    						      <option value="P">P</option>
                    						      <option value="Q">Q</option>
                    						      <option value="R">R</option>
                    						      <option value="S">S</option>
                    						      <option value="T">T</option>
                    						      <option value="X">X</option>
                    						      <option value="Y">Y</option>
                    						      <option value="Z">Z</option>
                    						      <option value="W">W</option>
                    						      <option value="V">V</option>
                    						      <option value="U">U</option>
                  						            </select></td>
                    						</tr>
                    						<tr>
                      							<td height="25" colspan="4">
													<div align="center">
													  <input name="Submit" type="button"  class=go-wenbenkuang value="   ȷ   ��   " onClick="checkcar()">												
												  </div></td>
                   							</tr>
                    						<tr>
												<td height="29" colspan="4">
													<div align="center">
                        								<input name="answer" type="text" class=wenbenkuang size="40" disabled>
                      								</div>
												</td>
                      						</tr>
                  						</table>
                						</form>
                					</div>
								</td>
              				</tr>
              				<tr>
								<td height="19" bgcolor="#efefef">
							  <div align="center">�������Ӧ�����Ĳ�ѯ</div>							  </td>
              				</tr>
              				<tr>
                				<td>
									<div align="center">
										<form name="form2" method="post" action="">
                  						<table width="347" height="84" border="0" cellpadding="0" cellspacing="0">
                    						<tr>
                      							<td width="147" height="30">
													<div align="right">������������룺</div>
												</td>
                      							<td width="200">
                        							<input type="text" name="textfield3" class=wenbenkuang>
                      							</td>
                    						</tr>
                    						<tr>
                      							<td height="25" colspan="2">
													<div align="center">
														<input type="button" name="Submit2" value="ȷ��"  class=go-wenbenkuang onclick="road();">
														<input type="button" name="Submit3" class=go-wenbenkuang value="�鿴ȫ��" 
														onclick="window.open('road.jsp','','width=540,height=420,toolbar=no,location=no,status=no,menubar=no,scrollbars=yes')">
                        							</div>
												</td>
                      						</tr>
                    						<tr>
                      							<td height="29" colspan="2">
													<div align="center">
                          								<input name="textfield22" type="text" class=wenbenkuang size="50" disabled>
                      								</div>
												</td>
                    						</tr>
                  						</table>
										</form>
                					</div>
								</td>
              				</tr>
           			  </table>
					</td>
		  		</tr>
       	  </table>
		</td>
  	</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
