<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Defaultraro.aspx.vb" Inherits="Sistema_VB_Backup._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema</title>
        <style type="text/css"> 
            #form1
            {
            width: 767px;
            height: 886px;
            margin: auto auto;
            margin-top: auto;
            margin-bottom: auto;
            }
            .auto-style1 {
                width: 400px;
            }
            .auto-style2 {
                margin-bottom: 0px;
            }
            .auto-style4 {
                width: 112px;
            }
            .auto-style5 {
                width: 113px;
            }
            .auto-style10 {
                margin-left: 0px;
            }
            .auto-style11 {
                width: 278px;
            }
            .auto-style12 {
                width: 272px;
            }
            .auto-style13 {
                width: 758px;
                height: 53px;
            }
            .auto-style14 {
                width: 761px;
            }
            .auto-style15 {
                width: 759px;
            }
            .auto-style16 {
                width: 763px;
                height: 43px;
            }
            .auto-style19 {
                height: 24px;
                width: 286px;
            }
            .auto-style20 {
                width: 100%;
            }
            .auto-style22 {
                width: 274px;
            }
            .auto-style23 {
                height: 20px;
            }
            .auto-style24 {
                width: 290px;
            }
            .auto-style25 {
                width: 272px;
                height: 62px;
            }
            .auto-style26 {
                width: 290px;
                height: 62px;
            }
            .auto-style27 {
                height: 62px;
            }
            .auto-style29 {
                height: 42px;
            }
            .auto-style30 {
                height: 29px;
            }
            .auto-style31 {
                height: 23px;
            }
            .auto-style32 {
                height: 24px;
            }
            .auto-style33 {
                height: 30px;
            }
            .auto-style34 {
                height: 28px;
            }
            .auto-style38 {
                height: 44px;
                width: 378px;
            }
            .auto-style40 {
                width: 100%;
                height: 411px;
            }
            .auto-style42 {
                height: 24px;
                width: 378px;
            }
            .auto-style45 {
                height: 44px;
            }
            .auto-style46 {
                width: 288px;
            }
            .auto-style48 {
                width: 378px;
            }
            .auto-style50 {
                width: 378px;
                height: 7px;
            }
            .auto-style51 {
                height: 7px;
            }
            .auto-style53 {
                width: 378px;
                height: 16px;
            }
            .auto-style54 {
                height: 16px;
            }
            .auto-style56 {
                width: 100%;
                height: 351px;
            }
            .auto-style58 {
                margin-bottom: 0px;
                height: 62px;
                width: 563px;
            }
            .auto-style61 {
                margin-bottom: 0px;
                height: 35px;
                width: 563px;
            }
            .auto-style63 {
                height: 35px;
            }
            .auto-style64 {
                width: 758px;
                height: 24px;
            }
            .auto-style66 {
                margin-left: 0px;
                margin-top: 0px;
            }
            .auto-style67 {
                width: 100%;
                height: 526px;
                margin-right: 0px;
            }
            .auto-style68 {
                width: 417px;
                height: 524px;
            }
            .auto-style69 {
                width: 100%;
                height: 503px;
            }
            .auto-style72 {
                width: 117px;
            }
            .auto-style73 {
                height: 92px;
            }
            .auto-style74 {
                height: 524px;
            }
            .auto-style75 {
                width: 237px;
            }
            .auto-style76 {
                margin-bottom: 0px;
                height: 7px;
                width: 563px;
            }
            .auto-style77 {
                width: 117px;
                height: 66px;
            }
            .auto-style79 {
                width: 117px;
                height: 63px;
            }
            .auto-style82 {
                height: 63px;
                width: 111px;
            }
            .auto-style83 {
                height: 66px;
                width: 111px;
            }
            .auto-style84 {
                margin-left: 40px;
            }
            .auto-style86 {
                width: 111px;
            }
            .auto-style87 {
                margin-right: 0px;
            }
            .auto-style88 {
                width: 117px;
                height: 46px;
            }
            .auto-style89 {
                width: 111px;
                height: 46px;
            }
            .auto-style90 {
                height: 43px;
            }
            .auto-style91 {
                width: 759px;
                height: 203px;
            }
            .auto-style92 {
                margin-top: 0px;
            }
            .auto-style93 {
                height: 87px;
                width: 37px;
            }
            .auto-style94 {
                height: 605px;
                width: 765px;
            }
            .auto-style96 {
                height: 87px;
                width: 116px;
            }
            .auto-style98 {
                height: 87px;
                width: 572px;
            }
            .auto-style100 {
                width: 37px;
            }
            .auto-style102 {
                width: 100%;
                height: 730px;
            }
            .auto-style103 {
                width: 218px;
                height: 111px;
            }
            .auto-style104 {
                height: 111px;
            }
            .auto-style105 {
                width: 218px;
            }
            .auto-style106 {
                margin-top: 54px;
            }
            .auto-style107 {
                width: 100%;
                height: 352px;
            }
            .auto-style110 {
                width: 100%;
                height: 131px;
            }
            .auto-style111 {
                margin-left: 11px;
            }
            .auto-style112 {
                width: 809px;
            }
            .auto-style113 {
                width: 100%;
                height: 594px;
            }
            .auto-style120 {
                width: 264px;
            }
            .auto-style121 {
                width: 229px;
            }
            .auto-style122 {
                width: 264px;
                height: 120px;
            }
            .auto-style123 {
                width: 229px;
                height: 120px;
            }
            .auto-style124 {
                height: 120px;
            }
            .auto-style125 {
                width: 264px;
                height: 169px;
            }
            .auto-style126 {
                width: 229px;
                height: 169px;
            }
            .auto-style127 {
                height: 169px;
            }
            .auto-style128 {
                height: 29px;
                width: 148px;
            }
            .auto-style129 {
                height: 29px;
                width: 229px;
            }
            .auto-style131 {
                width: 292px;
            }
            .auto-style132 {
                width: 100%;
                height: 88px;
            }
            .auto-style133 {
                width: 100%;
                height: 151px;
                margin-top: 0px;
            }
            .auto-style136 {
                width: 181px;
                height: 23px;
            }
            .auto-style137 {
                width: 341px;
                height: 23px;
            }
            .auto-style138 {
                width: 341px;
            }
            .auto-style139 {
                width: 181px;
            }
            .auto-style141 {
                width: 177px;
                height: 59px;
            }
            .auto-style143 {
                width: 170px;
                height: 59px;
            }
            .auto-style144 {
                width: 572px;
            }
            .auto-style145 {
                width: 108%;
                height: 61px;
            }
            .auto-style146 {
                width: 164px;
            }
            .auto-style147 {
                width: 177px;
            }
            .auto-style148 {
                height: 59px;
            }
            .auto-style149 {
                width: 95%;
                height: 507px;
            }
            .auto-style150 {
                width: 116px;
            }
            .auto-style151 {
                width: 100%;
                height: 172px;
            }
            .auto-style152 {
                width: 100%;
                height: 171px;
            }
            .auto-style153 {
                width: 117px;
                height: 42px;
            }
            .auto-style154 {
                width: 111px;
                height: 42px;
            }
            </style>
