<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Sistema_VB_Backup._Default" %>

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
            .auto-style6 {
                width: 114px;
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
            .auto-style18 {
                width: 749px;
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
                width: 579px;
            }
            .auto-style61 {
                margin-bottom: 0px;
                height: 35px;
                width: 579px;
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
                width: 579px;
            }
        </style>
</head>
<body bgcolor="#CACFD1">
    <form id="form1" runat="server">
        <asp:Panel ID="pPortada" BorderStyle="Solid" runat="server" Height="144px" Width="767px" BorderColor="Black">
            <asp:ImageButton ID="bPortada" runat="server"
            ImageAlign="Middle" ImageUrl="~/imagenes/portada1.png" OnClick="bPortada_Click" Width="767px" Height="147px" /> 
        </asp:Panel>
        <asp:Panel ID="pLogin" BorderStyle="Solid" runat="server" Height="501px"
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
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1106" runat="server" Text="Usuario:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tUsuario" runat="server" ForeColor="White" MaxLength="10" BackColor="Black"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1105" runat="server" Text="Clave:"></asp:Label>
                                </td>
                                <td class="auto-style75">
                                    <asp:TextBox ID="tClave" runat="server" ForeColor="White" MaxLength="10" TextMode="Password" BackColor="Black"></asp:TextBox>
                                </td>
                                <td>

                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageAlign="Middle" ImageUrl="~/imagenes/entrar1.png"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="auto-style56">
                <tr>
                    <td align="center" class="auto-style76">
                        <asp:Label ID="lErrorLoguin" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style58">
                        <asp:ImageButton ID="bRecuperarClave" runat="server" Height="60px" ImageAlign="Middle" ImageUrl="~/imagenes/reenviarclave1.png" />
                    </td>
                    <td class="auto-style27">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style61">
                        <asp:Label ID="lReenviarClave" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:ImageButton ID="bVolverLogin" runat="server" CssClass="auto-style10" Height="68px" ImageUrl="~/imagenes/terminarvolver.png" OnClick="bVolverLogin_Click" Visible="False" Width="30px" />
                        <asp:ImageButton ID="bRegistrarse" runat="server" Height="86px" imageurl="~/imagenes/registrateaqui1.png" Width="261px" />
                    </td>
                    <td class="auto-style63"></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="pLoginMenu" BorderStyle="Solid" runat="server" Height="392px" Width="768px" Font-Bold="true" ForeColor="Blue" Font-Size="Large"  Visible="false" BorderColor="Black">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="iRegistrate" runat="server" ImageUrl="~/imagenes/registrate.png" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:ImageButton ID="BAlogin" runat="server" imageurl="~/imagenes/yaregistrado.png" Width="750px" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style18">
                        <asp:ImageButton ID="bRegistrarseVolverLoginU13" runat="server" Height="68px" imageurl="~/imagenes/terminarvolver.png" Width="259px" Visible="False" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="pRegistrarse" BorderStyle="Solid" runat="server" Height="879px" BorderColor="Black" ForeColor="#372C57" Font-Size="Large" style="margin-right: 0px" Visible="false" Width="767px">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:image runat="server" ID="iTituloRegistrarte" ImageUrl="~/imagenes/registrarsetitulo.png" style="margin-left: 200px"></asp:image></td>
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
                        <asp:TextBox ID="tNombreU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="20" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lENombreU" runat="server" ForeColor="Red" Text="lENombreU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Apellido/s:</td>
                    <td>
                        <asp:TextBox ID="tApellidoU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="20" Width="282px"></asp:TextBox>
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
                        <asp:TextBox ID="tDocU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="8" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEDocU" runat="server" ForeColor="Red" Text="lEDocU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Fecha Nac.: (ddmmaa)</td>
                    <td>
                        <asp:TextBox ID="tF_Nac" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="6" Width="120px"></asp:TextBox>
                        <asp:Label ID="lEdad" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lEFNac" runat="server" ForeColor="Red" Text="lEFNac"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email válido para notificaciones:</td>
                    <td>
                        <asp:TextBox ID="tEmailU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="70" Rows="2" TextMode="MultiLine" Width="282px"></asp:TextBox>
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
                        <asp:TextBox ID="tLocalidadU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lELocalidadU" runat="server" ForeColor="Red" Text="lELocalidadU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Dirección:</td>
                    <td>
                        <asp:TextBox ID="tDireccionU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="100" Rows="2" TextMode="MultiLine" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEDireccionU" runat="server" ForeColor="Red" Text="lEDireccionU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Teléfono (agregue característica):</td>
                    <td>
                        <asp:TextBox ID="tTelefonosU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="25" Width="282px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lETelefonosU" runat="server" ForeColor="Red" Text="lETelefonosU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Usuario:</td>
                    <td>
                        <asp:TextBox ID="tUsuarioU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEUsuarioU" runat="server" ForeColor="Red" Text="lEUsuarioU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Clave</td>
                    <td>
                        <asp:TextBox ID="tPassU" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lEPassU" runat="server" ForeColor="Red" Text="lEPassU"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Repetir Clave:</td>
                    <td>
                        <asp:TextBox ID="tPass2U" runat="server" BackColor="#372C57" Font-Size="X-Large" ForeColor="White" MaxLength="10" TextMode="Password" Width="200px"></asp:TextBox>
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
                        <asp:ImageButton ID="bRegistraseU" ImageUrl="~/imagenes/registrarse.png" runat="server" />
                    </td>
                    <td>
                        <asp:ImageButton ID="bRegistrarseU0" ImageUrl="~/imagenes/cancelarvolver.png" runat="server" />
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
                    <td>Ya estás anotado en los cursos de ASP .NET!<br /> Nos alegra que confies en nosotros para poder brindarte la oportunidad de aprender este bello arte de porgramar. Cualquier duda o consulta puedes comunicarte con la parte del Staff.<br />
                        <br />
                        <br />
                        Gracias. El equipo de &quot;AfterTech&quot;.</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="bTodook" ImageUrl="~/imagenes/todook.png" runat="server" />
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
        
        <asp:Panel ID="pAreaUsuario"  runat="server" Height="515px" Width="767px" Visible="False" ForeColor="#372C57" BorderColor="Black" BorderStyle="Solid">
            <table class="auto-style20">
                <tr>
                    <td align="center" class="auto-style15">
                        <asp:Label ID="lBienvenidoAreaU" runat="server" Font-Bold="True" Font-Names="CityBlueprint" Font-Size="XX-Large" Text="Bienvenido/a !!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15">
                        <asp:ImageButton ID="bAhoraQueHago" ImageUrl="~/imagenes/ahora_que_hago.png" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15">
                        <asp:Label ID="Label106" runat="server" Text="Desde acá vas a poder hacer varias cosas relacionadas con tu cuenta en ASP.NET"></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bHacerPedido" runat="server" ImageUrl="~/imagenes/hacerpedido.png" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bVerHistorico" runat="server"  ImageUrl="~/imagenes/vertodosmov.png" />
                    </td>
                </tr>
            </table>
            <table class="auto-style15">
                <tr>
                    <td align="center" class="auto-style13">
                        <asp:ImageButton ID="bModificarDatos" runat="server"  ImageUrl="~/imagenes/modificardatos.png" />
                    </td>
                </tr>

                 <tr>
                    <td align="center" class="auto-style13">
                        <asp:ImageButton ID="bPedidos" runat="server"  ImageUrl="~/imagenes/pedidosfabrica.png" Height="45px" Width="250px" Visible="False" />
                        <asp:ImageButton ID="bABMProductos" runat="server" ImageUrl ="~/imagenes/ABMProductos.png" Height="47px" Visible="False" Width="236px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style64">
                        <asp:ImageButton ID="bVolverLoginU1" runat="server"  ImageUrl="~/imagenes/terminarvolver.png" Height="49px" Width="266px"/>
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
         <asp:Panel ID="pAhoraQueHago"  runat="server" Height="150px" Width="765px" Visible="False" ForeColor="#372C57" BorderColor="Black" BorderStyle="Solid">
             <table style="width:100%;">
                 <tr>
                     <td align="center">
                         <asp:Label ID="Label107" runat="server" Text="Te cuento un poco!"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td align="center">
                         <asp:Label ID="Label108" runat="server" Text="Aca vamos a poner de que trate el proyecto una vez que determinemos que hacer"></asp:Label>
                     </td>
                 </tr>
             </table>
             <table style="width:100%;">
                 <tr>
                     <td align="center" class="auto-style15">
                         <asp:ImageButton ID="bVolverLoginU2" runat="server" ImageUrl="~/imagenes/terminarvolver.png"/>
                     </td>
                 </tr>
             </table>
             </asp:Panel>

        <asp:Panel ID="pCambiarDatosPersonales"  runat="server" Height="519px" Width="770px" Visible="False" ForeColor="#372C59" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
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
                    <td align="center">
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
        <asp:Panel ID="pDatosModi"  runat="server" Height="242px" Width="768px" Visible="False" ForeColor="#372C57" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
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
                        <asp:ImageButton ID="bVolverAreaUsuario" runat="server" ImageUrl="~/imagenes/volveratuarea.png" />
                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>


          <asp:Panel ID="pPedidos" runat="server" BorderColor="Black" Height="529px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid">
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
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="63px" ImageAlign="Middle" ImageUrl="~/Imagenes/nuevopedido2.png" Width="250px" />
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
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="63px" ImageAlign="Middle" ImageUrl="~/Imagenes/todoslospedidos.png" Width="250px" />
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
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="63px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminar.png" Width="250px" />
                            </td>
                            <td class="auto-style45"></td>
                        </tr>
                    </table>
              </asp:Panel>





         <asp:Panel ID="pNuevoPedido" runat="server" BorderColor="Black" Height="800px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarseg.png" Visible="false" BorderStyle="Solid">
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
                     <td align="center">
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
                
                 <asp:Panel ID="pPedidoCreado" runat="server" BorderColor="Black" Height="256px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid">
                     <br />
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" style="font-size: x-large">
                                 <asp:Label ID="lPedidoCreado" runat="server" Text="A continuar en proxima clase" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                     <table style="width:100%;">
                        
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="ImageButton5" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminar.png" Width="212px" />
                             </td>
                         </tr>
                     </table>
                     <br />

                     </asp:Panel>

         <asp:Panel ID="pHistorico" runat="server" BorderColor="Black" Height="420px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid">
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
                         <asp:Panel ID="pVerUnPedido" runat="server" BorderColor="#66CCFF" Height="385px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false">
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

        <asp:Panel ID="pCambiarDatosAdmin" runat="server" Height="583px" Width="770px" Visible="False" ForeColor="#372C59" BackImageUrl="~/imagenes/datospersonales.jpg" Font-Bold="True" BorderColor="Black" BorderStyle="Solid">
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
              
        <asp:Panel ID="pProductos" runat="server" CssClass="auto-style66" Height="543px" Visible="False" Width="777px">
            <table class="auto-style67">
                <tr>
                    <td class="auto-style68">
                        <asp:GridView ID="gDatosProduc" runat="server" Height="492px" Width="413px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style74">
                        <table class="auto-style69">
                            <tr>
                                <td class="auto-style73" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lBuscarProd" runat="server" Text="Buscar Producto"></asp:Label>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="tBuscarProd" runat="server" CssClass="auto-style10" Width="234px"></asp:TextBox>
&nbsp;
                                    <asp:Button ID="bBuscarProd" runat="server" BackColor="Gray" BorderColor="Black" Font-Size="X-Small" ForeColor="White" Text="Buscar" Width="68px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lTipoProd" runat="server" Text="Tipo de Producto:"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="didTipoProduc" runat="server" Height="36px" Width="203px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lNombreProd" runat="server" Text="Nombre:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tNombreProd" runat="server" Height="24px" Width="197px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lPrecioSIVA" runat="server" Text="Valor Sin IVA:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tValorSIVAProd" runat="server" Height="24px" Width="197px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="Label1118" runat="server" Text="Valor Final:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tValorFinalProd" runat="server" Height="24px" Width="197px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lStockProd" runat="server" Text="Stock"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tStockProd" runat="server" Height="24px" Width="197px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style72">
                                    <asp:Label ID="lIvaProd" runat="server" Text="IVA:"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="didTipoIVA" runat="server" Height="36px" Width="203px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bEliminarProd" runat="server" BackColor="Gray" Font-Size="X-Small" ForeColor="White" Text="Eliminar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bAgregarProd" runat="server" BackColor="Gray" Font-Size="X-Small" ForeColor="White" Text="Agregar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="bModificarProd" runat="server" BackColor="Gray" Font-Size="X-Small" ForeColor="White" Height="22px" Text="Modificar" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </asp:Panel>

         <asp:Panel ID="pPedidoAnulado" runat="server" BorderColor="Black" Height="256px" ForeColor="#372C57" Font-Size="Large" BackImageUrl="~/Imagenes/fondoregistrarse.png" Visible="false" BorderStyle="Solid">
                     <br />
                     <br />
                     <table style="width:100%;">
                         <tr>
                             <td align="center" style="font-size: x-large">
                                 <asp:Label ID="lPedidoAnulado" runat="server" Text="A continuar en proxima clase" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="Black" Font-Size="X-Large" BackColor="Silver"></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                     <table style="width:100%;">
                        
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="bPedidoAnulado" runat="server" Height="45px" ImageAlign="Middle" ImageUrl="~/Imagenes/terminar.png" Width="212px" />
                             </td>
                         </tr>
                     </table>
                     <br />

                     </asp:Panel>
        <asp:Panel ID="pPedidosCliente" runat="server" Height="600px" Visible="False">

        </asp:Panel>
      

    </form>
</body>
</html>