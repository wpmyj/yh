﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qtxx.aspx.cs" Inherits="YongShuiGuanLiV2.gcssgl.qtxx" %>

<%@ Register src="../UC/qd.ascx" tagname="qd" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<style type="text/css">
.style1
{
	border-width:1px;
	background-color:#EDF7FB;
	}
</style>
<body>
    <form id="form1" runat="server">
    <table borderColor="#7ab4ff" cellSpacing="0" cellPadding="0" width="100%" border="1">
				<tr>
					<td>
							<table cellSpacing="0" cellPadding="0" width="100%">
								<tr class="title">
									<td align="center" colSpan="2"><label style="font-size: 15px; font-weight: bold;">其他建筑物信息查询</label></td>
								</tr>
							</table>
							<table width="100%">
								<tr>
									<td colSpan="3">查询条件:</td>
								</tr>
								<tr>
									<td style="width:50%">
										<uc1:qd ID="qd1" runat="server" />
									</td>
								
									<td align="left"><asp:button id="query" runat="server" Text="查询" 
                                            onclick="query_Click"></asp:button></td>
								</tr>
							</table>
							
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
								<tr>
									<td align="left">数据显示：
									</td>
								</tr>
								<tr>
					<td width="100%"><asp:datagrid id="DataGrid1" runat="server" Width="100%" 
                                            AllowSorting="True" HorizontalAlign="Center"
										AllowPaging="True" PageSize="15" AutoGenerateColumns="False" 
                                         CellPadding="4" BackColor="White" onitemcommand="DataGrid1_ItemCommand" 
                                            onpageindexchanged="DataGrid1_PageIndexChanged" BorderColor="#DEDFDE" 
                                            BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="Vertical">
										
											<AlternatingItemStyle BackColor="White" />
                                            <ItemStyle BackColor="#F7F7DE" />
							<Columns>
								<asp:ButtonColumn Text="查询" HeaderText="操作区" CommandName="select">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="8%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:ButtonColumn>
								<asp:BoundColumn Visible="False" DataField="id"></asp:BoundColumn>
								<asp:BoundColumn DataField="建筑物名称" HeaderText="建筑物名称">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="16%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="所属渠道" HeaderText="所属渠道">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="16%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="建筑物主要参数" HeaderText="建筑物主要参数">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="12%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="桩号" HeaderText="桩号">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="12%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								
								<asp:BoundColumn DataField="管理单位" HeaderText="管理单位">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="12%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="建设时间" HeaderText="建设时间">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="12%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="运行状况" HeaderText="运行状况">
								<HeaderStyle Font-Bold="True" Wrap="False" Width="12%"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
							</Columns>
							<FooterStyle BackColor="#CCCC99" />
                                            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
											<PagerStyle NextPageText="下一页" Font-Size="12px" Font-Names="宋体" Font-Bold="True" PrevPageText="上一页"
												HorizontalAlign="Right"></PagerStyle>
										    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
						</asp:datagrid></td>
				</tr>
	
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td>
						<HR width="100%" color="#84d7ff" SIZE="2">
					</td>
				</tr>
			</table>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td>详细信息：
					</td>
				</tr>
			</table>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0" style="height:110px">
				
					<tr class="style1">
						<td width="50%">建筑物名称：<asp:label id="jzwmc" runat="server" Width="35%"></asp:label></td>
						<td>所属渠道：<asp:label id="ssqd" runat="server" Width="35%"></asp:label></td>
					</tr>
					<tr>
						<td width="50%">建筑物主要参数：<asp:label id="jzwcs" runat="server" Width="35%"></asp:label></td>
						<td>桩号：<asp:label id="zh" runat="server" Width="35%"></asp:label></td>
					</tr>
					<tr class="style1">
						<td width="50%">地理位置：<asp:label id="dlwz" runat="server" Width="35%"></asp:label></td>
						<td>管理单位：<asp:label id="gldw" runat="server" Width="35%"></asp:label></td>
					</tr>
					<tr>
						<td width="50%">建设时间：<asp:label id="jssj" runat="server" Width="35%"></asp:label></td>
						<td>运行状况：<asp:label id="yxzk" runat="server" Width="35%"></asp:label></td>
					</tr>
					<tr class="style1">
						<td width="50%">备注说明：<asp:label id="bzsm" runat="server" Width="75%"></asp:label></td>
						<td></td>
					</tr>
				
			</table>
    </form>
</body>
</html>
