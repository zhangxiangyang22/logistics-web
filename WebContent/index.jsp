<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<table width="786" height="1143"  border="0" align="center" cellpadding="0" cellspacing="0" background="image/main.gif">
  <tr align="left" valign="top">
    <td height="146" colspan="3"><jsp:include page="/top.jsp"/></td>
  </tr>
  <tr>
    <td width="215" height="905" align="left" valign="top"><table width="100%" height="415"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" align="left" valign="top"> 
	
	
		<form method="POST" action="/logistics/login_config.jsp" name="form_u">
		<table width="100%" height="172"  border="0" cellpadding="0" cellspacing="0">
      <tr>
            <td width="94%" height="37">&nbsp;</td>
            <td width="6%">&nbsp;</td>
          </tr> 
		   
          <tr>
            <td height="26" align="center" valign="bottom"><p>用户名
                <input name="name" type="text" size="16" maxlength="20">
			    </p>
              </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="30" align="center">密码 &nbsp;
                <input type="password" name="password" size="16" maxlength="20"></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="61" align="center" valign="middle"><p>
              <input type="submit" value="登录" name="login" onClick="return check1()"> 
			   &nbsp;<input type="reset" value="重置">
            </p>
              <p>                 <a href="/logistics/register.jsp">新注册</a>
            &nbsp;<a href="/logistics/found.jsp">找回密码</a></p></td>
            <td>&nbsp;</td>
          </tr>
        </table> 
		</form>

<table width="100%" height="172"  border="0" cellpadding="0" cellspacing="0">
<tr>
            <td width="94%" height="37">&nbsp;<p>您好，欢迎您来访 </p>	</td>
            <td width="6%">&nbsp;</td>
          </tr> 
 </table>

		</td>
      </tr>
      <tr>
        <td height="129" valign="top">
		  <table width="100%" height="64"  border="0" cellpadding="0" cellspacing="0">
		  <form method="POST" action="/logistics/Search/search.jsp" name="form1">
            <tr>
              <td width="32%" height="32">&nbsp;信息查询:</td>
              <td width="68%"> <input type="text" name="text" value="关键字"maxLength="20" size="8"> </td>
            </tr>
            <tr>
              <td>&nbsp;关键字:</td>
              <td><select size="1" name="style">
            <option value="db_CarMessage" selected>车辆信息</option>
            <option value="db_GoodsMeg">货物信息</option>
            <option value="tb_Enterprise">企业信息</option>
            </select>    
            <input type="submit" value="查询" name="B1"> </td>
            </tr>
			</form>
          </table>
		</td>
      </tr>
      <tr>
        <td height="134">&nbsp;</td>
      </tr>
    </table></td>
    <td width="354" valign="top"><table width="101%" height="896"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="299" valign="top">
          <table width="100%" height="302"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="34">&nbsp;</td>
            </tr>
            <tr>
              <td height="226" valign="top">
                <table width="100%" height="226" border="0" cellpadding="0" cellspacing="0">
                  
                  <tr>
                    <td width="13%" align="center">&nbsp;</td>
                    <td width="87%" height="13" align="center">&nbsp; </td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="10" align="left"> <a href="/logistics/Goods/Goods_xiangxi.jsp?id=1">
					<u></u></a>
                      </td>
                  </tr>
   
              </table></td>
            </tr>
            <tr>
              <td height="14" align="right"><a href="/logistics/Goods/Goods_show.jsp">&nbsp;>>>更多信息&nbsp;</a></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="295" valign="top"><table width="100%" height="292"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="25" valign="middle" background="image/car.gif">&nbsp;</td>
          </tr>
          <tr>
            <td height="226" align="left" valign="top"><table width="100%" height="226" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="12%" align="center">&nbsp;</td>
                  <td width="88%" height="13" align="center">&nbsp; </td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="10" align="left"><a href="/logistics/Cars/CarMessageshow.jsp?id=1"><u>
				  </u> </a>
                   </td>
                </tr>
               
            </table></td>
          </tr>
          <tr>
            <td height="39" align="right" valign="middle"> <a href="/logistics/Cars/CarMessage.jsp">>>>更多信息&nbsp;</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="294" align="left" valign="top"><table width="100%" height="294"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="27" background="image/enterprise.gif">&nbsp;</td>
            </tr>
            <tr>
              <td height="226" valign="top">
                <table border="0" width="100%" height="226">
                  <tr>
                    <td width="11%" align="center">&nbsp;</td>
                    <td width="89%" height="13" align="left">&nbsp; </td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="9" align="left"> <a href="/logistics/Enterprise/enterpriseShow.jsp?id=1"> <u>
					  </u></a>                     </td>
                  </tr>
                  
              </table></td>
            </tr>
            <tr>
              <td height="39" align="right"><a href="/logistics/Enterprise/enterprise.jsp">>>>更多信息&nbsp;</a></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="217" valign="top"><table width="100%" height="618"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="303" valign="top"><table width="100%" height="303"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="27">&nbsp;</td>
          </tr>
          <tr>
            <td height="13" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td height="226" align="left" valign="top">	  <table width="216" height="46" border="0" cellpadding="0" cellspacing="0">
	
      </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td valign="top"><table width="100%" height="311"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="5%" height="32">&nbsp;</td>
            <td width="95%" height="32">&nbsp;</td>
          </tr>
          <tr>
            <td height="279">&nbsp;</td>
            <td align="center" valign="top"><table width="97%" height="269"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="18" align="center">&nbsp;</td>
              </tr>
              <tr>
                <td height="61" align="center"><img src="image/image02.jpg"></td>
              </tr>
              <tr>
                <td height="63" align="center"><img src="image/image01.jpg"></td>
              </tr>
              <tr>
                <td height="52" align="center"><img src="image/image04.jpg"></td>
              </tr>
              <tr>
                <td height="62" align="center" ><img src="image/image05.jpg"></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
   <tr align="center" valign="middle">
     <td height="23" colspan="3"><a href="mailto:客户服务中心信箱：mingrisoft@mingrisoft.com">客户服务中心信箱：mingrisoft@mingrisoft.com</a>&nbsp; 客户服务中心热线直播：0431－4972266 </td>
   </tr>
   <tr align="center" valign="middle">
     <td height="23" colspan="3">公司名称：吉林省明日科技有限公司&nbsp; 邮政编码：130000</td>
   </tr>
   <tr align="center" valign="middle">
     <td height="23" colspan="3">Copyright 2006 明日科技</td>
   </tr>
   <tr align="center" valign="middle">
    <td height="23" colspan="3">Storm&nbsp; <a href="/logistics/Manager/Login/mlogin.jsp">系统管理</a></td>
  </tr>
</table>