</head>
<body bgcolor="#F5F5F5">
    <form id="form1" runat="server">
        <asp:Panel ID="pPortada" BorderStyle="Solid" runat="server" Height="144px" Width="767px" BorderColor="Black">
            <asp:ImageButton ID="bPortada" runat="server"
            ImageAlign="Middle" ImageUrl="~/imagenes/portada1.png" OnClick="bPortada_Click" Width="767px" Height="147px" /> 
        </asp:Panel>
        <asp:Panel ID="pLogin" BorderStyle="Solid" runat="server" Height="600px"
            Font-Bluetea ="True" ForeColor="#372C57"
            Width="767px" Font-Size="Large">
            <table class="auto-style20">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Fonst-Size="Large"
                            ForeColor="#999999" Text="Versión"></asp:Label>
                    </td> 
                </tr> 
                <tr> 
                    <td align="center" class="auto-style33">
                        <asp:Label ID="label1104" runat="server" Font-Bold="True" Font-Size="X-Large"
                        Text="Bienvenido Al Login de AfterTech!"></asp:Label>
                    </td>
                </tr> 
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <table class="auto-style132">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1106" runat="server" Text="Usuario:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tUsuario" runat="server" ForeColor="Black" MaxLength="10" BackColor="White" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1105" runat="server" Text="Clave:"></asp:Label>
                                </td>
                                <td class="auto-style75">
                                    <asp:TextBox ID="tClave" runat="server" ForeColor="Black" MaxLength="10" TextMode="Password" BackColor="White" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
                                </td>
                                <td>

                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageAlign="Middle" ImageUrl="~/imagenes/entrar1.png" Width="158px"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="auto-style56">
                <tr>
                    <td align="center" class="auto-style76">
                        <asp:Label ID="lErrorLoguin" runat="server" Text="Label" Visible="False" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style58">
                        <table class="auto-style110">
                            <tr>
                                <td class="auto-style131">
                                    <asp:ImageButton ID="bRegistrarse" runat="server" CssClass="auto-style111" Height="66px" imageurl="~/imagenes/registrateaqui1.png" Width="174px" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="bRecuperarClave" runat="server" Height="60px" ImageAlign="Middle" ImageUrl="~/imagenes/ReenviarClave.png" Width="200px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="Label1119" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Small" ForeColor="Maroon" Text="Olvidaste tu Contraseña? No te preocupes. Pone tu nombre de usuario en la casilla usuario y apreta el boton Reenviar Clave. A la brevedad te vamos a estar enviando un correo de recuperacion!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style61">
                        <asp:Label ID="lReenviarClave" runat="server" Text="Label" Visible="False" ForeColor="#009933"></asp:Label>
                    </td>
                    <td class="auto-style63"></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="pRegistrarse" BorderStyle="Solid" runat="server" Height="950px" BorderColor="Black" ForeColor="#372C57" Font-Size="Large" style="margin-right: 0px" Visible="false" Width="767px">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:image runat="server" ID="iTituloRegistrarte" ImageUrl="~/imagenes/registrarsetitulo.png" Visible="False" CssClass="auto-style10" Height="91px" Width="613px"></asp:image></td>
                </tr>
                <tr>
                    <td>Para poder registrarte debés ser mayor de 18 años, residir en Argentina y contar con documento válido en Argentina que acredite tu identidad.
                        <br />
                        Sólo se puede hacer un registro por documento. Los datos deben ser reales, correctos y vigentes.
                        <br />
                        Todos los datos a continuación (menos Origen) son obligatorios:
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            <table class="auto-style20">
                <tr>
                    <td class="auto-style4">Tu/s Nombre/s:</td>
                    <td>
                        <asp:TextBox ID="tNombreU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="20" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lENombreU" runat="server" ForeColor="Red" Text="lENombreU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Apellido/s:</td>
                    <td>
                        <asp:TextBox ID="tApellidoU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="20" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEApellidoU" runat="server" ForeColor="Red" Text="lEApellidoU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tipo Doc.:</td>
                    <td>
                        <asp:DropDownList ID="dTDocU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" Height="28px" Width="280px">
                            <asp:ListItem Value="DNI">Doc. Nacional de Identidad</asp:ListItem>
                            <asp:ListItem Value="LC">Libreta Cívica</asp:ListItem>
                            <asp:ListItem Value="LE">Libreta de Enrolamiento</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">N° de Doc. (sin puntos ni espacios):</td>
                    <td>
                        <asp:TextBox ID="tDocU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="8" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEDocU" runat="server" ForeColor="Red" Text="lEDocU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Fecha Nac.: (ddmmaa)</td>
                    <td>
                        <asp:TextBox ID="tF_Nac" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="6" Width="120px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                        <asp:Label ID="lEdad" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lEFNac" runat="server" ForeColor="Red" Text="lEFNac"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email válido para notificaciones:</td>
                    <td>
                        <asp:TextBox ID="tEmailU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="70" Rows="2" TextMode="MultiLine" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEEmailU" runat="server" ForeColor="Red" Text="lEEmailU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Provincia:</td>
                    <td>
                        <asp:DropDownList ID="didProvU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" Height="28px" Width="280px">
                            <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                            <asp:ListItem Value="2">Catamarca</asp:ListItem>
                            <asp:ListItem Value="3">Chaco</asp:ListItem>
                            <asp:ListItem Value="4">Chubut</asp:ListItem>
                            <asp:ListItem Value="5">CABA</asp:ListItem>
                            <asp:ListItem Value="6">Córdoba</asp:ListItem>
                            <asp:ListItem Value="7">Corrientes</asp:ListItem>
                            <asp:ListItem Value="8">Entre Ríos</asp:ListItem>
                            <asp:ListItem Value="9">Formosa</asp:ListItem>
                            <asp:ListItem Value="10">Jujuy</asp:ListItem>
                            <asp:ListItem Value="11">La Pampa</asp:ListItem>
                            <asp:ListItem Value="12">La Rioja</asp:ListItem>
                            <asp:ListItem Value="13">Mendoza</asp:ListItem>
                            <asp:ListItem Value="14">Misiones</asp:ListItem>
                            <asp:ListItem Value="15">Neuquén</asp:ListItem>
                            <asp:ListItem Value="16">Río Negro</asp:ListItem>
                            <asp:ListItem Value="17">Salta</asp:ListItem>
                            <asp:ListItem Value="18">San Juan</asp:ListItem>
                            <asp:ListItem Value="19">San Luis</asp:ListItem>
                            <asp:ListItem Value="20">Santa Cruz</asp:ListItem>
                            <asp:ListItem Value="21">Santa Fe</asp:ListItem>
                            <asp:ListItem Value="22">Santiago del Estero</asp:ListItem>
                            <asp:ListItem Value="23">Tucumán</asp:ListItem>
                            <asp:ListItem Value="24">Tierra del Fuego</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Localidad:</td>
                    <td>
                        <asp:TextBox ID="tLocalidadU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lELocalidadU" runat="server" ForeColor="Red" Text="lELocalidadU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Dirección:</td>
                    <td>
                        <asp:TextBox ID="tDireccionU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="100" Rows="2" TextMode="MultiLine" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEDireccionU" runat="server" ForeColor="Red" Text="lEDireccionU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Teléfono (agregue característica):</td>
                    <td>
                        <asp:TextBox ID="tTelefonosU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lETelefonosU" runat="server" ForeColor="Red" Text="lETelefonosU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Usuario:</td>
                    <td>
                        <asp:TextBox ID="tUsuarioU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" Width="200px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEUsuarioU" runat="server" ForeColor="Red" Text="lEUsuarioU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Clave</td>
                    <td>
                        <asp:TextBox ID="tPassU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEPassU" runat="server" ForeColor="Red" Text="lEPassU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Repetir Clave:</td>
                    <td>
                        <asp:TextBox ID="tPass2U" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px" BorderColor="#660033" BorderStyle="Solid"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEPass2U" runat="server" ForeColor="Red" Text="lEPass2U"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lErroresU" runat="server" ForeColor="Red" Text="lErroresU"></asp:Label>
                    </td>
                </tr>
            </table>
            
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="bRegistraseU" ImageUrl="~/imagenes/registrarse2.png" runat="server" Height="45px" Width="197px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="bRegistrarseU0" ImageUrl="~/imagenes/cancelaryvolver1.png" runat="server" Height="45px" />
                    </td>
                </tr>
            </table>
            
        </asp:Panel>

        <asp:Panel ID="pBienvenido" BorderStyle="Solid" runat="server" Height="275px" BorderColor="Black" ForeColor="#372C57" Font-Size="Large" Visible="false" Width="767px">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lBienvenido" runat="server" Font-Bold="True" Font-Size="Larger" Text="Bienvenido/a !!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Bienvenido a la familia de AfterTech. Tus problemas ahora son los nuestros!<br /> Nos alegra que confies en nosotros para poder brindarte soluciones a tu alcance y a tu bolsillo. Cualquier duda o consulta puedes comunicarte con la parte del Staff.<br />
                        <br />
                        <br />
                        Gracias. El equipo de &quot;AfterTechAR&quot;.</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="bTodook" ImageUrl="~/imagenes/todook.png" runat="server" />
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
        
        <asp:Panel ID="pAreaUsuario"  runat="server" Height="600px" Width="767px" Visible="False" ForeColor="#372C57" BorderColor="Black" BorderStyle="Solid">
            <table class="auto-style20">
                <tr>
                    <td align="center" class="auto-style15">
                        <asp:Label ID="lBienvenidoAreaU" runat="server" Font-Bold="True" Font-Names="CityBlueprint" Font-Size="XX-Large" Text="Bienvenido/a !!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15">
                        <asp:ImageButton ID="bAhoraQueHago" ImageUrl="~/imagenes/help.png" runat="server" Height="70px" Width="325px"/>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15">
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style27">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="bHacerPedido" runat="server" Height="41px" ImageUrl="~/imagenes/hacerpedido.png" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bControlUsuario" runat="server" Height="73px" ImageUrl="~/imagenes/ADMcontrol.png" Width="322px" />
                        <table class="auto-style91">
                            <tr>
                                <td align="center" class="auto-style13">
                                    <br />
                                    <br />
                                    &nbsp;<asp:ImageButton ID="bModificarDatos" runat="server" Height="51px" ImageUrl="~/imagenes/modificardatos.png" />
                                    &nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style13">
                                    <br />
                                    <asp:ImageButton ID="bVerHistorico" runat="server" Height="41px" ImageUrl="~/imagenes/vertodosmov.png" Visible="False" />
                                    <br />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style64">
                                    <br />
                                    <asp:ImageButton ID="bVolverLoginU1" runat="server" Height="51px" ImageUrl="~/imagenes/terminarvolver.png" Width="266px" />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
         <asp:Panel ID="pAhoraQueHago"  runat="server" Height="300px" Width="767px" Visible="False" ForeColor="#372C57" BorderColor="Black" BorderStyle="Solid">
             <table class="auto-style152">
                 <tr>
                     <td align="center">
                         <asp:Label ID="Label107" runat="server" Text="Ante cualquier duda o consulta sea por el uso de la aplicacion o algun producto o servicio. Quedamos a tu disposicion. Numero de linea:1110101010. Mail de contacto: AfterTechar@gmail.com"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td align="center">
                         <asp:Label ID="Label108" runat="server" Text="Por el momento la aplicacion cuenta con un sistema de ventas, pronto adicionaremos un sistema de gestion de servicios. Ya que AfterTech no solo cuenta con productos de alta calidad, si no que tambien cuenta con servicio. Desde Servicio Tecnico personalizado, tutorias programadas para volverte un genio de la computacion. Toda la tecnologia y el conocimiento al alcance de tu mano."></asp:Label>
                     </td>
                 </tr>
             </table>
             <table class="auto-style151">
                 <tr>
                     <td align="center" class="auto-style15">
                         <asp:ImageButton ID="bVolverLoginU2" runat="server" ImageUrl="~/imagenes/terminarvolver.png"/>
                     </td>
                 </tr>
             </table>
             </asp:Panel>

        <asp:Panel ID="pCambiarDatosPersonales"  runat="server" Height="519px" Width="767px" Visible="False" ForeColor="#372C59" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
            <table style="width:100%;">
                <tr>
                    <td align="center" class="auto-style29">
                        <asp:Label ID="Label109" runat="server" Text="Cambiar tus datos personales"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label110" runat="server" Text="Email válido para notificaciones:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tEmailU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="70" Rows="2" TextMode="MultiLine" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEEmailU0" runat="server" ForeColor="Red" Text="lEEmailU" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label111" runat="server" Text="Provincia:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="didProvU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" Height="30px" Width="287px">
                            <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                            <asp:ListItem Value="2">Catamarca</asp:ListItem>
                            <asp:ListItem Value="3">Chaco</asp:ListItem>
                            <asp:ListItem Value="4">Chubut</asp:ListItem>
                            <asp:ListItem Value="5">CABA</asp:ListItem>
                            <asp:ListItem Value="6">Córdoba</asp:ListItem>
                            <asp:ListItem Value="7">Corrientes</asp:ListItem>
                            <asp:ListItem Value="8">Entre Ríos</asp:ListItem>
                            <asp:ListItem Value="9">Formosa</asp:ListItem>
                            <asp:ListItem Value="10">Jujuy</asp:ListItem>
                            <asp:ListItem Value="11">La Pampa</asp:ListItem>
                            <asp:ListItem Value="12">La Rioja</asp:ListItem>
                            <asp:ListItem Value="13">Mendoza</asp:ListItem>
                            <asp:ListItem Value="14">Misiones</asp:ListItem>
                            <asp:ListItem Value="15">Neuquén</asp:ListItem>
                            <asp:ListItem Value="16">Río Negro</asp:ListItem>
                            <asp:ListItem Value="17">Salta</asp:ListItem>
                            <asp:ListItem Value="18">San Juan</asp:ListItem>
                            <asp:ListItem Value="19">San Luis</asp:ListItem>
                            <asp:ListItem Value="20">Santa Cruz</asp:ListItem>
                            <asp:ListItem Value="21">Santa Fe</asp:ListItem>
                            <asp:ListItem Value="22">Santiago del Estero</asp:ListItem>
                            <asp:ListItem Value="23">Tucumán</asp:ListItem>
                            <asp:ListItem Value="24">Tierra del Fuego</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label112" runat="server" Text="Localidad:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tLocalidadU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px" CssClass="auto-style2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lELocalidadU0" runat="server" ForeColor="Red" Text="lELocalidadU" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label113" runat="server" Text="Dirección:"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="tDireccionU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="100" Rows="2" TextMode="MultiLine" Width="282px" CssClass="auto-style10"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="lEDireccionU0" runat="server" ForeColor="Red" Text="lEDireccionU" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label114" runat="server" Text="Teléfono (agregar característica):"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tTelefonosU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lETelefonosU0" runat="server" ForeColor="Red" Text="lETelefonosU" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label115" runat="server" Text="Usuario:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tUsuarioU0" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEUsuarioU0" runat="server" ForeColor="Red" Text="lEUsuarioU" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label116" runat="server" Text="Clave:"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="tPassU0" runat="server" BackColor="#372C57" CssClass="auto-style14" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEPassU0" runat="server" ForeColor="Red" Text="lEPassU" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>

            <table style="width:100%;">
                <tr>
                    <td align="center" class="auto-style112">
                        <asp:Label ID="lErroresU0" runat="server" ForeColor="Red" Text="lErroresU" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style16">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bCambiar" runat="server" ImageUrl="~/imagenes/cambiarlosdatos.png" Width="202px" />
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="bVolverU4" runat="server" ImageUrl="~/imagenes/cancelarvolver.png" Width="190px" />
                    </td>
                </tr>
            </table>

            </asp:Panel>
        <asp:Panel ID="pDatosModi"  runat="server" Height="242px" Width="767px" Visible="False" ForeColor="#372C57" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
            <table class="auto-style20">
                <tr>
                    <td align="center" class="auto-style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style23">
                        <br />
                        <asp:Label ID="Label117" runat="server" Text="Tus datos han cambiado correctamente"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bVolverAreaUsuario" runat="server" ImageUrl="~/imagenes/VolveraTuArea.png" Height="77px" Width="319px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>


          <asp:Panel ID="pPedidos" runat="server" BorderColor="Black" Height="529px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid" Width="767px">
                    <table class="auto-style40">
                        <tr>
                            <td class="auto-style24"></td>
                            <td align="center" class="auto-style48" style="font-family: 'Bahnschrift SemiLight'; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000">
                                Menu de pedidos</td>
                            <td class="auto-style24"></td>
                        </tr>
                        <tr>
                            <td class="auto-style51"></td>
                            <td align="center" class="auto-style50">
                                <br />
                                </td>
                            <td class="auto-style51"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="center" class="auto-style48">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="center" class="auto-style48">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="63px" ImageAlign="Middle" ImageUrl="~/Imagenes/NuevoPedido.png" Width="250px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32"></td>
                            <td align="center" class="auto-style42"></td>
                            <td class="auto-style32"></td>
                        </tr>
                        <tr>
                            <td class="auto-style54"></td>
                            <td align="center" class="auto-style53"></td>
                            <td class="auto-style54"></td>
                        </tr>
                        <tr>
                            <td class="auto-style32"></td>
                            <td align="center" class="auto-style42">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="69px" ImageAlign="Middle" ImageUrl="~/Imagenes/MisPedidos.png" Width="276px" />
                            </td>
                            <td class="auto-style32"></td>
                        </tr>
                        <tr>
                            <td class="auto-style32">&nbsp;</td>
                            <td align="center" class="auto-style42">&nbsp;</td>
                            <td class="auto-style32">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">&nbsp;</td>
                            <td align="center" class="auto-style42">&nbsp;</td>
                            <td class="auto-style32">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style45"></td>
                            <td align="center" class="auto-style38">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="63px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="250px" />
                            </td>
                            <td class="auto-style45"></td>
                        </tr>
                    </table>
              </asp:Panel>





         <asp:Panel ID="pNuevoPedido" runat="server" BorderColor="Black" Height="800px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarseg.png" Visible="false" BorderStyle="Solid" Width="767px">
             <br />
             <table class="auto-style20">
                 <tr>
                     <td align="center">
                         <asp:Label ID="lPedidoFab" runat="server" Text="Label"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td align="center">
                         <asp:Button ID="bInstrucciones" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Ridge" Font-Names="Bahnschrift SemiLight" ForeColor="Black" Text="Abrir instrucciones" />
                         &nbsp;<asp:Label ID="lInstrucciones" runat="server" Font-Names="Bahnschrift SemiLight" Font-Overline="False" ForeColor="Black" Text="Instrucciones"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="font-family: 'Bahnschrift SemiLight'; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; color: #000000" class="auto-style34">Seleccione el gusto del helado:</td>
                 </tr>
                 <tr>
                     <td>
                         <asp:DropDownList ID="dHelados" runat="server" BackColor="Gray" ForeColor="Black" Height="16px" Width="740px" Font-Names="Bahnschrift SemiLight" AutoPostBack="True">
                         </asp:DropDownList>
                     </td>
                 </tr>
             </table>
             <br />
             <table style="width:100%; font-family: 'Bahnschrift SemiLight'; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; color: #000000;">
                 <tr>
                     <td>Agregar:</td>
                     <td>
                         <asp:Label ID="lCosaAgregar" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lQueEs" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                     </td>
                 </tr>
             </table>
             <table style="width:100%;">
                 <tr>
                     <td class="auto-style46" style="font-family: 'Bahnschrift SemiLight'; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000">Cantidad de latas o unidades:&nbsp;&nbsp;&nbsp;&nbsp; </td>
                     <td>
                         <asp:DropDownList ID="tCantLatas" runat="server" BackColor="Gray" ForeColor="White" Font-Names="Bahnschrift SemiLight" Width="208px" Height="16px" ValidateRequestMode="Enabled">
                             <asp:ListItem></asp:ListItem>


                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            
                         </asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                     <td align="center">
                  <asp:ImageButton ID="bAgregarALista" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/agregar.png" Width="212px" />

                     </td>
                 </tr>
             </table>
             <table class="auto-style30">
                 <tr>
                     <td align="center" class="auto-style12" style="font-family: 'Bahnschrift SemiLight'; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000">Esta es la lista de su pedido</td>
                 </tr>
                 <tr>
                     <td align="center" class="auto-style84">
                         <asp:GridView ID="gListaPedido" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="752px" Font-Names="Comfortaa" Font-Strikeout="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                             <AlternatingRowStyle BackColor="#CCCCCC" Font-Names="Comfortaa" />
                             <Columns>
                                 <asp:ButtonField ButtonType="Image" CommandName="Quitar" HeaderText="Quitar" ImageUrl="~/Imagenes/quitar.png" Text="Quitar" />
                                 <asp:BoundField DataField="Item" HeaderText="Item Solicitado" />
                                 <asp:BoundField DataField="Cantidad" HeaderText="Cant." />
                             </Columns>
                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />
                         </asp:GridView>
                     </td>
                 </tr>
             </table>
             <table style="width:100%;">
                 <tr>
                     <td align="center">
                         &nbsp;</td>
                     <td align="center">
                         &nbsp;</td>
                     <td align="center">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="center">&nbsp;</td>
                     <td align="center">&nbsp;</td>
                     <td align="center">&nbsp;</td>
                 </tr>
                 <tr>
                     <td align="center">
                         <asp:ImageButton ID="bQuitarTodos" runat="server" Height="70px" ImageAlign="Middle" ImageUrl="~/Imagenes/quitartodos.png" Width="212px" />
                     </td>
                     <td align="center">
                         <asp:ImageButton ID="bSolicitarPedido" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/solicitar.png" Width="212px" />
                     </td>
                     <td align="center">
                         <asp:ImageButton ID="bCancelarPedido" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/cancelarpedido.png" Width="212px" />
                     </td>
                 </tr>
             </table>
             <br />
             <br />
             <table class="auto-style20">
                 <tr>
                     <td>&nbsp;</td>
                     <td align="center">
                         <asp:Label ID="lErrorPedido" runat="server" Font-Bold="True" Font-Names="Comfortaa" ForeColor="#CC0000" Text="Error" Visible="False"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
             </table>

             </asp:Panel>
                
                 <asp:Panel ID="pPedidoCreado" runat="server" BorderColor="Black" Height="256px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid" Width="767px">
                     <br />
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" style="font-size: x-large" class="auto-style90">
                                 <asp:Label ID="lPedidoCreado" runat="server" Text="Creado" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <asp:Label ID="lprueba" runat="server" Text="Label"></asp:Label>
                     <br />
                     <br />
                     <table class="auto-style20">
                        
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="ImageButton5" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                             </td>
                         </tr>
                     </table>
                     <br />

                     </asp:Panel>

         <asp:Panel ID="pHistorico" runat="server" BorderColor="Black" Height="420px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid" Width="767px">
                     <table class="auto-style20">
                         <tr>
                             <td class="auto-style31"></td>
                         </tr>

                         <tr>
                             <td align="center" style="font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000" class="auto-style30">Historico de pedidos y estados</td>
                         </tr>
                     </table>
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center">
                                 <asp:Label ID="lErrorHistorico" runat="server" ForeColor="#CC0000" Text="Error" Font-Names="Comfortaa" Font-Bold="True" Visible="False"></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" class="auto-style14">
                                 <asp:GridView ID="gHistorico" runat="server" AutoGenerateColumns="False" BackColor="#333300" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="130px" Width="757px" Font-Names="Bahnschrift SemiLight" Font-Size="Medium" Font-Bold="True">
                                     <AlternatingRowStyle BackColor="White" />
                                     <Columns>
                                         <asp:ButtonField ButtonType="Button" CommandName="Ver" Text="Ver pedido">
                                         <ControlStyle BackColor="#CCCCCC" ForeColor="Black" Font-Names="Bahnschrift Light" />
                                         <FooterStyle Font-Names="Comfortaa" />
                                         <HeaderStyle Font-Names="Comfortaa" />
                                         <ItemStyle Font-Names="Comfortaa" />
                                         </asp:ButtonField>
                                         <asp:ButtonField ButtonType="Button" CommandName="Anular" HeaderText="(solo &quot;Solicitado&quot;)" Text="Anular pedido">
                                         <ControlStyle BackColor="#666666" ForeColor="White" Font-Names="Bahnschrift SemiLight" />
                                         <FooterStyle Font-Names="Comfortaa" ForeColor="#00CC99" />
                                         </asp:ButtonField>
                                         <asp:BoundField DataField="NPedido" HeaderText="N° Pedido" ReadOnly="True" />
                                         <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy HH:mm:tt}" HeaderText="Fecha y Hora" />
                                         <asp:BoundField DataField="estado" HeaderText="Estado del pedido" />
                                     </Columns>
                                     <EditRowStyle BackColor="White" />
                                     <FooterStyle BackColor="#CCCCCC" />
                                     <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" BorderStyle="None" />
                                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                     <RowStyle BackColor="#CCCCCC" BorderColor="White" />
                                     <SelectedRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                     <SortedAscendingHeaderStyle BackColor="Gray" />
                                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                     <SortedDescendingHeaderStyle BackColor="#383838" />
                                 </asp:GridView>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="ImageButton8" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/actualizar.png" Width="212px" />
                             </td>
                             <td align="center">
                                 <asp:ImageButton ID="bTerminarHistorico" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                             </td>
                         </tr>
                     </table>

                     </asp:Panel>
                         <asp:Panel ID="pVerUnPedido" runat="server" BorderColor="#66CCFF" Height="450px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" Width="767px">
                             <table style="width:100%;">
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center" style="font-family: comfortaa; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #008080">
                                         <asp:Label ID="lDetallePedido" runat="server" Text="Detalle del pedido n°" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td align="center" style="font-family: comfortaa; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #008080">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:GridView ID="gVerUnPedido" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="760px" Font-Bold="True" Font-Names="Bahnschrift SemiLight" Font-Size="Medium">
                                             <AlternatingRowStyle BackColor="White" />
                                             <Columns>
                                                 <asp:BoundField DataField="Item" HeaderText="Item solicitado" >
                                                 <FooterStyle BackColor="Black" />
                                                 </asp:BoundField>
                                                 <asp:BoundField DataField="Cantidad" HeaderText="Cant." />
                                                 <asp:BoundField DataField="Precio" HeaderText="Precio" />
                                             </Columns>
                                             <FooterStyle BackColor="Black" />
                                             <HeaderStyle BackColor="Gray" Font-Bold="False" ForeColor="White" Font-Italic="False" Font-Names="Comfortaa" />
                                             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                             <RowStyle BackColor="#CCCCCC" Font-Italic="False" Font-Names="Comfortaa" Font-Size="Small" ForeColor="Black" />
                                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                             <SortedAscendingHeaderStyle BackColor="Gray" />
                                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                             <SortedDescendingHeaderStyle BackColor="#383838" />
                                         </asp:GridView>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center" class="auto-style32">
                                         <asp:Label ID="lErrorVerUnPedido" runat="server" Text="Error" ForeColor="#CC0000" Font-Bold="True" Font-Names="Comfortaa" Visible="False"></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center">
                                         <asp:ImageButton ID="ImageButton9" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td align="center">
                                         &nbsp;</td>
                                 </tr>
                             </table>

                             </asp:Panel>

        <asp:Panel ID="pCambiarDatosAdmin" runat="server" Height="583px" Width="767px" Visible="False" ForeColor="#372C59" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
                <table style="width:100%;">
                    <tr>
                        <td align="center" class="auto-style29">
                            <asp:Label ID="lDatosAdmin" runat="server" Text="Cambiar tus datos personales. Administrador"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1108" runat="server" Text="Email válido para notificaciones:"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="tEmailU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="70" Rows="2" TextMode="MultiLine" Width="282px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lEEmailU1" runat="server" ForeColor="Red" Text="lEEmailU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1109" runat="server" Text="Provincia:"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="didProvU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" Height="30px" Width="287px">
                                <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                                <asp:ListItem Value="2">Catamarca</asp:ListItem>
                                <asp:ListItem Value="3">Chaco</asp:ListItem>
                                <asp:ListItem Value="4">Chubut</asp:ListItem>
                                <asp:ListItem Value="5">CABA</asp:ListItem>
                                <asp:ListItem Value="6">Córdoba</asp:ListItem>
                                <asp:ListItem Value="7">Corrientes</asp:ListItem>
                                <asp:ListItem Value="8">Entre Ríos</asp:ListItem>
                                <asp:ListItem Value="9">Formosa</asp:ListItem>
                                <asp:ListItem Value="10">Jujuy</asp:ListItem>
                                <asp:ListItem Value="11">La Pampa</asp:ListItem>
                                <asp:ListItem Value="12">La Rioja</asp:ListItem>
                                <asp:ListItem Value="13">Mendoza</asp:ListItem>
                                <asp:ListItem Value="14">Misiones</asp:ListItem>
                                <asp:ListItem Value="15">Neuquén</asp:ListItem>
                                <asp:ListItem Value="16">Río Negro</asp:ListItem>
                                <asp:ListItem Value="17">Salta</asp:ListItem>
                                <asp:ListItem Value="18">San Juan</asp:ListItem>
                                <asp:ListItem Value="19">San Luis</asp:ListItem>
                                <asp:ListItem Value="20">Santa Cruz</asp:ListItem>
                                <asp:ListItem Value="21">Santa Fe</asp:ListItem>
                                <asp:ListItem Value="22">Santiago del Estero</asp:ListItem>
                                <asp:ListItem Value="23">Tucumán</asp:ListItem>
                                <asp:ListItem Value="24">Tierra del Fuego</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1110" runat="server" Text="Localidad:"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="tLocalidadU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px" CssClass="auto-style2"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lELocalidadU1" runat="server" ForeColor="Red" Text="lELocalidadU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1111" runat="server" Text="Dirección:"></asp:Label>
                        </td>
                        <td class="auto-style26">
                            <asp:TextBox ID="tDireccionU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="100" Rows="2" TextMode="MultiLine" Width="282px" CssClass="auto-style10"></asp:TextBox>
                        </td>
                        <td class="auto-style27">
                            <asp:Label ID="lEDireccionU1" runat="server" ForeColor="Red" Text="lEDireccionU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1112" runat="server" Text="Teléfono (agregar característica):"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="tTelefonosU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lETelefonosU1" runat="server" ForeColor="Red" Text="lETelefonosU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1113" runat="server" Text="Usuario:"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="tUsuarioU1" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lEUsuarioU1" runat="server" ForeColor="Red" Text="lEUsuarioU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1114" runat="server" Text="Clave:"></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <asp:TextBox ID="tPassU1" runat="server" BackColor="#372C57" CssClass="auto-style14" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lEPassU1" runat="server" ForeColor="Red" Text="lEPassU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td align="center">
                            <asp:Label ID="lErroresU1" runat="server" ForeColor="Red" Text="lErroresU" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="auto-style16">
                    <tr>
                        <td align="center">
                            <asp:ImageButton ID="bCambiarA" runat="server" ImageUrl="~/imagenes/cambiarlosdatos.png" Width="202px" />
                        </td>
                        <td align="center">
                            <asp:ImageButton ID="bVolverA" runat="server" ImageUrl="~/imagenes/cancelarvolver.png" Width="190px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
              
        <asp:Panel ID="pProductos" runat="server" CssClass="auto-style66" Height="661px" Visible="False" Width="767px">
            <table class="auto-style67">
                <tr>
                    <td class="auto-style68">
                        <asp:LinkButton ID="lLimpiarFiltroProd" runat="server">Limpiar Filtro</asp:LinkButton>
                        <br />
                        <asp:DropDownList ID="ddlProductos" runat="server" AutoPostBack="True">
                             <asp:ListItem Value="0">Filtro Productos</asp:ListItem>
                             <asp:ListItem Value="Teclado">Teclado</asp:ListItem>
                            <asp:ListItem Value="Mouse">Mouse</asp:ListItem>
                            <asp:ListItem Value="Parlante">Parlante</asp:ListItem>
                            <asp:ListItem Value="Auricular">Auricular</asp:ListItem>
                            <asp:ListItem Value="Parlante">Procesador</asp:ListItem>
                            <asp:ListItem Value="Motherboard">Motherboard</asp:ListItem>
                            <asp:ListItem Value="Memoria Ram">Memoria Ram</asp:ListItem>
                            <asp:ListItem Value="Gabinete">Gabinete</asp:ListItem>
                            <asp:ListItem Value="Cable de Red">Cable de Red</asp:ListItem>
                            <asp:ListItem Value="Mousepad">Mousepad</asp:ListItem>
                            <asp:ListItem Value="FuentePC">FuentePC</asp:ListItem>
                            <asp:ListItem Value="Otros">Otros</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:GridView ID="gDatosProduc" runat="server" Height="247px" Width="417px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="8" CellSpacing="1" HorizontalAlign="Center">
                            <Columns>
                                <asp:ButtonField ButtonType="Image" CommandName="Seleccionar" Text="Seleccionar" HeaderText="Seleccionar" ImageUrl="~/Imagenes/TildeIcob.png" >
                                <ControlStyle BackColor="Gray" BorderColor="#666666" BorderStyle="None" Font-Names="Arial Rounded MT Bold" Font-Size="X-Small" ForeColor="White" Height="30px" Width="30px" />
                                <FooterStyle BorderColor="#999999" />
                                <HeaderStyle ForeColor="#999999" />
                                <ItemStyle ForeColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="CodP" HeaderText="Codigo De Producto" ReadOnly="True" >
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TipoDeProducto" HeaderText="Tipo De Producto" ReadOnly="True" >
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style74">
                        <table class="auto-style69">
                            <tr>
                                <td class="auto-style73" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="bsalirproductos" runat="server" BackColor="Gray" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Castellar" Text="X" Width="30px" Height="25px" />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lBuscarProd" runat="server" Height="22px" Text="Buscar Producto"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="tBuscarProd" runat="server" CssClass="auto-style10" Width="234px" BorderColor="#999999" BorderStyle="Ridge"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bBuscarProd" runat="server" BackColor="Gray" BorderColor="Black" Font-Size="X-Small" ForeColor="White" Text="Buscar" Width="68px" />
                                    <br />
                                    <asp:LinkButton ID="lLimpiarProd" runat="server">Limpiar Busqueda</asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bNuevoProd" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style87" ForeColor="White" Height="19px" Text="Nuevo Producto" Width="106px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lTipoProd" runat="server" Text="Tipo de Producto:"></asp:Label>
                                </td>
                                <td class="auto-style86">
                                    <asp:DropDownList ID="didTipoProduc" runat="server" Height="27px" Width="161px">

                                         <asp:ListItem Value="1">Teclado</asp:ListItem>
                                        <asp:ListItem Value="2">Mouse</asp:ListItem>
                                         <asp:ListItem Value="3">Parlante</asp:ListItem>
                                        <asp:ListItem Value="4">Auricular</asp:ListItem>
                                         <asp:ListItem Value="5">Procesador</asp:ListItem>
                                        <asp:ListItem Value="6">Motherboard</asp:ListItem>
                                         <asp:ListItem Value="7">Memoria Ram</asp:ListItem>
                                        <asp:ListItem Value="8">Gabinete</asp:ListItem>
                                         <asp:ListItem Value="9">Cable de Red</asp:ListItem>
                                        <asp:ListItem Value="10">Mousepad</asp:ListItem>
                                         <asp:ListItem Value="11">FuentePC</asp:ListItem>
                                        <asp:ListItem Value="12">Otros</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lNombreProd" runat="server" Text="Nombre:"></asp:Label>
                                </td>
                                <td class="auto-style86">
                                    <asp:TextBox ID="tNombreProd" runat="server" Height="26px" Width="155px" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style153">
                                    <asp:Label ID="lPrecioSIVA" runat="server" Text="Valor Sin IVA:"></asp:Label>
                                </td>
                                <td class="auto-style154">
                                    <asp:TextBox ID="tValorSIVAProd" runat="server" Height="26px" Width="155px" BorderColor="#999999" BorderStyle="Ridge"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style79">
                                    <asp:Label ID="Label1118" runat="server" Text="Valor Final:"></asp:Label>
                                </td>
                                <td class="auto-style82">
                                    <asp:TextBox ID="tValorFinalProd" runat="server" Height="26px" Width="155px" BorderColor="#999999" BorderStyle="Ridge"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style77">
                                    <asp:Label ID="lStockProd" runat="server" Text="Stock"></asp:Label>
                                </td>
                                <td class="auto-style83">
                                    <asp:TextBox ID="tStockProd" runat="server" Height="26px" Width="155px" BorderColor="#999999" BorderStyle="Ridge"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style88">
                                    <asp:Label ID="lIvaProd" runat="server" Text="IVA:"></asp:Label>
                                </td>
                                <td class="auto-style89">
                                    <asp:DropDownList ID="didTipoIVA" runat="server" Height="19px" Width="162px">

                                         <asp:ListItem Value="10,5"></asp:ListItem>
                                        <asp:ListItem Value="21"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bEliminarProd" runat="server" BackColor="Gray" Font-Size="Small" ForeColor="White" Height="26px" Text="Eliminar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bAgregarProd" runat="server" BackColor="Gray" Font-Size="Small" ForeColor="White" Text="Agregar" Width="69px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bModificarProd" runat="server" BackColor="Gray" Font-Size="Small" ForeColor="White" Height="26px" Text="Modificar" Width="69px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Label ID="lErrorProducto" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>

        </asp:Panel>

         <asp:Panel ID="pPedidoAnulado" runat="server" BorderColor="Black" Height="256px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid" Width="767px">
                     <br />
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" style="font-size: x-large">
                                 <asp:Label ID="lPedidoAnulado" runat="server" Text="PedidoAnulado" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="Black" Font-Size="X-Large" BackColor="Silver"></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                     <table style="width:100%;">
                        
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="bPedidoAnulado" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                             </td>
                         </tr>
                     </table>
                     <br />

                     </asp:Panel>
        <asp:Panel ID="pPedidosCliente" runat="server" Height="800px" Visible="False" Width="767px">
            &nbsp;<table class="auto-style102">
                <tr>
                    <td class="auto-style103">
                        <asp:Button ID="bSalirCarrito" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Text="X" Width="35px" Height="28px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lproductosdid" runat="server" Text="Tipo De Producto:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="didNombreProd" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="1">Teclado</asp:ListItem>
                            <asp:ListItem Value="2">Mouse</asp:ListItem>
                            <asp:ListItem Value="3">Parlante</asp:ListItem>
                            <asp:ListItem Value="4">Auricular</asp:ListItem>
                            <asp:ListItem Value="5">Procesador</asp:ListItem>
                            <asp:ListItem Value="6">Motherboard</asp:ListItem>
                            <asp:ListItem Value="7">Memoria Ram</asp:ListItem>
                            <asp:ListItem Value="8">Gabinete</asp:ListItem>
                            <asp:ListItem Value="9">Cable de Red</asp:ListItem>
                            <asp:ListItem Value="10">Mousepad</asp:ListItem>
                            <asp:ListItem Value="11">FuentePC</asp:ListItem>
                            <asp:ListItem Value="12">Otros</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:LinkButton ID="lnkquitar" runat="server">Quitar filtro</asp:LinkButton>
                    </td>
                    <td class="auto-style104">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lTotalProductos" runat="server" Font-Names="Bahnschrift Light" Font-Size="Small" Font-Strikeout="False" ForeColor="Red" Text="0"></asp:Label>
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="bRevisarCarro" runat="server" Height="41px" ImageUrl="~/Imagenes/Carrito80x80.png" Width="51px" />
                        &nbsp;&nbsp;
                        <asp:Label ID="lBuscarUs" runat="server" Text="Buscar Producto:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tBuscarCarrito" runat="server" BorderStyle="None" Height="23px" Width="196px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bBuscarCar" runat="server" BorderStyle="None" Height="26px" Text="Buscar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style105">
                        <asp:Label ID="lcant" runat="server" Text="Cantidad:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="didCantidadProd" runat="server" Font-Italic="False" Font-Names="Bernard MT Condensed" Font-Size="Medium" Width="136px">
                        </asp:DropDownList>
                        &nbsp;<asp:Button ID="bAgregarProdc" runat="server" BackColor="#999999" BorderColor="#666666" BorderStyle="Double" Text="Agregar" />
                        <br />
                        <br />
                        <asp:Label ID="lTipoProdS" runat="server" Text="Tipo De Producto" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lNombresel" runat="server" Text="NombreProducto" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lPrecioUs" runat="server" Text="Precio" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:GridView ID="gListaProductos" runat="server" AutoGenerateColumns="False" Height="173px" Width="535px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="7">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:ButtonField ButtonType="Image" CommandName="Seleccionar" ImageUrl="~/Imagenes/add30x30.png" Text="Seleccionar">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Stock" HeaderText="Cantidad">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Precio_Final" HeaderText="Precio">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:Label ID="lerrorsel" runat="server" Text="ErrorSeleccion" Visible="False"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lPedidoTot" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

        </asp:Panel>

        <asp:Panel ID="pCarrito" runat="server" Height="479px" Visible="False" CssClass="auto-style106" Width="767px">
            <table class="auto-style107">
                <tr>
                    <td class="auto-style136"></td>
                    <td class="auto-style137">
                        <asp:Label ID="LErrorC" runat="server" Text="Error" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                    <td class="auto-style139">&nbsp;</td>
                    <td class="auto-style138">
                        <asp:GridView ID="gCarrito" runat="server" AutoGenerateColumns="False" Height="75px" Width="370px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:ButtonField Text="Quitar" CommandName="Quitar" ButtonType="Image" ImageUrl="~/Imagenes/Quitarico.png" >
                                <ItemStyle Height="3px" Width="3px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="Item" HeaderText="Producto" />
                                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                                <asp:BoundField DataField="Precio" HeaderText="Precio" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;Valor Total:
                        <asp:Label ID="lPTC" runat="server" Text="Precio Total: " ForeColor="#009933"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style139">
                        <asp:ImageButton ID="bVolverUnU" runat="server" Height="42px" ImageUrl="~/Imagenes/VolverAPedido.png" Width="158px" />
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style138">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Imagenes/CancelarPedidoUs.png" Width="158px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="bReservar" runat="server" ImageUrl="~/Imagenes/ReservarUs.png" Width="158px" />
                    </td>
                </tr>
            </table>


            </asp:Panel>

           <asp:Panel ID="pBanear" runat="server" Height="766px" Visible="False" CssClass="auto-style106" Width="767px">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="bSalirBan" runat="server" BackColor="Gray" BorderColor="Silver" BorderStyle="None" Font-Bold="True" Font-Names="Felix Titling" Font-Size="Medium" Height="25px" Text="X" Width="31px" />
               <br />
               <br />
               <br />
               Buscar Nombre:
               <br />
               <asp:TextBox ID="tbuscarusban" runat="server" BorderStyle="None" Height="16px"></asp:TextBox>
