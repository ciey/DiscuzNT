<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.showphoto" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2018/2/23 16:59:49.
		本页面代码由Discuz!NT模板引擎生成于 2018/2/23 16:59:49. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n<link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\" /> \r\n<!-- 调用样式表 -->\r\n<link rel=\"stylesheet\" href=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/album.css\" type=\"text/css\" media=\"all\"  />\r\n");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"javascript/template_report.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/template_utils.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/menu.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\"> \r\n	var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n</head>\r\n\r\n<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n<div id=\"container\">\r\n");
	if (headerad!="")
	{

	templateBuilder.Append("\r\n	<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"hd\">\r\n	<div class=\"wrap\">\r\n		<div class=\"head cl\">\r\n			<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/logo.png\" alt=\"Discuz!NT|BBS|论坛\"/></a></h2>\r\n			");
	if (userid==-1)
	{


	if (pagename!="login.aspx"&&pagename!="register.aspx")
	{

	templateBuilder.Append("\r\n			<form onsubmit=\"if ($('ls_username').value == '' || $('ls_username').value == '用户名/Email') showWindow('login', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx');hideWindow('register');return\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx?referer=");
	templateBuilder.Append(pagename.ToString());
	templateBuilder.Append("\" id=\"lsform\" autocomplete=\"off\" method=\"post\">\r\n				<div class=\"fastlg c1\">\r\n					<div class=\"y pns\">\r\n						<p>\r\n							<label for=\"ls_username\">帐号</label> <input type=\"text\" tabindex=\"901\" value=\"用户名/Email\" id=\"ls_username\" name=\"username\" class=\"txt\" onblur=\"if(this.value == '') this.value = '用户名/Email';\" onfocus=\"if(this.value == '用户名/Email') this.value = '';\"/><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"showWindow('register', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx');hideWindow('login');\" style=\"margin-left: 7px;\" class=\"xg2\">注册</a>							\r\n						</p>\r\n						<p>\r\n							<label for=\"ls_password\">密码</label> <input type=\"password\" onfocus=\"lsShowmore();innerVcode();\" tabindex=\"902\" autocomplete=\"off\" id=\"ls_password\" name=\"password\"  class=\"txt\"/>\r\n							&nbsp;<input type=submit style=\"width:0px;filter:alpha(opacity=0);-moz-opacity:0;opacity:0;display:none;\"/><button class=\"pn\" type=\"submit\"><span>登录</span></button>\r\n						</p>\r\n					</div>\r\n				</div>\r\n                <div id=\"ls_more\" style=\"position:absolute;display:none;\">\r\n                <h3 class=\"cl\"><em class=\"y\"><a href=\"###\" class=\"flbc\" title=\"关闭\" onclick=\"closeIsMore();return false;\">关闭</a></em>安全选项</h3>\r\n                ");
	if (isLoginCode)
	{

	templateBuilder.Append("\r\n                <div id=\"vcode_header\"></div>\r\n                <script type=\"text/javascript\" reload=\"1\">\r\n	                if (typeof vcodeimgid == 'undefined'){\r\n	                    var vcodeimgid = 1;\r\n	                }\r\n	                else\r\n	                    vcodeimgid++;\r\n	                function innerVcode() {\r\n	                    if ($('vcodetext1') == null) {\r\n	                        $('vcode_header').innerHTML = '<input name=\"vcodetext\" tabindex=\"903\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:50px;\" id=\"vcodetext' + vcodeimgid + '\" value=\"\" autocomplete=\"off\"/>' +\r\n                                                        '<span><a href=\"###\" onclick=\"vcodeimg' + vcodeimgid + '.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();return false;\" style=\"margin-left: 7px;\">看不清</a></span>' + '<p style=\"margin:6px 0\">输入下图中的字符</p>' +\r\n	                                                    '<div  style=\"cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n	                        optionVcode();\r\n                            }\r\n                        }\r\n                                            \r\n	                 function changevcode(form, value){\r\n		                if (!$('vcode')){\r\n			                var vcode = document.createElement('input');\r\n			                vcode.id = 'vcode';\r\n			                vcode.name = 'vcode';\r\n			                vcode.type = 'hidden';\r\n			                vcode.value = value;\r\n			                form.appendChild(vcode);\r\n		                }else{\r\n			                $('vcode').value = value;\r\n		                }\r\n	                }\r\n                </");
	templateBuilder.Append("script>\r\n                <script type=\"text/javascript\">\r\n                    var secclick = new Array();\r\n                    var seccodefocus = 0;\r\n                    var optionVcode = function (id, type) {\r\n                        id = vcodeimgid;\r\n                        if ($('vcode')) {\r\n                            $('vcode').parentNode.removeChild($('vcode'));\r\n                        }\r\n\r\n                        if (!secclick['vcodetext' + id]) {\r\n                            if ($('vcodetext' + id) != null)\r\n                                $('vcodetext' + id).value = '';\r\n                            secclick['vcodetext' + id] = 1;\r\n                            if (type)\r\n                                $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n                        }\r\n                        $('vcodetext' + id + '_menu').style.display = '';\r\n                        $('vcodetext' + id).unselectable = 'off';\r\n                        $('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n                    }\r\n                </");
	templateBuilder.Append("script>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <script type=\"text/javascript\">\r\n                        function innerVcode() {\r\n                        }\r\n                        function optionVcode() {\r\n                        }\r\n                    </");
	templateBuilder.Append("script>\r\n                ");
	}	//end if


	if (config.Secques==1)
	{

	templateBuilder.Append("\r\n			    <div id=\"floatlayout_login\" class=\"pbm\">\r\n					<select style=\"width:156px;margin-bottom:8px;\" id=\"question\" name=\"question\" selecti=\"5\" name=\"question\" onchange=\"displayAnswer();\" tabindex=\"904\">\r\n						<option id=\"question\" value=\"0\" selected=\"selected\">安全提问(未设置请忽略)</option>\r\n						<option id=\"question\" value=\"1\">母亲的名字</option>\r\n						<option id=\"question\" value=\"2\">爷爷的名字</option>\r\n						<option id=\"question\" value=\"3\">父亲出生的城市</option>\r\n						<option id=\"question\" value=\"4\">您其中一位老师的名字</option>\r\n						<option id=\"question\" value=\"5\">您个人计算机的型号</option>\r\n						<option id=\"question\" value=\"6\">您最喜欢的餐馆名称</option>\r\n						<option id=\"question\" value=\"7\">驾驶执照的最后四位数字</option>\r\n					</select>\r\n					<input type=\"text\" tabindex=\"905\" class=\"txt\" size=\"20\" autocomplete=\"off\" style=\"width:140px;display:none;\"  id=\"answer\" name=\"answer\"/>\r\n		        </div>\r\n                ");
	}	//end if

	templateBuilder.Append("\r\n                <script type=\"text/javascript\">\r\n                    function closeIsMore() {\r\n                        $('ls_more').style.display = 'none';\r\n                    }\r\n                    function displayAnswer() {\r\n                        $('answer').style.display = '';\r\n						$('answer').focus();\r\n                    }\r\n                </");
	templateBuilder.Append("script>\r\n				<div class=\"ptm cl\" style=\"border-top:1px dashed #CDCDCD;\">\r\n					<a class=\"y xg2\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("getpassword.aspx\" onclick=\"hideWindow('register');hideWindow('login');showWindow('getpassword', this.href);\">找回密码</a>\r\n					<label class=\"z\" for=\"ls_cookietime\"><input type=\"checkbox\" tabindex=\"906\" value=\"2592000\" id=\"ls_cookietime\" name=\"expires\" checked=\"checked\" tabindex=\"906\">记住密码</label>\r\n				</div>\r\n            </div>\r\n			</form>\r\n            ");
	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n			<div id=\"um\">\r\n				<div class=\"avt y\"><a alt=\"用户名称\" target=\"_blank\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\"><img src=\"");
	templateBuilder.Append(useravatar.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/noavatar_small.gif';\" /></a></div>\r\n				<p>\r\n					<strong><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("userinfo.aspx?userid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\" class=\"vwmy\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a></strong><span class=\"xg1\">在线</span><span class=\"pipe\">|</span>\r\n					<a id=\"pm_ntc\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\" title=\"");
	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("您有");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新短消息");
	}
	else
	{

	templateBuilder.Append("您没有新短消息");
	}	//end if

	templateBuilder.Append("\">短消息</a><span class=\"pipe\">|</span>\r\n					<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" title=\"");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("您有");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("条新通知");
	}
	else
	{

	templateBuilder.Append("您没有新通知");
	}	//end if

	templateBuilder.Append("\">通知");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("(");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append(")");
	}	//end if

	templateBuilder.Append("</a><span class=\"pipe\">|</span>\r\n					<a id=\"usercenter\" class=\"drop\" onmouseover=\"showMenu(this.id);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\">用户中心</a>\r\n				");
	if (config.Regstatus==2||config.Regstatus==3)
	{


	if (userid>0)
	{

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("invite.aspx\">邀请</a>\r\n					");
	}	//end if


	}	//end if


	if (useradminid==1)
	{

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("admin/index.aspx\" target=\"_blank\">系统设置</a>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n				</p>\r\n				");
	templateBuilder.Append(userinfotips.ToString());
	templateBuilder.Append("\r\n			</div> \r\n			");
	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("\r\n            <div id=\"pm_ntc_menu\" class=\"g_up\">\r\n				<div class=\"mncr\"></div>\r\n				<div class=\"crly\">\r\n					<div style=\"clear:both;font-size:0;\"></div>\r\n					<span class=\"y\"><a onclick=\"javascript:$('pm_ntc_menu').style.display='none';\" href=\"javascript:;\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/delete.gif\" alt=\"关闭\"/></a></span>\r\n					<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\">您有");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新消息</a>\r\n				</div>\r\n            </div>\r\n            <script type=\"text/javascript\">setMenuPosition('pm_ntc', 'pm_ntc_menu', '43');</");
	templateBuilder.Append("script>\r\n            ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</div>\r\n		<div id=\"menubar\">\r\n		");
	if (userid!=-1)
	{

	templateBuilder.Append("\r\n			<a onMouseOver=\"showMenu(this.id, false);\" href=\"javascript:void(0);\" id=\"mymenu\">我的中心</a>\r\n            <div class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n			<ul class=\"sel_my\">\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest&searchsubmit=1\">我的精华</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n			");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n				<li class=\"myspace\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n			");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n				<li class=\"myalbum\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n            </ul>\r\n            </div>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n			<ul id=\"menu\" class=\"cl\">\r\n				");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>");

	templateBuilder.Append("\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");

	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n	<div id=\"enablealbum\" class=\"right\">\r\n		<a href=\"showphotolist.aspx?type=2\">最新图片</a>\r\n		<a href=\"showphotolist.aspx?type=1\">最多评论</a>\r\n		<a href=\"showphotolist.aspx?type=3\" class=\"notabs\">最多收藏</a>\r\n	</div> \r\n");
	}	//end if



	templateBuilder.Append("\r\n		<a href=\"");
	templateBuilder.Append(config.Albumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("首页</a> &raquo;\r\n		");
	if (photo!=null)
	{

	templateBuilder.Append("\r\n		<a href=\"showalbumlist.aspx?cate=");
	templateBuilder.Append(albumcategory.Albumcateid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(albumcategory.Title.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <strong>");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("</strong></a>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n</div>\r\n");
	if (page_err==0)
	{


	if (ispost)
	{


	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>相册提示信息</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner\">\r\n			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	if (pagename=="showalbumlist.aspx")
	{

	templateBuilder.Append(" <a href=\"usercpspacemanagealbum.aspx?albumid=-1\">创建新相册</a>");
	}	//end if

	templateBuilder.Append("</p>\r\n			");
	if (msgbox_url!="")
	{

	templateBuilder.Append("\r\n			<p><a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>");


	}
	else
	{

	templateBuilder.Append("\r\n	<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n	<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n	<script type=\"text/javascript\">\r\n		var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n	</");
	templateBuilder.Append("script>\r\n	<script type=\"text/javascript\" src=\"javascript/template_showphoto.js\"></");
	templateBuilder.Append("script>\r\n<div class=\"wrap\" style=\"overflow:visible;\">\r\n	");
	if (!needpassword)
	{

	templateBuilder.Append("\r\n	<div class=\"modulebox\">\r\n		<h2>\r\n		<cite>\r\n<!--		");
	if (config.Silverlight==1)
	{

	templateBuilder.Append("\r\n		<a id=\"silverlightalbum\" target=\"_blank\" title=\"Silverlight相册展示\" href=\"silverlight/album/index.html?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">Silverlight酷炫体验</a>&nbsp;\r\n		");
	}	//end if

	templateBuilder.Append("-->\r\n		<a title=\"幻灯片播放\" href=\"javascript:void(0);\" onclick=\"pptPhoto();\">幻灯展示</a>&nbsp;<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">+ 更多</a></cite>\r\n		");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("</h2>\r\n		<div class=\"scrollphoto\">\r\n		<ul>\r\n			<li id=\"scrollleft\" style='cursor: pointer;\"' onclick=\"scrollHiddenDiv($('photonav'), -90);\"><img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/images/scrollarrowleft.jpg' alt='向左移动' />\r\n			</li>\r\n			<li style=\"width: 810px;\"><div style='position:relative;'><div class='photonavbar' id=\"photonav\" style='overflow: hidden;width:810px;'>加载导航图，请稍候...</div></div>\r\n			</li>\r\n			<li id=\"scrollright\" style='cursor: pointer;\"' onclick=\"scrollHiddenDiv($('photonav'), 90);\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/images/scrollarrowright.jpg\" alt=\"向右移动\" />\r\n			</li>\r\n		</ul>\r\n		</div>\r\n		<script type=\"text/javascript\">shownavbar(");
	templateBuilder.Append(photo.Albumid.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n		<div class=\"photoshowBox\">\r\n			<div class=\"boxbody\">\r\n				<div class=\"Photo\" style=\"margin: 10px 20px;\">\r\n					<div class=\"photo_info\">\r\n						");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n						<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(photo.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(photo.Username.ToString().Trim());
	templateBuilder.Append("的空间</a>\r\n						");
	}	//end if

	templateBuilder.Append("\r\n						<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(photo.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(photo.Username.ToString().Trim());
	templateBuilder.Append("的相册</a>\r\n						大小:\r\n						<script type=\"text/javascript\">\r\n							ShowFormatBytesStr(");
	templateBuilder.Append(photo.Filesize.ToString().Trim());
	templateBuilder.Append(");\r\n						</");
	templateBuilder.Append("script>\r\n						上传时间: ");
	templateBuilder.Append(photo.Postdate.ToString().Trim());
	templateBuilder.Append("\r\n						浏览量: ");
	templateBuilder.Append(photo.Views.ToString().Trim());
	templateBuilder.Append("\r\n						评论数: ");
	templateBuilder.Append(comments.Count.ToString().Trim());
	templateBuilder.Append("\r\n					</div>\r\n					<div class=\"photo_pic\" style=\"width:685px\">\r\n						<a id=\"nextImgOnPhoto\" href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=next\" alt=\"点击图片查看下一张\" title=\"点击图片查看下一张\">\r\n						<img border=\"0\" name=\"bannerPhotoADrotator\" style=\"FILTER: revealTrans(duration=2,transition=20); max-height: 550px;max-width:685px;\" onload=\"resizePhoto(this);\" alt=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" id=\"bannerPhotoADrotator\" title=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append(photo.Filename.ToString().Trim());
	templateBuilder.Append("\" />\r\n						</a>\r\n					</div>\r\n					<div id=\"stopPhotobutton\" style=\"display: none;\">\r\n						<input type=\"button\" name=\"stop\" value=\"停止播放\" onClick=\"stopPhoto();\" />\r\n					</div>\r\n				</div>\r\n				<div class=\"page_box\">\r\n					<div class=\"page_left\"><a id=\"prevImg\" href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=prev\">上一张</a>第 <span id=\"photoIndex\"><em>1</em>/1</span> 张<a id=\"nextImg\" href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=next\">下一张</a></div>\r\n				");
	if (userid!=-1)
	{

	templateBuilder.Append("\r\n					<div class=\"page_right\">\r\n					<script type=\"text/javascript\">\r\n						enableinfo = '<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/images/buttonreport.gif\" alt=\"举报此图片\" />';\r\n						show_report_button(\"<img src=templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/images/reportfinish.gif alt=已经举报此图片 />\");\r\n						enableinfo = '<span class=\"commenreport\">举报<span>';\r\n					</");
	templateBuilder.Append("script>\r\n					</div>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n				</div>\r\n				<div class=\"photo_des\">");
	templateBuilder.Append(photo.Description.ToString().Trim());
	templateBuilder.Append("</div>\r\n				");
	if (editable || comments.Count>0)
	{

	templateBuilder.Append("\r\n				<p class=\"commentstitle\"><a name=\"comments\"></a>\r\n					");
	if (editable)
	{

	templateBuilder.Append("\r\n						<form id=\"commentform\" name=\"commentform\" method=\"post\" action=\"\"><input name=\"delcommentid\" type=\"hidden\" /></form>\r\n						<script type=\"text/javascript\">\r\n						function del_comment(cid)\r\n						{\r\n							if (confirm('确定要删除吗?'))\r\n							{\r\n								var form = $(\"commentform\");\r\n								form.delcommentid.value = cid;\r\n								form.submit();\r\n							}\r\n							return false;\r\n						}\r\n						</");
	templateBuilder.Append("script>\r\n					");
	}	//end if


	if (photo.Comments>0)
	{

	templateBuilder.Append("\r\n					评论 (");
	templateBuilder.Append(photo.Comments.ToString().Trim());
	templateBuilder.Append(")\r\n					");
	}	//end if

	templateBuilder.Append("\r\n				</p>\r\n				");
	}	//end if

	int rowindex = 1;
	

	int comment__loop__id=0;
	foreach(PhotoCommentInfo comment in comments)
	{
		comment__loop__id++;

	templateBuilder.Append("\r\n				<div class=\"");
	if (rowindex%2==0)
	{

	templateBuilder.Append("reviewbox2");
	}
	else
	{

	templateBuilder.Append("reviewbox");
	}	//end if

	templateBuilder.Append("\">\r\n					<div class=\"reviewboxleft\">");
	templateBuilder.Append(rowindex.ToString());
	templateBuilder.Append(".</div>\r\n					<p>");
	templateBuilder.Append(comment.Content.ToString().Trim());
	templateBuilder.Append("</p>\r\n					<div class=\"reviewwriterbox\">\r\n						<div class=\"ReviewManager\">");
	if (comment.Userid!=-1)
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(comment.Userid);
	
	templateBuilder.Append("\r\n						<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(comment.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n						");
	}
	else
	{
	templateBuilder.Append(comment.Username.ToString().Trim());
	}	//end if

	templateBuilder.Append("      ");
	templateBuilder.Append(comment.Postdatetime.ToString().Trim());
	templateBuilder.Append("</div>\r\n						<em>\r\n							");
	if (userid!=-1)
	{

	templateBuilder.Append("\r\n								<script type=\"text/javascript\">\r\n									show_report_button('<span class=reportfinish>已举报</span>');\r\n								</");
	templateBuilder.Append("script>\r\n							");
	}	//end if


	if (editable)
	{

	templateBuilder.Append("\r\n							<a id=\"e");
	templateBuilder.Append(comment.Commentid.ToString().Trim());
	templateBuilder.Append("\" title=\"删除此评论\" onclick=\"del_comment(");
	templateBuilder.Append(comment.Commentid.ToString().Trim());
	templateBuilder.Append(");\" href=\"###\" class=\"commenddelete\">删除</a></em>\r\n						");
	}	//end if

	templateBuilder.Append("\r\n						</em>\r\n					</div>\r\n				</div>\r\n				");	 rowindex = rowindex+1;
	

	}	//end loop


	if (commentable)
	{

	templateBuilder.Append("\r\n				<script type=\"text/javascript\">\r\n				function validate(form)\r\n				{\r\n					if (form.message.value == \"\")\r\n					{\r\n						alert(\"请输入评论内容\");\r\n						return false;\r\n					}\r\n					if(form.message.value.length > 2000) {\r\n						alert(\"评论最多2000字\");\r\n						return false;\r\n					}\r\n				}\r\n				</");
	templateBuilder.Append("script>							\r\n				<form method=\"post\" id=\"postform\" onsubmit=\"return validate(this);\">\r\n					<h3><a name=\"reply\"></a>发表评论</h3>\r\n					<p>\r\n						<textarea id=\"message\" tabindex=\"1\" name=\"message\" style=\"width: 400px;\" onKeyDown=\"ctlent(event,false);\" rows=\"8\" class=\"txtarea\"></textarea><br />\r\n					</p>\r\n					<p>						\r\n						<input tabindex=\"2\" id=\"postsubmit\" name=\"post_comment\" class=\"lightbutton\" value=\"提交\" type=\"submit\">[完成后可按 Ctrl+Enter 发布]\r\n						<input tabindex=\"3\" id=\"sendnotice\" name=\"sendnotice\" type=\"checkbox\" ");
	if (album.Userid==userid)
	{

	templateBuilder.Append("disabled");
	}	//end if

	templateBuilder.Append(">发送评论通知\r\n					</p>								\r\n				</form>\r\n			");
	}
	else
	{

	templateBuilder.Append("\r\n			<div class=\"error_info\">\r\n				此图片禁止评论 或 登录用户才可评论\r\n			</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n		</div>\r\n		<div class=\"boxright\">\r\n			<h3>一周热图总排行</h3>\r\n			<ul>\r\n				");
	int weekhotphoto__loop__id=0;
	foreach(PhotoInfo weekhotphoto in weekhotphotolist)
	{
		weekhotphoto__loop__id++;


	if (weekhotphoto.Title!="")
	{

	templateBuilder.Append("\r\n					<li><a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(weekhotphoto.Photoid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Title.ToString().Trim());
	templateBuilder.Append("</a> (<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(weekhotphoto.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Username.ToString().Trim());
	templateBuilder.Append("</a>)</li>\r\n					");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			</ul>\r\n			<h3 style=\"background:transparent ; padding-left: 0;\">标签</h3>\r\n			<ul id=\"tagcontainer\">正在加载...</ul>\r\n			<script type=\"text/javascript\">showTags(");
	templateBuilder.Append(photoid.ToString());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n		</div>\r\n		</div>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n		<div class=\"modulebox\">\r\n			<div class=\"forumtitle\">\r\n				<h2>此相册已被设置密码</h2>\r\n			</div>\r\n			<div class=\"forumpassword\">\r\n				<form id=\"enteralbum\" name=\"enteralbum\" method=\"post\" action=\"\">\r\n						<label for=\"password\">请输入密码:</label><input name=\"albumpassword\" type=\"password\" id=\"albumpassword\" size=\"20\" class=\"colorblue\" onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" />\r\n						<p><input type=\"submit\"  value=\"确定\" class=\"lightbutton\"/></p>\r\n				</form>\r\n			</div>\r\n		</div>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n	");
	}	//end if


	}
	else
	{


	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n			<p class=\"errorback\">\r\n				<script type=\"text/javascript\">\r\n				if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n				{\r\n					document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n				}\r\n				</");
	templateBuilder.Append("script>\r\n				<a href=\"forumindex.aspx\">论坛首页</a>\r\n				");
	if (usergroupid==7)
	{

	templateBuilder.Append("\r\n				 &nbsp; &nbsp|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>");


	}	//end if

	templateBuilder.Append("\r\n</div>\r\n");

	if (infloat!=1)
	{


	if (pagename=="website.aspx")
	{

	templateBuilder.Append("    \r\n       <div id=\"websitebottomad\"></div>\r\n");
	}
	else if (footerad!="")
	{

	templateBuilder.Append(" \r\n     <div id=\"ad_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>   \r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"footer\">\r\n	<div class=\"wrap\"  id=\"wp\">\r\n		<div id=\"footlinks\">\r\n			<p><a href=\"");
	templateBuilder.Append(config.Weburl.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append("</a> - ");
	templateBuilder.Append(config.Linktext.ToString().Trim());
	templateBuilder.Append(" - <a target=\"_blank\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("stats.aspx\">统计</a> - ");
	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>");
	}	//end if

	templateBuilder.Append("\r\n			");
	templateBuilder.Append(config.Statcode.ToString().Trim());
	templateBuilder.Append(config.Icp.ToString().Trim());
	templateBuilder.Append("\r\n			</p>\r\n			<div>\r\n				<a href=\"http://www.comsenz.com/\" target=\"_blank\">Comsenz Technology Ltd</a>\r\n				- <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("archiver/index.aspx\" target=\"_blank\">简洁版本</a>\r\n			");
	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n				- <span id=\"styleswitcher\" class=\"drop\" onmouseover=\"showMenu({'ctrlid':this.id, 'pos':'21'})\" onclick=\"window.location.href='");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtemplate.aspx'\">界面风格</span>\r\n				");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n		</div>\r\n		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/discuznt_logo.gif\"/></a>\r\n		<p id=\"copyright\">\r\n			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT\">Discuz!NT</a></strong> <em class=\"f_bold\">3.6.711</em>\r\n			");
	if (config.Licensed==1)
	{

	templateBuilder.Append("\r\n				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n			");
	}	//end if

	templateBuilder.Append("\r\n				");
	templateBuilder.Append(config.Forumcopyright.ToString().Trim());
	templateBuilder.Append("\r\n		</p>\r\n		<p id=\"debuginfo\" class=\"grayfont\">\r\n		");
	if (config.Debug!=0)
	{

	templateBuilder.Append("\r\n			Processed in ");
	templateBuilder.Append(this.Processtime.ToString().Trim());
	templateBuilder.Append(" second(s)\r\n			");
	if (isguestcachepage==1)
	{

	templateBuilder.Append("\r\n				(Cached).\r\n			");
	}
	else if (querycount>1)
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" queries.\r\n			");
	}
	else
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n			");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</p>\r\n	</div>\r\n</div>\r\n<a id=\"scrolltop\" href=\"javascript:;\" style=\"display:none;\" class=\"scrolltop\" onclick=\"setScrollToTop(this.id);\">TOP</a>\r\n<ul id=\"usercenter_menu\" class=\"p_pop\" style=\"display:none;\">\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx\">个人资料</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnewpassword.aspx\">更改密码</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\">用户组</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">收藏夹</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpcreditspay.aspx\">积分</a></li>\r\n</ul>\r\n\r\n");
	int prentid__loop__id=0;
	foreach(string prentid in mainnavigationhassub)
	{
		prentid__loop__id++;

	templateBuilder.Append("\r\n<ul class=\"p_pop\" id=\"menu_");
	templateBuilder.Append(prentid.ToString());
	templateBuilder.Append("_menu\" style=\"display: none\">\r\n");
	int subnav__loop__id=0;
	foreach(DataRow subnav in subnavigation.Rows)
	{
		subnav__loop__id++;

	bool isoutput = false;
	

	if (subnav["parentid"].ToString().Trim()==prentid)
	{


	if (subnav["level"].ToString().Trim()=="0")
	{

	 isoutput = true;
	

	}
	else
	{


	if (subnav["level"].ToString().Trim()=="1" && userid!=-1)
	{

	 isoutput = true;
	

	}
	else
	{

	bool leveluseradmindi = true;
	
	 leveluseradmindi = (useradminid==3 || useradminid==1 || useradminid==2);
	

	if (subnav["level"].ToString().Trim()=="2" &&  leveluseradmindi)
	{

	 isoutput = true;
	

	}	//end if


	if (subnav["level"].ToString().Trim()=="3" && useradminid==1)
	{

	 isoutput = true;
	

	}	//end if


	}	//end if


	}	//end if


	}	//end if


	if (isoutput)
	{


	if (subnav["id"].ToString().Trim()=="11" || subnav["id"].ToString().Trim()=="12")
	{


	if (config.Statstatus==1)
	{

	templateBuilder.Append("\r\n	" + subnav["nav"].ToString().Trim() + "\r\n        ");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="18")
	{


	if (config.Oltimespan>0)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="24")
	{


	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="25")
	{


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="26")
	{


	if (config.Enablemall>=1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n   	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n</ul>\r\n");
	}	//end loop


	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n	<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n	");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n	</ul>\r\n	");
	}	//end if


	}	//end if




	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