&nbsp;<asp:Button ID="bBuscarban" runat="server" BorderStyle="None" CssClass="auto-style92" Font-Size="X-Small" Height="19px" Text="BUSCAR" Width="63px" />
               <br />
               <asp:GridView ID="gUsuariosBan" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="269px" Width="763px" AllowPaging="True" PageSize="5">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <Columns>
                       <asp:ButtonField ButtonType="Image" CommandName="Seleccionar" Text="Seleccionar" HeaderText="Seleccionar" ImageUrl="~/Imagenes/Tilde.png" >
                       <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       </asp:ButtonField>
                       <asp:BoundField DataField="idUsuario" HeaderText="ID" />
                       <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                       <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                       <asp:BoundField DataField="Email" HeaderText="Email" />
                       <asp:BoundField DataField="Activo" HeaderText="Estado" />
                   </Columns>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               </asp:GridView>
               <br />
               Datos de usuario Seleccionado:
               <br />
               <br />
               Nombre Completo:
               <asp:Label ID="lNombreBan" runat="server" ForeColor="#990000" Text="lNombreBan"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DNI:
               <asp:Label ID="lDNIBan" runat="server" ForeColor="#990000" Text="lDNIBan"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mail:
               <asp:Label ID="lMailBan" runat="server" ForeColor="#990000" Text="lMailBan"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <br />
               Estado:
               <asp:Label ID="lEstadoBan" runat="server" Text="Label"></asp:Label>
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               Motivo:<br />
               <asp:TextBox ID="tmensajeban" runat="server" Height="103px" Width="747px"></asp:TextBox>
               <br />
               <br />
               <asp:Button ID="bSuspenderU" runat="server" BackColor="#CCCC00" BorderStyle="None" ForeColor="Black" Text="Suspender" />
               &nbsp;
               <asp:Button ID="bDesbanU" runat="server" BackColor="#009900" BorderStyle="None" Text="Incorporar" Width="93px" />
               <br />
               <br />
               <br />
               <br />
               <asp:Button ID="bEliminarU" runat="server" BackColor="#990000" BorderStyle="None" Height="22px" Text="Eliminar Usuario" Width="146px" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="lEliminadouser" runat="server" ForeColor="Maroon" Text="El usuario se elimino con exito" Visible="False"></asp:Label>

        </asp:Panel>
           <asp:Panel ID="pVerificarMail" runat="server" Height="600px" Visible="False" Width="767px">
          <table class="auto-style94">
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">&nbsp;</td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">Hemos enviado un codigo de verificacion a tu Casilla de Correo.
                        <br />
                        Por favor ingresalo para poder validar que sea correcto.</td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style96"></td>
                    <td class="auto-style98">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tValidar" runat="server" Height="31px" Width="204px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bReenviarCod" runat="server" Text="Reenviar Codigo" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="33px" Visible="False" />
                    </td>
                    <td class="auto-style93"></td>
                </tr>
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lCodigo" runat="server" ForeColor="#993300" Text="CODIGO INCORRECTO"></asp:Label>
                    </td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <table class="auto-style145">
                            <tr>
                                <td class="auto-style147">&nbsp;</td>
                                <td class="auto-style146">
                                    <asp:Button ID="bValidar" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="32px" Text="Validar" Width="147px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <table class="auto-style145">
                            <tr>
                                <td class="auto-style141"></td>
                                <td class="auto-style143">
                                    <asp:Button ID="bRegresarRegistro" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" Height="38px" Text="Regresar al Registro" Width="143px" />
                                </td>
                                <td class="auto-style148"></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style144">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="bCancelarValidar" runat="server" ImageUrl="~/imagenes/cancelarvolver.png" />
                    </td>
                    <td class="auto-style100">&nbsp;</td>
                </tr>
            </table>

          </asp:Panel>

        <asp:Panel ID="pHistoricoADM" runat="server" BorderColor="Black" Height="700px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" Width="767px">
                     <table class="auto-style20">
                         <tr>
                             <td class="auto-style31"></td>
                         </tr>

                         <tr>
                             <td align="center" style="font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000" class="auto-style30">Historico de pedidos y estados ADM</td>
                         </tr>
                     </table>
                     <br />
                     <table class="auto-style20">
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="bEliminarAnulados" runat="server" Height="41px" ImageUrl="~/imagenes/EliminarAnulado1.png" Width="165px" />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="lhistouso" runat="server" ForeColor="#CC0000" Text="Error" Font-Names="Comfortaa" Font-Bold="True" Visible="False"></asp:Label>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             </td>
                         </tr>
                     </table>
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" class="auto-style14">
                                 <asp:GridView ID="gHistoricoADM" runat="server" AutoGenerateColumns="False" BackColor="#333300" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="130px" Width="757px" Font-Names="Bahnschrift SemiLight" Font-Size="Medium" Font-Bold="True" AllowPaging="True">
                                     <AlternatingRowStyle BackColor="White" />
                                     <Columns>
                                         <asp:ButtonField ButtonType="Button" CommandName="Ver" Text="ver y editar" HeaderText="editar y ver">
                                         <ControlStyle BackColor="#CCCCCC" ForeColor="Black" Font-Names="Bahnschrift Light" />
                                         <FooterStyle Font-Names="Comfortaa" />
                                         <HeaderStyle Font-Names="Comfortaa" />
                                         <ItemStyle Font-Names="Comfortaa" />
                                         </asp:ButtonField>
                                         <asp:ButtonField ButtonType="Button" CommandName="Anular" HeaderText="(solo &quot;Solicitado&quot;)" Text="Anular pedido">
                                         <ControlStyle BackColor="#666666" ForeColor="White" Font-Names="Bahnschrift SemiLight" />
                                         <FooterStyle Font-Names="Comfortaa" ForeColor="#00CC99" />
                                         </asp:ButtonField>
                                         <asp:BoundField DataField="NPedido" HeaderText="N° Pedido" ReadOnly="True" />
                                         <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy HH:mm:tt}" HeaderText="Fecha y Hora" />
                                         <asp:BoundField DataField="estado" HeaderText="Estado del pedido" />
                                         <asp:ButtonField CommandName="enviar" Text="Enviar" >
                                         <ItemStyle ForeColor="#0000CC" />
                                         </asp:ButtonField>
                                     </Columns>
                                     <EditRowStyle BackColor="White" />
                                     <FooterStyle BackColor="#CCCCCC" />
                                     <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" BorderStyle="None" />
                                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                     <RowStyle BackColor="#CCCCCC" BorderColor="White" />
                                     <SelectedRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                     <SortedAscendingHeaderStyle BackColor="Gray" />
                                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                     <SortedDescendingHeaderStyle BackColor="#383838" />
                                 </asp:GridView>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <table class="auto-style133">
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="brefreshADM" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/actualizar.png" Width="212px" />
                             </td>
                             <td align="center">
                                 <asp:ImageButton ID="bTerminarHADM" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                             </td>
                         </tr>
                     </table>

                     </asp:Panel>

        <asp:Panel id ="pControlADM" runat ="server" Height="600px" Visible="False" Width="767px">
            <table class="auto-style113">
                <tr>
                    <td class="auto-style122"></td>
                    <td class="auto-style123">
                        <asp:ImageButton ID="bABMProductos" runat="server" Height="62px" ImageUrl="~/imagenes/ABMProductos.png" Visible="False" Width="213px" />
                    </td>
                    <td class="auto-style124">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bSalirADM" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Book Antiqua" ForeColor="White" Height="24px" Text="X" Width="30px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style125"></td>
                    <td class="auto-style126">
                        <asp:ImageButton ID="pABMUsuarios" runat="server" Height="71px" Width="211px" ImageUrl="~/imagenes/ABMUsuarios.png" />
                    </td>
                    <td class="auto-style127"></td>
                </tr>
                <tr>
                    <td class="auto-style120">&nbsp;</td>
                    <td class="auto-style121">
                        <asp:ImageButton ID="pHistorialTotal" runat="server" Height="58px" Width="203px" ImageUrl="~/imagenes/PedidosUsuarios.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>


       <asp:Panel ID="pVerUnPedidoADM" runat="server" BorderColor="#66CCFF" Height="576px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" Width="767px">
                             <table class="auto-style149">
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center" style="font-family: comfortaa; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #008080">
                                         <asp:Label ID="lDetalle2" runat="server" Text="Detalle del pedido n°" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center" style="font-family: comfortaa; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #008080">
                                         <table style="width:100%;">
                                             <tr>
                                                 <td class="auto-style128">ID: User:
                                                     <asp:Label ID="lID" runat="server" Text="0" Visible="False"></asp:Label>
                                                 </td>
                                                 <td class="auto-style129">Nombre:
                                                     <asp:Label ID="lnombreped" runat="server" Text="Nombre" Visible="False"></asp:Label>
                                                 </td>
                                                 <td class="auto-style30">Mail:
                                                     <asp:Label ID="lMailped" runat="server" Text="Label" Visible="False"></asp:Label>
                                                 </td>
                                             </tr>
                                         </table>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <br />
                                         <br />
                                         <asp:ImageButton ID="bEliminarPedido" runat="server" Height="31px" Width="33px" />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:GridView ID="gVerPedidoADM" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="760px" Font-Bold="True" Font-Names="Bahnschrift SemiLight" Font-Size="Medium">
                                             <AlternatingRowStyle BackColor="White" />
                                             <Columns>
                                                 <asp:ButtonField ButtonType="Image" CommandName="Quitar" ImageUrl="~/Imagenes/Quitarico.png" Text="Quitar">
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 </asp:ButtonField>
                                                 <asp:BoundField DataField="Item" HeaderText="Item solicitado">
                                                 <FooterStyle BackColor="Black" />
                                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 </asp:BoundField>
                                                 <asp:BoundField DataField="Cantidad" HeaderText="Cant.">
                                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 </asp:BoundField>
                                                 <asp:BoundField DataField="Precio" HeaderText="Precio">
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                 </asp:BoundField>
                                             </Columns>
                                             <FooterStyle BackColor="Black" />
                                             <HeaderStyle BackColor="Gray" Font-Bold="False" ForeColor="White" Font-Italic="False" Font-Names="Comfortaa" />
                                             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                             <RowStyle BackColor="#CCCCCC" Font-Italic="False" Font-Names="Comfortaa" Font-Size="Small" ForeColor="Black" />
                                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                             <SortedAscendingHeaderStyle BackColor="Gray" />
                                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                             <SortedDescendingHeaderStyle BackColor="#383838" />
                                         </asp:GridView>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center" class="auto-style32">
                                         <asp:Label ID="Label4" runat="server" Text="Error" ForeColor="#CC0000" Font-Bold="True" Font-Names="Comfortaa" Visible="False"></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td align="center">
                                         <asp:ImageButton ID="ImageButton6" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminarvolver.png" Width="212px" />
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     </td>
                                 </tr>
                                 <tr>
                                     <td align="center">
                                         &nbsp;</td>
                                 </tr>
                             </table>

                             </asp:Panel>

    </form>
</body>
</html>