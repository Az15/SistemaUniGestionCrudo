Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class _Default
    Inherits System.Web.UI.Page

    'conexion SQL'
    Public x As Integer
    Public connectionstring As String = ConfigurationManager.ConnectionStrings(ConfigurationManager.AppSettings("Conexion")).ToString()
    Public EmailActivo As String = ConfigurationManager.AppSettings("EmailActivo")
    Public Email As String = ConfigurationManager.AppSettings(EmailActivo)
    Public EmailPass As String = ConfigurationManager.AppSettings(EmailActivo & "Pass")




    Dim con As New SqlConnection(connectionstring)
    Dim ar As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub bPortada_Click(sender As Object, e As ImageClickEventArgs) Handles bPortada.Click

    End Sub


    Protected Sub bRegistrarse_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarse.Click
        LimpiarErroresRegistroU()

        pLogin.Visible = False
        pRegistrarse.Visible = True
    End Sub


    Protected Sub bRegistraseU_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistraseU.Click
        Dim ok As Boolean = True

        LimpiarErroresRegistroU()

        tNombreU.Text = tNombreU.Text.Trim.ToUpper
        If comprobar(tNombreU.Text) = False Then
            ArreglarCampo(tNombreU)
            ok = False
            lENombreU.Text = "El nombre contenía caracteres inválidos, fueron quitados."
            lENombreU.Visible = True
        End If

        tApellidoU.Text = tApellidoU.Text.Trim.ToUpper
        If comprobar(tApellidoU.Text) = False Then
            ArreglarCampo(tApellidoU)
            ok = False
            lEApellidoU.Text = "El apellido contenía caracteres inválidos, fueron quitados."
            lEApellidoU.Visible = True
        End If

        tDocU.Text = tDocU.Text.Trim
        If comprobar(tDocU.Text) = False Or Not IsNumeric(tDocU.Text) Then
            SoloNumeros(tDocU)
            ok = False
            lENombreU.Text = "El documento no era válido, se ajusto a número."
            lENombreU.Visible = True
        End If

        ArreglarCampo(tEmailU)
        If ValidateEmail(tEmailU.Text) = False Then
            ok = False
            lEEmailU.Text = "El email no es válido."
            lEEmailU.Visible = True
        End If

        tLocalidadU.Text = tLocalidadU.Text.Trim.ToUpper
        If comprobar(tLocalidadU.Text) = False Then
            ArreglarCampo(tLocalidadU)
            ok = False
            lELocalidadU.Text = "La localidad contenía caracteres inválidos, fueron quitados."
            lELocalidadU.Visible = True
        End If

        tDireccionU.Text = tDireccionU.Text.Trim.ToUpper
        If comprobar(tDireccionU.Text) = False Then
            ArreglarCampo(tDireccionU)
            ok = False
            lEDireccionU.Text = "La dirección contenía caracteres inválidos, fueron quitados."
            lEDireccionU.Visible = True
        End If

        tTelefonosU.Text = tTelefonosU.Text.Trim.ToUpper
        If comprobar(tTelefonosU.Text) = False Then
            ArreglarCampo(tTelefonosU)
            ok = False
            lETelefonosU.Text = "El télefono contenía caracteres inválidos, fueron quitados."
            lETelefonosU.Visible = True
        End If

        Dim FechaNacimiento As Date
        ControlDeNacimiento(tF_Nac, ok, lEFNac, lEdad, True, FechaNacimiento)

        tUsuarioU.Text = tUsuarioU.Text.Trim.ToUpper
        If comprobar(tUsuarioU.Text) = False Or tUsuarioU.Text.IndexOf(" ") > -1 Then
            tUsuarioU.Text = tUsuarioU.Text.Replace(" ", "")
            ArreglarCampo(tUsuarioU)
            ok = False
            lEUsuarioU.Text = "El usuario contenía caracteres inválidos, fueron quitados."
            lEUsuarioU.Visible = True
        End If
        If tUsuarioU.Text.Length < 5 Then
            ok = False
            lEUsuarioU.Text = "El usuario debe contener de 5 a 10 caracteres, letras y/o números."
            lEUsuarioU.Visible = True
        End If

        tPassU.Text = tPassU.Text.Trim
        If comprobar(tPassU.Text) = False Or tPassU.Text.IndexOf(" ") > -1 Then
            tPassU.Text = tPassU.Text.Replace(" ", "")
            ArreglarCampo(tPassU)
            ok = False
            lEPassU.Text = "La clave contenía caracteres inválidos. Itente con letras y números"
            lEPassU.Visible = True
        End If
        If tPassU.Text.Length < 5 Then
            ok = False
            lEPassU.Text = "La clave debe contener de 5 a 10 caracteres, letras y/o números."
            lEPassU.Visible = True
        End If

        tPass2U.Text = tPass2U.Text.Trim
        If comprobar(tPass2U.Text) = False Or tPass2U.Text.IndexOf(" ") > -1 Then
            tPass2U.Text = tPass2U.Text.Replace(" ", "")
            ArreglarCampo(tPass2U)
            ok = False
            lEPass2U.Text = "La segunda clave contenía caracteres inválidos. Itente con letras y números"
            lEPass2U.Visible = True
        End If

        If ok = False Then
            lErroresU.Text = "Revise los errores e intente nuevamente."
            lErroresU.Visible = True
            Exit Sub
        End If

        If tPassU.Text <> tPass2U.Text Then
            ok = False
            lEPass2U.Text = "Las claves no coinciden. Revise e intente nuevamente."
            lEPass2U.Visible = True
        End If

        Session("Usuario") = tUsuarioU.Text
        Session("Password") = tPassU.Text
        Session("TipoDocumento") = dTDocU.SelectedValue.Trim
        Session("Documento") = tDocU.Text.Trim
        Session("Email") = tEmailU.Text.Trim
        If YaExisteSQL("select idusuario from usuarios where usuario='" & Session("Usuario") & "'") Then
            ok = False
            lEUsuarioU.Text = "El usuario elegido ya existe. Pruebe con otro."
            lEUsuarioU.Visible = True
        End If
        If YaExisteSQL("select idusuario from usuarios where doc='" & Session("Documento") & "' and tdoc='" & Session("TipoDocumento") & "'") Then
            ok = False
            lEDocU.Text = "Ya existew el " & Session("TipoDocumento") & " " & Session("Documento") & "."
            lEDocU.Visible = True
        End If
        'Te puse este para Verificar que no este el mail repe --- Faltaria que revise tambien el de los de ADM
        If YaExisteSQL("select idusuario from usuarios where Email='" & Session("Email") & "'") Then
            ok = False
            lEEmailU.Text = "Este" & Session("Mail") & "esta siendo utilizado. Por favor, ingrese otro."
            lEEmailU.Visible = True
        End If

        If ok = False Then
            lErroresU.Text = "Solo se permite una inscripción por persona."
            lErroresU.Visible = True
            Exit Sub
        End If
        Session("Usuario") = tUsuarioU.Text.ToLower
        Session("Password") = tPassU.Text
        Session("TipoDocumento") = dTDocU.SelectedValue.Trim
        Session("Documento") = tDocU.Text.Trim
        Session("ApellidoYNombre") = tNombreU.Text.Trim & " " & tApellidoU.Text.Trim
        Session("Email") = tEmailU.Text.Trim


        If ok Then
            pRegistrarse.Visible = False

        End If
        LimpiarErroresRegistroU()


        Session("sqlIngreso") = "insert into Usuarios (Apellido,Nombre,tDoc,Doc,Usuario,Pass,Email,idProv,Localidad,Direccion,Telefonos,fNacimiento,activo) values('" & tApellidoU.Text.Trim & "','" & tNombreU.Text.Trim & "','" & Session("TipoDocumento") & "','" & Session("Documento") & "','" & Session("Usuario") & "','" & Session("Password") & "','" & Session("Email") & "'," & didProvU.SelectedIndex & ",'" & tLocalidadU.Text.Trim & "','" & tDireccionU.Text.Trim & "','" & tTelefonosU.Text.Trim & "','" & FechaNacimiento.ToString("yyyy-MM-dd") & "', 1)"
        Dim codigo As String = CreaCodigo(4)
        Session("Codigo") = codigo

        Dim en As String = Chr(13) & Chr(10), mensaje As String, xusuario As String = Session("ApellidoYNombre")
        mensaje = "Es un placer informarle " & Session("ApellidoYNombre") & "." & en & en & en & " Que ya se encuentra a un paso de tener su cuenta en AfterTech!, en respuesta a tu solicitud de registro como nuevo usuario te solicitamos que:" & en & en & "Por favor, ingreses el código: " & codigo & " en el cuadro de texto del codigo de verificación y presiones Validar. Esto completará tu registro como nuevo usuario y podras empezar a disfrutar del servicio." & en & en & "Saludos Cordiales!" & en & "Staff AfterTech." & en & en & en & "Este email se generó de manera automnatica, favor de no responder. Muchas gracias!" & en & en

        Dim EmailOK As String = EnviarMail(Session("Email"), "¡Bienvenido a AfterTech. Tu tienes problemas nosotros la solucion!", mensaje)
        tValidar.Text = ""
        lCodigo.Visible = False
        pRegistrarse.Visible = False
        pVerificarMail.Visible = True


    End Sub

    Protected Sub bRegistrarseU0_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarseU0.Click
        pLogin.Visible = True
        pRegistrarse.Visible = False
    End Sub

    Protected Sub bTodook_Click(sender As Object, e As ImageClickEventArgs) Handles bTodook.Click
        pBienvenido.Visible = False
        pLogin.Visible = True
    End Sub

    Sub ArreglarCampo(ByRef campo As TextBox)
        campo.Text = campo.Text.Trim.Replace("'", "").Replace("""",
        "").Replace("*", "").Replace("+", "").Replace("-", "").Replace("/",
        "").Replace(":", "").Replace("`", "").Replace("<", "").Replace(">",
        "").Replace("=", "").Replace("&", "")
    End Sub

    Function comprobar(ByVal user As String) As Boolean
        If user Is System.DBNull.Value Then
            Return False
        Else
            Dim aux As Boolean = True
            Dim listanegra, x As String
            listanegra = "'*+-/:;`><&" & """"
            If user <> "" Then
                For Each x In user
                    If aux = True Then
                        If InStr(1, listanegra, x) > 0 Then
                            aux = False
                        Else
                            aux = True
                        End If
                    Else
                        Return False
                    End If
                Next
                If aux = True Then
                    Return True
                End If
            Else
                Return False
            End If
        End If
    End Function

    Sub LimpiarErroresRegistroU()
        lErroresU.Text = ""
        lErroresU.Visible = False
        lEFNac.Visible = False
        lEFNac.Text = ""
        lENombreU.Text = ""
        lEApellidoU.Text = ""
        lEDocU.Text = ""
        lEEmailU.Text = ""
        lELocalidadU.Text = ""
        lEDireccionU.Text = ""
        lETelefonosU.Text = ""
        lEUsuarioU.Text = ""
        lEPassU.Text = ""
        lEPass2U.Text = ""
        lENombreU.Visible = False
        lEApellidoU.Visible = False
        lEDocU.Visible = False
        lEEmailU.Visible = False
        lELocalidadU.Visible = False
        lEDireccionU.Visible = False
        lETelefonosU.Visible = False
        lEUsuarioU.Visible = False
        lEPassU.Visible = False
        lEPass2U.Visible = False
    End Sub

    Sub LimpiarRegustroU()
        LimpiarErroresRegistroU()
        pRegistrarse.Visible = False

        tNombreU.Text = ""
        tApellidoU.Text = ""
        dTDocU.SelectedIndex = 0
        '' dTDocU.Text = ""
        tEmailU.Text = ""
        didProvU.SelectedIndex = 0
        tLocalidadU.Text = ""
        tDireccionU.Text = ""
        tTelefonosU.Text = ""
        tUsuarioU.Text = ""
        tPassU.Text = ""
        tPass2U.Text = ""
    End Sub

    Public Function ValidateEmail(ByVal email As String) As Boolean
        Dim emailRegex As New System.Text.RegularExpressions.Regex("^(?<user>[^@]+)@(?<host>.+)$")
        Dim emailMatch As System.Text.RegularExpressions.Match = emailRegex.Match(email)
        Return emailMatch.Success
    End Function

    Sub SoloNumeros(ByRef campo As TextBox)
        Dim cam As String = campo.Text.Trim, salida As String = "", c As String
        For Each c In cam
            If IsNumeric(c) Then salida &= c
        Next
        campo.Text = salida
    End Sub
    Sub ControlDeNacimiento(ByRef xtF_nac As TextBox, ByRef ok As Boolean,
                           ByRef xlEFNac As Label, ByRef xlEdad As Label,
                           ByVal Valida18 As Boolean, ByRef FechaNacimiento As Date)
        ArreglarCampo(xtF_nac)
        xlEFNac.Visible = False
        If xtF_nac.Text.Length < 6 Then
            ok = False
            xlEFNac.Text &= "El campo fecha de nacimiento debe tener 6 números"
            xlEdad.Text = "0"
            xlEFNac.Visible = True
        Else
            Dim FechaX As String = xtF_nac.Text
            Dim AñoX As Integer = VNum(FechaX.Substring(4, 2))
            If AñoX + 2000 > Date.Today.Year Then AñoX += 1900 Else AñoX += 2000
            FechaX = AñoX.ToString.Trim & "-" & FechaX.Substring(2, 2) & "-" & FechaX.Substring(0, 2)
            If Not IsDate(FechaX) Then
                ok = False
                xlEFNac.Text &= "El campo fecha de nacimiento, es una fecha inválida."
                xlEdad.Text = "0"
                xlEFNac.Visible = True
            Else
                Dim dFechax As Date
                dFechax = CDate(FechaX)
                FechaNacimiento = dFechax
                If dFechax > Date.Today Then
                    ok = False
                    xlEFNac.Text &= "Nació en el futuro...."
                    xlEdad.Text = "0"
                    xlEFNac.Visible = True
                Else
                    Dim Edad As Integer = CalcularEdad(dFechax)
                    xlEdad.Text = Edad
                    If Edad < 18 And Valida18 Then
                        ok = False
                        xlEFNac.Text &= "Debe ser mayor de edad (18 años)."
                        xlEdad.Text = "0"
                        xlEFNac.Visible = True
                    End If
                End If
            End If
        End If
    End Sub
    Function VNum(ByVal NTexto As String) As Decimal
        Return CDec(Val(NTexto.Trim.Replace(",", ".")))
    End Function

    Function NumSQL(ByVal numero As String) As String
        Return CStr(VNum(numero)).Trim.Replace(",", ".")
    End Function
    Function RellenaNum(ByVal numero As Integer, ByVal cantidad As Integer)
        Dim snum As String = CStr(numero).Trim
        Return "00000000000000000000".Substring(0, cantidad - snum.Length) & snum
    End Function
    Function FechaSQL(ByVal fecha As Date) As String
        Return "'" & RellenaNum(Year(fecha), 4) & RellenaNum(Month(fecha), 2) & RellenaNum(fecha.Day, 2) & "'"
    End Function
    Public Function AñoMes(ByVal fecha As Date) As String
        Return RellenaNum(Year(fecha), 4) & "-" & RellenaNum(Month(fecha), 2)
    End Function
    Public Function Vstr(ByVal cosa As Object) As String
        If IsDBNull(cosa) Then Return "" Else Return CStr(cosa)
    End Function
    Function CalcularEdad(ByVal FechaNac As Date) As Integer
        Dim edad As Integer = DateTime.Today.AddTicks(-FechaNac.Ticks).Year - 1
        Return edad
    End Function
    Public Function SQL_Accion(ByVal Sql_de_accion As String) As Boolean
        Dim adapter As New SqlDataAdapter, salida As Boolean = True
        Try
            If con.State = ConnectionState.Closed Then con.Open()
            If Sql_de_accion.ToUpper.IndexOf("INSERT") Then
                adapter.InsertCommand = New SqlCommand(Sql_de_accion, con)
                adapter.InsertCommand.ExecuteNonQuery()
            Else
                If Sql_de_accion.ToUpper.IndexOf("UPDATE") Then
                    adapter.UpdateCommand = New SqlCommand(Sql_de_accion, con)
                    adapter.UpdateCommand.ExecuteNonQuery()
                Else
                    If Sql_de_accion.ToUpper.IndexOf("DELETE") Then
                        adapter.DeleteCommand = New SqlCommand(Sql_de_accion, con)
                        adapter.DeleteCommand.ExecuteNonQuery()
                    Else
                        salida = False
                    End If
                End If
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Return salida
    End Function
    Function LeeUnCampo(ByVal sql As String, ByVal campo As String) As Object
        Dim da1 As New SqlDataAdapter(sql, con)
        Dim ds1 As New DataSet
        Try
            If con.State = ConnectionState.Closed Then con.Open()
            da1.Fill(ds1, "datos")
            If ds1.Tables("datos").Rows.Count < 1 Then
                Return "**NADA**"
            Else
                Return ds1.Tables("datos").Rows(0)(campo)
            End If
        Catch ex As Exception
            Return "**ERRRO**"
        End Try
    End Function
    Public Function YaExisteSQL(ByVal sql As String) As Boolean
        Dim con As New SqlConnection(connectionstring)
        Dim da1 As New SqlDataAdapter(sql, con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "afidesc")
        If ds1.Tables("afidesc").Rows.Count < 1 Then
            Return False
        Else
            Return True
        End If
    End Function

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        QueEs()
        ''  Session("QueEs") = "Usuarios"

        Loguea()
    End Sub

    Sub Loguea()
        Dim usu As String = tUsuario.Text.Trim.ToUpper, pass As String = tClave.Text.Trim
        If comprobar(tUsuario.Text.Trim) = False Or comprobar(tClave.Text.Trim) = False Then
            lErrorLoguin.Text = "El usuario o la clave son incorrectos. Revise por favor."
            lErrorLoguin.Visible = True
            Exit Sub
        End If

        If (Session("QueEs") = "NoExiste") Then
            lErrorLoguin.Text = "El usuario no Existe. Revise por favor."
            lErrorLoguin.Visible = True
        Else
            Dim da1 As New SqlDataAdapter("select * from " & Session("QueEs") &
                                    " where upper (ltrim(rtrim(usuario)))='" & usu & "' and ltrim(rtrim(pass))='" & pass & "'", con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "Login")
            If ds1.Tables("Login").Rows.Count = 0 Then
                lErrorLoguin.Text = "El usuario o la clave son incorrectos. Revise por favor."
                lErrorLoguin.Visible = True
                Exit Sub
            End If
            Select Case Session("QueEs")
                Case "Usuarios"
                    Session("idUsuario") = ds1.Tables("Login").Rows(0)("idUsuario")
                    Session("Usuario") = usu
                    Session("Password") = pass
                    Session("TipoDocumento") = ds1.Tables("Login").Rows(0)("tDoc")
                    Session("Documento") = ds1.Tables("Login").Rows(0)("Doc").ToString.Trim
                    Session("ApellidoYNombre") = ds1.Tables("Login").Rows(0)("Nombre").ToString.Trim & " " & ds1.Tables("Login").Rows(0)("Apellido").ToString.Trim
                    Session("Email") = ds1.Tables("Login").Rows(0)("Email").ToString.Trim
                    Session("idprov") = ds1.Tables("Login").Rows(0)("idprov").ToString.Trim
                    Session("Localidad") = ds1.Tables("Login").Rows(0)("Localidad").ToString.Trim
                    Session("Direccion") = ds1.Tables("Login").Rows(0)("Direccion").ToString.Trim
                    Session("Telefonos") = ds1.Tables("Login").Rows(0)("Telefonos").ToString.Trim
                    Session("Activo") = ds1.Tables("Login").Rows(0)("Activo")

                    If (Session("Activo") = False) Then
                        lErrorLoguin.Text = "Te BANEARON :C"
                        lErrorLoguin.Visible = True


                    ElseIf (Session("Activo") = True) Then
                        lBienvenidoAreaU.Text = "Bienvenido " & Session("ApellidoYNombre") & ", a tu Área de " & Session("QueEs")
                        LimpiarErroresRegistroU()
                        bAhoraQueHago.Visible = True
                        pLogin.Visible = False
                        pAreaUsuario.Visible = True
                        bControlUsuario.Visible = False
                        bHacerPedido.Visible = True
                    Else

                        lErrorLoguin.Text = "Fallo Inesperado en el Login"
                        lErrorLoguin.Visible = True

                    End If




                Case "Administrador"
                    Session("idUsuario") = ds1.Tables("Login").Rows(0)("idAdm")
                    Session("Usuario") = usu
                    Session("Password") = pass
                    Session("TipoDocumento") = ds1.Tables("Login").Rows(0)("tDoc")
                    Session("Documento") = ds1.Tables("Login").Rows(0)("Doc").ToString.Trim
                    Session("ApellidoYNombre") = ds1.Tables("Login").Rows(0)("Nombre").ToString.Trim & " " & ds1.Tables("Login").Rows(0)("Apellido").ToString.Trim
                    Session("Email") = ds1.Tables("Login").Rows(0)("Email").ToString.Trim
                    Session("idprov") = ds1.Tables("Login").Rows(0)("idprov").ToString.Trim
                    Session("Localidad") = ds1.Tables("Login").Rows(0)("Localidad").ToString.Trim
                    Session("Direccion") = ds1.Tables("Login").Rows(0)("Direccion").ToString.Trim
                    Session("Telefonos") = ds1.Tables("Login").Rows(0)("Telefonos").ToString.Trim
                    lBienvenidoAreaU.Text = "Bienvenido " & Session("ApellidoYNombre") & ", a tu Área de " & Session("QueEs")
                    LimpiarErroresRegistroU()
                    bAhoraQueHago.Visible = False
                    bABMProductos.Visible = True
                    pLogin.Visible = False
                    pAreaUsuario.Visible = True
                    bHacerPedido.Visible = False

                    ''bPedidos.Visible = True
                    bControlUsuario.Visible = True
            End Select

        End If


    End Sub

    Protected Sub bAhoraQueHago_Click(sender As Object, e As ImageClickEventArgs) Handles bAhoraQueHago.Click
        pAreaUsuario.Visible = False
        pAhoraQueHago.Visible = True
    End Sub

    Sub LimpiarLogin()
        lErrorLoguin.Text = ""
        lErrorLoguin.Visible = False
        tUsuario.Text = ""
        tClave.Text = ""
        pRegistrarse.Visible = False
    End Sub

    Protected Sub bVolverLoginU1_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLoginU1.Click
        LimpiarLogin()
        LimpiarErroresRegistroU()
        lReenviarClave.Text = ""
        pLogin.Visible = True
        pAreaUsuario.Visible = False
        tUsuario.Text = Session("Usuario")
        tClave.Text = Session("Password")
        ''bPedidos.Visible = False
        bABMProductos.Visible = False
        Session.Contents.RemoveAll()
    End Sub

    Protected Sub bVolverLoginU2_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLoginU2.Click
        pAhoraQueHago.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub bModificarDatos_Click(sender As Object, e As ImageClickEventArgs) Handles bModificarDatos.Click

        If (Session("QueEs") = "Administrador") Then
            pAreaUsuario.Visible = False
            pCambiarDatosAdmin.Visible = True
        ElseIf (Session("QueEs") = "Usuarios") Then
            pAreaUsuario.Visible = False
            pCambiarDatosPersonales.Visible = True
        End If

    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverU4.Click
        pCambiarDatosPersonales.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub bCambiar_Click(sender As Object, e As ImageClickEventArgs) Handles bCambiar.Click
        Dim ok As Boolean = True

        LimpiarErroresRegistroU()


        If ValidateEmail(tEmailU0.Text) = False Then
            ArreglarCampo(tEmailU0)
            ok = False
            lEEmailU0.Text = "El email no es válido."
            lEEmailU0.Visible = True
        End If

        tLocalidadU0.Text = tLocalidadU0.Text.Trim.ToUpper
        If comprobar(tLocalidadU0.Text) = False Then
            ArreglarCampo(tLocalidadU0)
            ok = False
            lELocalidadU0.Text = "La localidad contenía caracteres inválidos, fueron quitados."
            lELocalidadU0.Visible = True
        End If

        tDireccionU0.Text = tDireccionU0.Text.Trim.ToUpper
        If comprobar(tDireccionU0.Text) = False Then
            ArreglarCampo(tDireccionU0)
            ok = False
            lEDireccionU0.Text = "La dirección contenía caracteres inválidos, fueron quitados."
            lEDireccionU0.Visible = True
        End If

        tTelefonosU0.Text = tTelefonosU0.Text.Trim.ToUpper
        If comprobar(tTelefonosU0.Text) = False Then
            ArreglarCampo(tTelefonosU0)
            ok = False
            lETelefonosU0.Text = "El télefono contenía caracteres inválidos, fueron quitados."
            lETelefonosU0.Visible = True
        End If

        tUsuarioU0.Text = tUsuarioU0.Text.Trim.ToUpper
        If comprobar(tUsuarioU0.Text) = False Or tUsuarioU0.Text.IndexOf(" ") > -1 Then
            tUsuarioU0.Text = tUsuarioU0.Text.Replace(" ", "")
            ArreglarCampo(tUsuarioU0)
            ok = False
            lEUsuarioU0.Text = "El usuario contenía caracteres inválidos, fueron quitados."
            lEUsuarioU0.Visible = True
        End If
        If tUsuarioU0.Text.Length < 5 Then
            ok = False
            lEUsuarioU0.Text = "El usuario debe contener de 5 a 10 caracteres, letras y/o números."
            lEUsuarioU0.Visible = True
        End If

        tPassU.Text = tPassU0.Text.Trim
        If comprobar(tPassU0.Text) = False Or tPassU0.Text.IndexOf(" ") > -1 Then
            tPassU0.Text = tPassU.Text.Replace(" ", "")
            ArreglarCampo(tPassU0)
            ok = False
            lEPassU0.Text = "La clave contenía caracteres inválidos. Itente con letras y números"
            lEPassU0.Visible = True
        End If
        If tPassU0.Text.Length < 5 Then
            ok = False
            lEPassU0.Text = "La clave debe contener de 5 a 10 caracteres, letras y/o números."
            lEPassU0.Visible = True
        End If

        If ok = False Then
            lErroresU0.Text = "Revise los errores e intente nuevamente."
            lErroresU0.Visible = True
            Exit Sub
        End If


        Session("Usuario") = tUsuarioU0.Text.ToLower
        Session("Password") = tPassU0.Text
        Session("Email") = tEmailU0.Text.Trim
        LimpiarErroresRegistroU()

        If SQL_Accion("update Usuarios set Email='" & Session("Email") & "', idProv ='" & didProvU.SelectedValue & "', Localidad = '" & tLocalidadU0.Text.Trim & "', Direccion = '" & tDireccionU0.Text.Trim & "', Telefonos = '" & tTelefonosU0.Text.Trim & "', Usuario='" & Session("Usuario") & "', Pass='" & Session("Password") & "' where Doc = '" & Session("Documento") & "'") Then
            lErroresU0.Text = " Se ha producido un error al querer guardar tus datos..."
            lErroresU0.Visible = True
        End If
        LimpiarErroresRegistroU()
        pCambiarDatosPersonales.Visible = False
        pDatosModi.Visible = True





    End Sub

    Protected Sub bVolverAreaUsuario_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverAreaUsuario.Click
        pDatosModi.Visible = False
        pAreaUsuario.Visible = True
    End Sub




    Sub CargarHelados()
        Dim x As Integer = 0, cosa As String
        Dim da2 As New SqlDataAdapter("Select * from Web_Helados order by gusto", con)
        Dim ds2 As New DataSet

        dHelados.Items.Clear()
        da2.Fill(ds2, "dato")
        If ds2.Tables("dato").Rows.Count = 0 Then
            dHelados.Items.Add("*** NO hay helados disponibles en este momento...***")
            Exit Sub
        End If
        For x = 0 To ds2.Tables("dato").Rows.Count - 1
            cosa = ds2.Tables("dato").Rows(x)("gusto").ToString.Trim


            dHelados.Items.Add(cosa)
        Next
        dHelados.SelectedIndex = 0
        lCosaAgregar.Text = dHelados.SelectedItem.ToString
        lQueEs.Text = "Helado"
    End Sub

    Sub CargaTemporal()
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim consulta As String = "select item, cantidad from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " order by item"
        Dim da1 As New SqlDataAdapter(consulta, con)

        Dim ds1 As New DataSet
        da1.Fill(ds1, "histo")
        gListaPedido.DataSource = ds1.Tables("histo")
        gListaPedido.DataBind()

        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico.Text = ""
            gListaPedido.Visible = False
            bSolicitarPedido.Visible = False
            bQuitarTodos.Visible = False
            lErrorPedido.Visible = False
        Else

            gListaPedido.Visible = True
            bSolicitarPedido.Visible = True
            bQuitarTodos.Visible = True
            lErrorPedido.Visible = True
        End If

    End Sub



    'Botones para moverse entre panelees'
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        '' cargatemporal2()
        CargarProductoscli(gListaProductos)
        pPedidos.Visible = False
        pPedidosCliente.Visible = True
    End Sub

    Protected Sub ImageButton3_Click1(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        CargarHistorico()
        '' pHistorico.Visible = True
        '' pPedidos.Visible = False
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        pPedidos.Visible = False
        pAreaUsuario.Visible = True
        pPortada.Visible = True
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        If (Session("QueEs") = "Usuarios") Then
            pPedidoCreado.Visible = False
            pPedidos.Visible = True
            cargatemporal2()
            lTotalProductos.Text = 0
            lPTC.Text = 0
        End If

        If (Session("QueEs") = "Administrador") Then
            pPedidoCreado.Visible = False
            pControlADM.Visible = True
        End If

    End Sub

    Protected Sub bCancelarPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bCancelarPedido.Click
        If SQL_Accion("delete web_pedidos_temporal where num_cli=" & VNum(Session("idUsuario"))) Then

        End If
        pNuevoPedido.Visible = False
        pPedidos.Visible = True
    End Sub

    Protected Sub bTerminarHistorico_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarHistorico.Click
        pHistorico.Visible = False
        pPedidos.Visible = True
    End Sub

    Protected Sub bInstrucciones_Click(sender As Object, e As EventArgs) Handles bInstrucciones.Click
        If bInstrucciones.Text = "Abrir Instrucciones" Then
            bInstrucciones.Text = "Cerrar Instrucciones"
            lInstrucciones.Visible = True
        Else
            bInstrucciones.Text = "Abrir Instrucciones"
            lInstrucciones.Visible = False
        End If
    End Sub
    'Auto postback para que muestr que helado quiero'
    Protected Sub dHelados_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dHelados.SelectedIndexChanged
        lCosaAgregar.Text = dHelados.SelectedItem.ToString
        lQueEs.Text = "Helado"
    End Sub

    Protected Sub bAgregarALista_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bAgregarALista.Click
        Dim x As Integer = 0, c As String, numero As Integer = 0
        Dim Cosa As String = lCosaAgregar.Text.Trim

        If Cosa = "----------" Then Exit Sub

        Dim Cantidad As Integer = VNum(tCantLatas.SelectedValue.ToString)

        If Cantidad <= 0 Then Exit Sub
        lErrorPedido.Text = ""

        'veo si ya esta el item en la lista'


        Dim da2 As New SqlDataAdapter("select cantidad from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " and ltrim(rtrim(item))='" & Cosa & "'", con)
        Dim ds2 As New DataSet
        da2.Fill(ds2, "dato")

        If ds2.Tables("dato").Rows.Count > 0 Then
            'ya estaba, lo leo la cantidad y reemplazo

            Cantidad += VNum(ds2.Tables("Dato").Rows(0)("Cantidad"))

            If SQL_Accion("update web_pedidos_temporal set cantidad=" & Cantidad & " where num_cli=" & Session("idUsuario") & " and ltrim(rtrim(item))='" & Cosa & "'") = False Then
                lErrorPedido.Text = "No puedo Modificar el item elegido. Intente mas tarde."
                Exit Sub
            End If

        Else

            If SQL_Accion("insert into web_pedidos_temporal (num_cli, item, cantidad) values (" & Session("idUsuario") & ", '" & Cosa & "', " & Cantidad & ")") = False Then
                lErrorPedido.Text = "No puedo agregar el item a la lista. Intente mas tarde."
                Exit Sub
            End If
        End If
        tCantLatas.SelectedIndex = 0
        CargaTemporal()
    End Sub

    Protected Sub gListaPedido_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gListaPedido.RowCommand


        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gListaPedido.Rows(index)
        Dim Item As String = row.Cells(1).Text, en As String = Chr(13) & Chr(10)
        Dim consulta As String = "delete web_pedidos_temporal where ltrim(rtrim(item))= '" & Item & "' and num_cli=" & VNum(Session("idUsuario"))

        lErrorPedido.Text = ""

        If (e.CommandName = "Quitar") Then
            If SQL_Accion(consulta) = False Then
                lErrorPedido.Text = "No puedo quitar el item de la lista. Intente mas tarde."
                Exit Sub
            End If

            CargaTemporal()
        End If

    End Sub

    Protected Sub bQuitarTodos_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bQuitarTodos.Click

        If SQL_Accion("delete web_pedidos_temporal where num_cli=" & VNum(Session("idUsuario"))) = False Then
            lErrorPedido.Text = "No puedo quitar a todos los item de la lista. Intente mas tarde."
            Exit Sub
        End If
        CargaTemporal()
    End Sub

    Private Sub QueEs()
        If YaExisteSQL("select usuario from Usuarios where usuario='" & tUsuario.Text & "'") Then
            Session("QueEs") = "Usuarios"
        ElseIf YaExisteSQL("select usuario from Administrador where usuario='" & tUsuario.Text & "'") Then
            Session("QueEs") = "Administrador"
        Else
            Session("QueEs") = "NoExiste"
        End If
    End Sub

    Protected Sub bVolverA_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverA.Click
        pCambiarDatosAdmin.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub bCambiarA_Click(sender As Object, e As ImageClickEventArgs) Handles bCambiarA.Click
        Dim ok = True
        LimpiarErroresRegistroU()


        If ValidateEmail(tEmailU1.Text) = False Then
            ArreglarCampo(tEmailU1)
            ok = False
            lEEmailU0.Text = "El email no es válido."
            lEEmailU0.Visible = True
        End If

        tLocalidadU0.Text = tLocalidadU1.Text.Trim.ToUpper
        If comprobar(tLocalidadU1.Text) = False Then
            ArreglarCampo(tLocalidadU1)
            ok = False
            lELocalidadU0.Text = "La localidad contenía caracteres inválidos, fueron quitados."
            lELocalidadU0.Visible = True
        End If

        tDireccionU0.Text = tDireccionU1.Text.Trim.ToUpper
        If comprobar(tDireccionU1.Text) = False Then
            ArreglarCampo(tDireccionU1)
            ok = False
            lEDireccionU0.Text = "La dirección contenía caracteres inválidos, fueron quitados."
            lEDireccionU0.Visible = True
        End If

        tTelefonosU0.Text = tTelefonosU1.Text.Trim.ToUpper
        If comprobar(tTelefonosU1.Text) = False Then
            ArreglarCampo(tTelefonosU1)
            ok = False
            lETelefonosU0.Text = "El télefono contenía caracteres inválidos, fueron quitados."
            lETelefonosU0.Visible = True
        End If

        tUsuarioU1.Text = tUsuarioU1.Text.Trim.ToUpper
        If comprobar(tUsuarioU1.Text) = False Or tUsuarioU0.Text.IndexOf(" ") > -1 Then
            tUsuarioU0.Text = tUsuarioU1.Text.Replace(" ", "")
            ArreglarCampo(tUsuarioU1)
            ok = False
            lEUsuarioU1.Text = "El usuario contenía caracteres inválidos, fueron quitados."
            lEUsuarioU1.Visible = True
        End If
        If tUsuarioU1.Text.Length < 5 Then
            ok = False
            lEUsuarioU1.Text = "El usuario debe contener de 5 a 10 caracteres, letras y/o números."
            lEUsuarioU1.Visible = True
        End If

        tPassU1.Text = tPassU1.Text.Trim
        If comprobar(tPassU1.Text) = False Or tPassU1.Text.IndexOf(" ") > -1 Then
            tPassU1.Text = tPassU1.Text.Replace(" ", "")
            ArreglarCampo(tPassU1)
            ok = False
            lEPassU1.Text = "La clave contenía caracteres inválidos. Itente con letras y números"
            lEPassU1.Visible = True
        End If
        If tPassU1.Text.Length < 5 Then
            ok = False
            lEPassU1.Text = "La clave debe contener de 5 a 10 caracteres, letras y/o números."
            lEPassU1.Visible = True
        End If

        If ok = False Then
            lErroresU1.Text = "Revise los errores e intente nuevamente."
            lErroresU1.Visible = True
            Exit Sub
        End If


        Session("Usuario") = tUsuarioU1.Text.ToLower
        Session("Password") = tPassU1.Text
        Session("Email") = tEmailU1.Text.Trim
        LimpiarErroresRegistroU()

        If SQL_Accion("update Administrador set Email='" & Session("Email") & "', idProv ='" & didProvU1.SelectedValue & "', Localidad = '" & tLocalidadU1.Text.Trim & "', Direccion = '" & tDireccionU1.Text.Trim & "', Telefonos = '" & tTelefonosU1.Text.Trim & "', Usuario='" & Session("Usuario") & "', Pass='" & Session("Password") & "'where idAdm = '" & Session("idUsuario") & "'") Then
            lErroresU1.Text = " Se ha producido un error al querer guardar tus datos..."
            lErroresU1.Visible = True
        End If
        LimpiarErroresRegistroU()
        pCambiarDatosAdmin.Visible = False
        pDatosModi.Visible = True
    End Sub

    Protected Sub bABMProductos_Click(sender As Object, e As ImageClickEventArgs) Handles bABMProductos.Click
        pControlADM.Visible = False
        ''CargarProductos()
        pProductos.Visible = True
        CargarProductos()
        lErrorProducto.Visible = False
    End Sub

    Sub info()

    End Sub
    Sub CargarHistorico()
        lErrorHistorico.Text = ""
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim da1 As New SqlDataAdapter("select Npedido, fecha, estado from web_pedidos where num_cli=" & idU & " and estado<>'Enviado' order by npedido desc", con)
        Dim ds1 As New DataSet

        da1.Fill(ds1, "histo")
        gHistorico.DataSource = ds1.Tables("histo")
        gHistorico.DataBind()
        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico.Text = "No hay pedidos anteriores o hubo un error al cargarlos. Reintente más tarde."
            gHistorico.Visible = False
        Else
            gHistorico.Visible = True
        End If

        pPedidos.Visible = False
        pHistorico.Visible = True
    End Sub

    Sub CargarHistoricoADM()
        lErrorHistorico.Text = ""
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim da1 As New SqlDataAdapter("select Npedido, fecha, estado from web_pedidos order by npedido desc", con)
        Dim ds1 As New DataSet

        da1.Fill(ds1, "histo")
        gHistoricoADM.DataSource = ds1.Tables("histo")
        gHistoricoADM.DataBind()
        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico.Text = "No hay pedidos anteriores o hubo un error al cargarlos. Reintente más tarde."
            gHistoricoADM.Visible = False
        Else
            gHistoricoADM.Visible = True
        End If

        pControlADM.Visible = False
        gHistoricoADM.Visible = True
    End Sub


    Protected Sub gHis65torico_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gHistorico.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gHistorico.Rows(index)
        Dim Npedido As Integer = VNum(row.Cells(2).Text), en As String = Chr(13) & Chr(10)
        If (e.CommandName = "Ver") Then
            lDetallePedido.Text = "Detalle del Pedido N° " & Npedido

            lErrorVerUnPedido.Text = ""
            Dim da1 As New SqlDataAdapter("SELECT web_pedidos_detalle.item, " & "web_pedidos_detalle.Cantidad" & ",web_pedidos_detalle.Precio" & " FROM web_pedidos_detalle INNER JOIN Productos ON " & "web_pedidos_detalle.Item = Productos.Nombre WHERE web_pedidos_detalle.NPedido=" & Npedido & " ORDER BY Productos.CodP", con)

            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            gVerUnPedido.DataSource = ds1.Tables("histo")
            gVerUnPedido.DataBind()
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Reintente más tarde."
                gVerUnPedido.Visible = False
            Else
                gVerUnPedido.Visible = True
            End If
            pHistorico.Visible = False
            pVerUnPedido.Visible = True
        End If

        If (e.CommandName = "Anular") Then
            lErrorVerUnPedido.Text = ""

            Dim da1 As New SqlDataAdapter("SELECT estado from web_pedidos where NPedido=" & Npedido, con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")

            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "No se pudo acceder al pedido N° " & Npedido & ". Reintente más tarde."
                Exit Sub
            Else
                Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
                If Estado <> "Solicitado" Then
                    lErrorHistorico.Text = "El pedido tiene Estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame al distribuidor " & "por favor."
                    Exit Sub
                Else
                    If Estado = "Anulado" Then
                        lErrorHistorico.Text = "El pedido N° " & Estado & ", Ya estaba Anulado..."
                        Exit Sub
                    End If
                    lErrorVerUnPedido.Text = ""
                    If SQL_Accion("update web_pedidos set estado='Anulado' where npedido=" & Npedido) = False Then
                        lErrorHistorico.Text = "No se ha podido cambiar el estado, hubo algún " & "error de conexión. Por favor, reintente más tarde o llame a la " & "fábrica para avisar de la anulación."
                        Exit Sub
                    Else
                        lPedidoAnulado.Text = "El pedido N° " & Npedido & ", fue ANULADO"
                        pHistorico.Visible = False
                        pPedidoAnulado.Visible = True
                    End If
                End If
            End If
        End If
        'If (e.CommandName = "Anular") Then
        '    lErrorHistorico.Text = ""
        '    Dim da1 As New SqlDataAdapter("select estado from web_pedidos where npedido=" & Npedido, con)
        '    Dim ds1 As New DataSet
        '    da1.Fill(ds1, "histo")
        '    If ds1.Tables("histo").Rows.Count = 0 Then
        '        lErrorHistorico.Text = "No puedo acceder al pedido N° " & Npedido & ". Reintente más tarde."
        '        Exit Sub
        '    Else
        '        Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
        '        If Estado <> "Solicitado" Then
        '            lErrorHistorico.Text = "El pedido tiene Estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame a la fábrica por favor."
        '            Exit Sub
        '        Else
        '            If Estado = "Anulado" Then
        '                lErrorHistorico.Text = "El pedido N° " & Npedido & ", YA estaba Anulado..."
        '                Exit Sub
        '            End If
        '            lErrorHistorico.Text = ""
        '            If SQL_Accion("update web_pedidos set estado='Anulado' where npedido=" & Npedido) = False Then
        '                lErrorHistorico.Text = "No he podido cambiar el estado, hubo algún error de conexión. Por favor, reintente más tarde o llame al a fábrica para avisar de la anulación."
        '                Exit Sub
        '            Else
        '                lErrorHistorico.Text = "El pedido N° " & Npedido & ", fue ANULADO "

        '            End If
        '        End If
        '    End If
        'End If
    End Sub

    Protected Sub ImageButton8_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton8.Click
        CargarHistorico()
    End Sub

    Protected Sub ImageButton9_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton9.Click
        If (Session("QueEs") = "Administrador") Then
            CargarHistoricoADM()
            pVerUnPedido.Visible = False
            pHistoricoADM.Visible = True

        End If

        If (Session("QueEs") = "Usuarios") Then
            CargarHistorico()
            pVerUnPedido.Visible = False
            pHistorico.Visible = True
        End If




    End Sub

    Protected Sub bSolicitarPedido_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bSolicitarPedido.Click
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim npedido As Integer = 0, vItem As String = "", vTipo As String = "",
        vCantidad As Integer = 0, cosa As String
        Dim linea As String = "", en As String = Chr(13) & Chr(10)
        lErrorPedido.Text = ""
        If SQL_Accion("insert into web_pedidos (num_cli) values (" & Session("idUsuario") & ")") = True Then
            Dim da2 As New SqlDataAdapter("select top 1 npedido from web_pedidos where num_cli=" & Session("idUsuario") & " order by npedido desc", con)
            Dim ds2 As New DataSet
            da2.Fill(ds2, "dato")
            If ds2.Tables("dato").Rows.Count > 0 Then
                npedido = ds2.Tables("dato").Rows(0)("npedido")
                If SQL_Accion("INSERT INTO WEB_Pedidos_detalle ( item, Cantidad, NPedido ) " & "SELECT WEB_Pedidos_Temporal.Item, Web_Pedidos_Temporal.Cantidad," & npedido & " AS Npedido FROM Web_Pedidos_Temporal where num_cli=" & idU) = True Then
                    lPedidoCreado.Text = "El pedido N° " & npedido & ", fue creado correctamente."
                    pNuevoPedido.Visible = False
                    pPedidoCreado.Visible = True
                    If SQL_Accion("delete Web_Pedidos_Temporal where num_cli=" & idU) = False Then

                    End If
                Else
                    lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío o con carga parcial. Anúlelo e Intente más tarde"
                    Exit Sub
                End If
                Exit Sub
            Else
                lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío. Anúlelo e Intente más tarde."
                Exit Sub
            End If
        Else
            lErrorPedido.Text = "Hubo un error al intentar guardar el pedido. Intente mas tarde"
        End If



    End Sub

    Protected Sub bPedidoAnulado_Click(sender As Object, e As ImageClickEventArgs) Handles bPedidoAnulado.Click

        If (Session("QueEs") = "Administrador") Then
            CargarHistoricoADM()
            pPedidoAnulado.Visible = False
            pHistoricoADM.Visible = True

        End If

        If (Session("QueEs") = "Usuarios") Then
            CargarHistorico()
            pPedidoAnulado.Visible = False
            pHistorico.Visible = True
        End If



    End Sub

    Function EnviarMail(ByVal EmailDestino As String,
         ByVal Subject As String, ByVal Mensaje As String) As String
        Dim Resultado As String = "OK"
        Dim SmtpServer As New SmtpClient()
        Dim mail As New MailMessage()
        Try
            mail = New MailMessage()
            mail.From = New MailAddress(Email, "AfterTech")
            mail.To.Add(EmailDestino)
            mail.Subject = Subject
            mail.Body = Mensaje
            mail.IsBodyHtml = False
            mail.Priority = MailPriority.Normal

            If EmailActivo = "EmailGmail" Then
                SmtpServer.Credentials = New Net.NetworkCredential(Email, EmailPass)
                SmtpServer.Host = "smtp.gmail.com"
                SmtpServer.Port = 587
                SmtpServer.EnableSsl = True
            Else
                'Queda reservado para email don web'
                SmtpServer.Credentials = New Net.NetworkCredential(Email, EmailPass)
                SmtpServer.Host = "dtcwin033.ferozo.com"
                SmtpServer.Port = 465
                SmtpServer.EnableSsl = True
            End If
            SmtpServer.Send(mail)
        Catch ex As Exception
            Resultado = Err.Description
        End Try
        mail.Dispose()
        Return Resultado
    End Function

    Protected Sub bRecuperarClave_Click(sender As Object, e As ImageClickEventArgs) Handles bRecuperarClave.Click
        Dim usu As String = tUsuario.Text.Trim.ToUpper, email As String, xusuario As String, mensaje As String, pass As String
        Dim en As String = Chr(13) & Chr(10)

        If comprobar(usu) = False Then
            lReenviarClave.Text = " El usuario es incorrecto, Revisá por favor. "
            lReenviarClave.Visible = True
            Exit Sub
        End If

        Dim da2 As New SqlDataAdapter("select ltrim(rtrim(nombre)) + ' ' + ltrim(rtrim(apellido)) as usuario,pass," & " email from usuarios where upper(ltrim(rtrim(usuario)))='" & usu & "'", con)
        Dim ds2 As New DataSet

        da2.Fill(ds2, "Login")
        If ds2.Tables("Login").Rows.Count = 0 Then
            lReenviarClave.Text = " El usuario es incorrecto. Revisá por favor."
            lReenviarClave.Visible = True
            Exit Sub
        End If
        email = ds2.Tables("Login").Rows(0)("email").ToString.Trim.ToLower
        pass = ds2.Tables("Login").Rows(0)("pass").ToString.Trim.ToLower
        xusuario = ds2.Tables("Login").Rows(0)("usuario").ToString.Trim

        mensaje = "Hola buenas tardes " & xusuario & "." & en & en & "Le escribimos desde AfterTechAR estamos enviando los datos que olvido, en caso de no ser usted por ningun motivo envie estos datos a alguien mas." & en & en & "Su usuario es: " & """" & usu & """" & en & "Su clave es:" & """" & pass & """" & en & en & "Ya Podés volver a entrar y armar tus pedidos!" & en & "(Por favor no respondas a éste email, es automático... gracias!)" & en & en

        Dim ok As String = EnviarMail(email, "AfterTechAR - Clave Recuperada", mensaje)
        If ok = "OK" Then
            lReenviarClave.Text = " Ya te enviamos un mail con la clave! "
        Else
            lReenviarClave.Text = " Hubo un error al querer enviar el mail... "
        End If
        lReenviarClave.Visible = True
    End Sub

    Protected Sub gDatosProduc_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gDatosProduc.RowCommand



        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gDatosProduc.Rows(index)
        Dim codpro As String = VNum(row.Cells(1).Text)

        Dim consulta As String = "Select * from Productos where ltrim(rtrim(CodP))= '" & codpro & "' "
        ''Dim da As New SqlDataAdapter("SELECT  ltrim(rtrim(isnull(TipoDeProducto,'****'))) as tiproduct,ltrim(rtrim(isnull(Nombre,'****'))) as Nombre,ltrim(rtrim(isnull(Precio_Sin_IVA,'****'))) as psiniva,ltrim(rtrim(isnull(Precio_Final,'****'))) as pfinal,ltrim(rtrim(isnull(Stock,'****'))) as stock, ltrim(rtrim(isnull(Iva,'****'))) as iva from Productos where CodP=" & codpro, con)

        Session("CodigoProducto") = codpro
        Dim dapro As New SqlDataAdapter(consulta, con)
        Dim dspro As New DataSet



        If (e.CommandName = "Seleccionar") Then
            dapro.Fill(dspro, "Producto")

            If (didTipoProduc.Items.Count > 0) Then
                didTipoProduc.Items.Clear()
            End If

            '' Dim item = dspro.Tables("Producto").Rows(0)("TipoDeProducto").ToString.Trim.ToLower
            '' didTipoProduc.SelectedValue = dspro.Tables("Producto").Rows(0)("TipoDeProducto").ToString.Trim.ToLower
            didTipoProduc.Items.Add(dspro.Tables("Producto").Rows(0)("TipoDeProducto").ToString.Trim)
            tNombreProd.Text = dspro.Tables("Producto").Rows(0)("Nombre").ToString.Trim
            tValorSIVAProd.Text = dspro.Tables("Producto").Rows(0)("Precio_Sin_Iva").ToString.Trim
            tValorFinalProd.Text = dspro.Tables("Producto").Rows(0)("Precio_Final").ToString.Trim
            tStockProd.Text = dspro.Tables("Producto").Rows(0)("Stock").ToString.Trim
            didTipoIVA.SelectedValue = dspro.Tables("Producto").Rows(0)("IVA").ToString.Trim
            tNombreProd.ReadOnly = True
            lErrorProducto.Text = ""
            lErrorProducto.Visible = False

        End If


    End Sub

    Sub Mostrarproductos()
        Dim da2 As New SqlDataAdapter("Select TipoDeProducto from Productos order by TipoDeProducto", con)

    End Sub

    Sub CargarTipoProducto()
        Dim x As Integer = 0, cosa As String
        Dim da2 As New SqlDataAdapter("Select TipoDeProducto from Productos order by TipoDeProducto", con)
        Dim ds2 As New DataSet

        didTipoProduc.Items.Clear()

        da2.Fill(ds2, "producto")
        If ds2.Tables("producto").Rows.Count = 0 Then
            didTipoProduc.Items.Add("*** NO hay Productos disponibles en este momento...***")
            Exit Sub
        End If
        For x = 0 To ds2.Tables("producto").Rows.Count - 1
            cosa = ds2.Tables("producto").Rows(x)("TipoDeProducto").ToString.Trim


            didTipoProduc.Items.Add(cosa)
        Next

        didTipoProduc.SelectedIndex = 0
        '' lCosaAgregar.Text = dHelados.SelectedItem.ToString''

    End Sub

    Sub CargarStock()
        Dim x As Integer = 0, cosa As String
        Dim da2 As New SqlDataAdapter("Select Stock from Productos order by Stock", con)
        Dim ds2 As New DataSet

        didCantidadProd.Items.Clear()

        da2.Fill(ds2, "Stock")
        If ds2.Tables("Stock").Rows.Count = 0 Then
            didTipoProduc.Items.Add("*** NO hay Productos disponibles en este momento...***")
            Exit Sub
        End If
        For x = 0 To ds2.Tables("producto").Rows.Count - 1
            cosa = ds2.Tables("producto").Rows(x)("Stock").ToString.Trim


            didTipoProduc.Items.Add(cosa)
        Next

        didTipoProduc.SelectedIndex = 0
        '' lCosaAgregar.Text = dHelados.SelectedItem.ToString''

    End Sub
    'Cargar datos desde el boton"Productos"'
    Sub CargarProductos()
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select CodP, TipoDeProducto, Nombre from productos order by TipoDeProducto", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "produ")
        gDatosProduc.DataSource = dsprod.Tables("produ")
        gDatosProduc.DataBind()


    End Sub

    Sub CargarProductoscli(ByRef grill As GridView)
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select Nombre, Stock, Precio_Final from productos order by TipoDeProducto", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "producli")
        grill.DataSource = dsprod.Tables("producli")
        grill.DataBind()


    End Sub


    Sub Limpiarproducto()
        tNombreProd.Text = ""
        tNombreProd.ReadOnly = False
        tValorSIVAProd.Text = ""
        tValorFinalProd.Text = ""
        tStockProd.Text = ""
        didTipoIVA.SelectedValue = "10,5"
        CargarTipoProducto()

    End Sub

    Protected Sub bAgregarProd_Click(sender As Object, e As EventArgs) Handles bAgregarProd.Click
        AgregarProducto()
    End Sub

    Sub AgregarProducto()

        Dim ok
        tNombreProd.Text = tNombreProd.Text.Trim.ToUpper
        If comprobar(tNombreProd.Text) = False Then
            ArreglarCampo(tNombreProd)
            ok = False
            lErrorProducto.Text = "El nombre del producto contiene caracteres invalidos"
            lErrorProducto.Visible = True
        End If


        tValorSIVAProd.Text = tValorSIVAProd.Text.Trim
        If comprobar(tValorSIVAProd.Text) = False Or Not IsNumeric(tValorSIVAProd.Text) Then
            '' SoloNumeros(tValorSIVAProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Valor Sin IVA"
            lErrorProducto.Visible = True
        End If

        tValorFinalProd.Text = tValorFinalProd.Text.Trim
        If comprobar(tValorFinalProd.Text) = False Or Not IsNumeric(tValorFinalProd.Text) Then
            '' SoloNumeros(tValorFinalProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Valor Final"
            lErrorProducto.Visible = True
        End If

        tStockProd.Text = tStockProd.Text.Trim
        If comprobar(tStockProd.Text) = False Or Not IsNumeric(tStockProd.Text) Then
            '' SoloNumeros(tStockProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Stock"
            lErrorProducto.Visible = True
        End If

        didTipoIVA.Text = didTipoIVA.Text.Trim
        If comprobar(didTipoIVA.Text) = False Or Not IsNumeric(didTipoIVA.Text) Then
            '' SoloNumeros(tValorSIVAProd)
            ok = False
            lErrorProducto.Text = "Falta valores de Iva. Valor  IVA"
            lErrorProducto.Visible = True
        End If

        Session("tipodeproducto") = didTipoProduc.Text
        Session("tnombreproducto") = tNombreProd.Text
        Session("tvalorsiniva") = VNum2(tValorSIVAProd.Text)
        Session("tvalorfinal") = VNum2(tValorFinalProd.Text)
        Session("stock") = VNum2(tStockProd.Text)
        Session("iva") = VNum2(didTipoIVA.Text)





        If YaExisteSQL("select Nombre from Productos where Nombre='" & Session("tnombreproducto") & "'") Then
            ok = False
            lErrorProducto.Text = "El producto ya existe. Revise los datos de carga."
            lErrorProducto.Visible = True
            Limpiarproducto()

        ElseIf (tNombreProd.Text = "") Then

            lErrorProducto.Text = "Rellene los campos porfa"
            lErrorProducto.Visible = True

        Else
            LimpiarErroresRegistroU()
            If SQL_Accion("insert into Productos (TipoDeProducto,Nombre,Precio_Sin_IVA,Precio_Final,Stock,IVA) values('" & Session("tipodeproducto") & "','" & Session("tnombreproducto") & "','" & Session("tvalorsiniva") & "','" & Session("tvalorfinal") & "','" & Session("stock") & "','" & Session("iva") & "')") = False Then
                lErrorProducto.Text = " Se ha producido un error al querer guardar tus datos..."
                lErrorProducto.Visible = True

            End If

            Limpiarproducto()
                CargarProductos()
            End If



    End Sub

    Function VNum2(ByVal NTexto As String) As Decimal
        Return CDec(Val(NTexto.Trim.Replace(".", ",")))
    End Function

    Protected Sub bNuevoProd_Click(sender As Object, e As EventArgs) Handles bNuevoProd.Click
        Limpiarproducto()
    End Sub

    Protected Sub bModificarProd_Click(sender As Object, e As EventArgs) Handles bModificarProd.Click
        modificarprod()
    End Sub

    Sub modificarprod()

        Dim ok


        tValorSIVAProd.Text = tValorSIVAProd.Text.Trim
        If comprobar(tValorSIVAProd.Text) = False Or Not IsNumeric(tValorSIVAProd.Text) Then
            '' SoloNumeros(tValorSIVAProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Valor Sin IVA"
            lErrorProducto.Visible = True
        End If

        tValorFinalProd.Text = tValorFinalProd.Text.Trim
        If comprobar(tValorFinalProd.Text) = False Or Not IsNumeric(tValorFinalProd.Text) Then
            '' SoloNumeros(tValorFinalProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Valor Final"
            lErrorProducto.Visible = True
        End If

        tStockProd.Text = tStockProd.Text.Trim
        If comprobar(tStockProd.Text) = False Or Not IsNumeric(tStockProd.Text) Then
            '' SoloNumeros(tStockProd)
            ok = False
            lErrorProducto.Text = "El valor no corresponde a uno numerico. Stock"
            lErrorProducto.Visible = True
        End If



        If SQL_Accion("update Productos set Precio_Sin_IVA ='" & VNum2(tValorSIVAProd.Text) & "', Precio_Final ='" & NumSQL(tValorFinalProd.Text) & "', Stock = '" & NumSQL(tStockProd.Text) & "' where Nombre = '" & tNombreProd.Text.Trim & "'") Then
            lErrorProducto.Text = "El cambio se realizo con exito"
            lErrorProducto.Visible = True
            Limpiarproducto()
            CargarProductos()
        Else

            lErrorProducto.Text = " Se ha producido un error al querer guardar tus datos..."
            lErrorProducto.Visible = True
        End If



    End Sub



    Protected Sub bsalirproductos_Click(sender As Object, e As EventArgs) Handles bsalirproductos.Click
        pProductos.Visible = False
        pControlADM.Visible = True
        pPortada.Visible = True
    End Sub

    Protected Sub bEliminarProd_Click(sender As Object, e As EventArgs) Handles bEliminarProd.Click
        SQL_Accion("delete Productos where CodP=" & Session("codigoproducto"))
        Limpiarproducto()
        CargarProductos()
    End Sub

    Sub Buscarprod(ByVal condicion As String)
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select CodP, TipoDeProducto, Nombre from productos where Nombre like '" & condicion & "%' OR TipoDeProducto like '" & condicion & "%'", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "buscar")
        gDatosProduc.DataSource = dsprod.Tables("buscar")
        gDatosProduc.DataBind()
    End Sub
    Sub Filtrarprod(ByVal condicion As String)
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select CodP, TipoDeProducto, Nombre from productos where TipoDeProducto = '" & condicion & "'", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "buscar")
        gDatosProduc.DataSource = dsprod.Tables("buscar")
        gDatosProduc.DataBind()
    End Sub
    Sub BuscarUsu(ByVal condicion As String)
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select idUsuario, Nombre, Apellido, Email,Activo from Usuarios where Nombre like '" & condicion & "%' OR Apellido like '" & condicion & "%'", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "ban")
        gUsuariosBan.DataSource = dsprod.Tables("ban")
        gUsuariosBan.DataBind()
    End Sub
    Sub Buscarprodusu(ByVal condicion As String)
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select Nombre, Stock, Precio_Final from productos where Nombre like '%" & condicion & "%' OR TipoDeProducto like '%" & condicion & "%'", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "buscarusu")
        gListaProductos.DataSource = dsprod.Tables("buscarusu")
        gListaProductos.DataBind()
    End Sub
    Protected Sub bBuscarProd_Click(sender As Object, e As EventArgs) Handles bBuscarProd.Click
        Buscarprod(tBuscarProd.Text)
    End Sub

    Protected Sub bSalirBan_Click(sender As Object, e As EventArgs) Handles bSalirBan.Click
        pBanear.Visible = False
        pControlADM.Visible = True
    End Sub

    Sub cargarusuarios()
        Dim x As Integer = 0, cosa As String
        Dim daprod As New SqlDataAdapter("select idUsuario, Nombre, Apellido,Email,Activo from Usuarios order by idUsuario", con)
        Dim dsprod As New DataSet

        daprod.Fill(dsprod, "usertab")
        gUsuariosBan.DataSource = dsprod.Tables("usertab")
        gUsuariosBan.DataBind()
    End Sub


    Protected Sub gUsuariosBan_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gUsuariosBan.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gUsuariosBan.Rows(index)
        Dim ID As String = VNum(row.Cells(1).Text)

        Dim consulta As String = "Select * from Usuarios where ltrim(rtrim(idUsuario))= '" & ID & "' "

        Session("iduserban") = ID
        Dim dapro As New SqlDataAdapter(consulta, con)
        Dim dspro As New DataSet



        If (e.CommandName = "Seleccionar") Then
            dapro.Fill(dspro, "userban")


            lNombreBan.Text = (dspro.Tables("userban").Rows(0)("Nombre").ToString.Trim) & " " & dspro.Tables("userban").Rows(0)("Apellido").ToString.Trim
            lDNIBan.Text = dspro.Tables("userban").Rows(0)("DOC").ToString.Trim
            lMailBan.Text = dspro.Tables("userban").Rows(0)("Email").ToString.Trim

            lEstadoBan.Text = dspro.Tables("userban").Rows(0)("activo").ToString.Trim

            Session("MailBan") = lMailBan.Text

            If (lEstadoBan.Text = True) Then
                lEstadoBan.Text = "Activo"
                lEstadoBan.ForeColor = Drawing.Color.DarkGreen
            Else
                lEstadoBan.Text = "Suspendido"
                lEstadoBan.ForeColor = Drawing.Color.Red
            End If


            If (lMailBan.Text = "") Then
                lMailBan.Text = "El usuario no tiene EMAIL."

            End If

        End If

    End Sub

    Protected Sub bEliminarU_Click(sender As Object, e As EventArgs) Handles bEliminarU.Click
        If SQL_Accion("delete Usuarios where idUsuario=" & Session("iduserban")) Then

            Dim mensajeextra = "Su cuenta de AfterTech Fue eliminada por: " & tmensajeban.Text

            EnviarMail(Session("MailBan"), "Cuenta Eliminada", mensajeextra)

            lEliminadouser.Text = "El Usuario se elimino con exito"
            lEliminadouser.Visible = True
            cargarusuarios()
            limpiaruserban()

        End If
    End Sub

    Sub suspender()

        If SQL_Accion("update Usuarios set Activo='" & "false" & "' where idUsuario = '" & Session("iduserban") & "'") Then
            Dim mensajeextra = "Su cuenta de AfterTech Fue Suspendida por: " & tmensajeban.Text

            EnviarMail(Session("MailBan"), "Cuenta SUSPENDIDA!", mensajeextra)
            tmensajeban.Text = ""
            lEstadoBan.Text = "Suspendido"
            lEliminadouser.Text = "Cuenta suspendida"
            lEliminadouser.Visible = True
        End If


    End Sub

    Sub incorporar()


        If SQL_Accion("update Usuarios set Activo='" & "true" & "' where idUsuario = '" & Session("iduserban") & "'") Then
            Dim mensajeextra = "Su cuenta de AfterTech Fue reincorporada con exito. RAZON: " & tmensajeban.Text

            EnviarMail(Session("MailBan"), "Cuenta ACTIVA!", mensajeextra)
            tmensajeban.Text = ""
            lEstadoBan.Text = "Activo"
            lEliminadouser.Text = "Cuenta reincorporada"
            lEliminadouser.Visible = True
            limpiaruserban()

        End If
    End Sub

    Protected Sub bSuspenderU_Click(sender As Object, e As EventArgs) Handles bSuspenderU.Click
        suspender()
        cargarusuarios()
        limpiaruserban()
    End Sub

    Protected Sub bDesbanU_Click(sender As Object, e As EventArgs) Handles bDesbanU.Click
        incorporar()
        cargarusuarios()
        limpiaruserban()
    End Sub

    Sub limpiaruserban()
        lNombreBan.Text = ""
        lDNIBan.Text = ""
        lEstadoBan.Text = ""
        lMailBan.Text = ""
        Session("UserBan") = ""
        Session("MailBan") = ""
        Session("iduserban") = ""

    End Sub






    ' TAMBIEN TE CAMBIE EN EL bRegistrarse'

    Public Function CreaCodigo(ByVal cantCaracteres As Integer) As String
        Dim strRand As String = Nothing, r As New Random, c As String, i As Integer

        For i = 0 To cantCaracteres - 1

            If Math.Round(r.Next(0, 2)) = 0 Then
                c = Chr(Math.Round(r.Next(48, 58)))
            Else
                c = Chr(Math.Round(r.Next(65, 91)))
            End If
            strRand &= c
        Next
        Return strRand
    End Function

    Protected Sub bValidar_Click(sender As Object, e As EventArgs) Handles bValidar.Click
        'VerificarMail.visible = False
        Dim sqlIngreso As String = Session("sqlIngreso") & " "
        If sqlIngreso.Length < 10 Or sqlIngreso.IndexOf("insert") < 0 Then
            lErroresU.Text = "Hubo un error con el código. Por favor, trate de generar un nuevo código."
            lErroresU.Visible = True
            Exit Sub
        End If
        If tValidar.Text.Trim.ToUpper.Equals(Session("Codigo")) = False Then

            lCodigo.Visible = True
            Exit Sub
        End If

        If SQL_Accion(sqlIngreso) = False Then
            lErroresU.Text = "Hubo un error al tratar de validar al código. Por favor, trate de generar un nuevo código."
            lErroresU.Visible = True
            Exit Sub
        End If
        Session("idUsuario") = VNum(LeeUnCampo("select top 1 idUsuario from usuarios where Usuario ='" & Session("Usuario") & "' and Pass='" & Session("Password") & "' ", "idusuario"))
        lBienvenido.Text = "Bienvenido " & Session("ApellidoYNombre") & "!"

        Dim mensaje As String, xusuario As String = Session("ApellidoYNombre"), en As String = Chr(13) & Chr(10)
        mensaje = "Bienvenido" & xusuario & " a AfterTech." & en & en & "Le damos una cordial bienvenida a la plataforma que permite brindarte el mejor asesoaramiento." & en & en & "Tu usuario es " & """" & Session("Usuario") & """" & Session("Password") & """" & en & en & "Ya podés loguearte para ver tus datos." & en & en
        LimpiarRegustroU()
        pVerificarMail.Visible = False
        pRegistrarse.Visible = False
        pBienvenido.Visible = True
        bTodook.Focus()
    End Sub

    Protected Sub bRegresarRegistro_Click(sender As Object, e As EventArgs) Handles bRegresarRegistro.Click
        pVerificarMail.Visible = False
        tValidar.Text = ""
        pRegistrarse.Visible = True
    End Sub

    Protected Sub bCancelarValidar_Click(sender As Object, e As ImageClickEventArgs) Handles bCancelarValidar.Click
        pVerificarMail.Visible = False
        tValidar.Text = ""
        pLogin.Visible = True
    End Sub

    Protected Sub bBuscarban_Click(sender As Object, e As EventArgs) Handles bBuscarban.Click
        BuscarUsu(tbuscarusban.Text)
    End Sub





    Protected Sub bBuscarCar_Click(sender As Object, e As EventArgs) Handles bBuscarCar.Click
        Buscarprodusu(tBuscarCarrito.Text)
    End Sub

    Protected Sub bSalirCarrito_Click(sender As Object, e As EventArgs) Handles bSalirCarrito.Click
        pPedidosCliente.Visible = False
        pAreaUsuario.Visible = True
    End Sub



    Protected Sub lnkquitar_Click(sender As Object, e As EventArgs) Handles lnkquitar.Click
        Buscarprodusu("")
    End Sub

    Protected Sub gListaProductos_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gListaProductos.RowCommand

        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gListaProductos.Rows(index)
        Dim Nombre As String = row.Cells(1).Text.Trim

        Dim consulta As String = "Select * from Productos where ltrim(rtrim(Nombre))= '" & Nombre & "' "


        Dim dapro As New SqlDataAdapter(consulta, con)
        Dim dspro As New DataSet



        If (e.CommandName = "Seleccionar") Then
            dapro.Fill(dspro, "selectuser")


            lNombresel.Text = (dspro.Tables("selectuser").Rows(0)("Nombre").ToString.Trim)
            lTipoProdS.Text = dspro.Tables("selectuser").Rows(0)("TipoDeProducto").ToString.Trim
            lPrecioUs.Text = dspro.Tables("selectuser").Rows(0)("Precio_Final").ToString.Trim
            CargarStockcompra()

            lNombresel.Visible = True
            lTipoProdS.Visible = True
            lPrecioUs.Visible = True
            bAgregarProdc.Visible = True
            bAgregarProdc.Focus()

        End If

    End Sub

    Sub CargarStockcompra()
        Dim x As Integer = 0, cosa As String
        Dim da2 As New SqlDataAdapter("Select Stock from Productos  where Nombre= '" & lNombresel.Text & "' order by Stock", con)
        Dim ds2 As New DataSet

        didCantidadProd.Items.Clear()


        da2.Fill(ds2, "Stock")

        Dim stock = ds2.Tables("Stock").Rows(0)("Stock").ToString

        If ds2.Tables("Stock").Rows.Count = 0 Then
            didCantidadProd.Items.Add("*** NO hay Productos disponibles en este momento...***")
            Exit Sub
        End If
        For x = 0 To stock
            cosa = x

            didCantidadProd.Items.Add(cosa)
        Next

        didCantidadProd.SelectedIndex = 1
        '' lCosaAgregar.Text = dHelados.SelectedItem.ToString''

    End Sub

    Sub pedidototal()
        Dim en As String = Chr(13) & Chr(10)


        Dim valfin = didCantidadProd.SelectedIndex * lPrecioUs.Text
        Session("Valt") += valfin

        lPedidoTot.Text = lPedidoTot.Text & "Producto: " & lNombresel.Text & "  Cantidad:   " & didCantidadProd.Text & "    Valor:" & valfin & en & "<br>"

    End Sub

    Protected Sub bAgregarProdc_Click(sender As Object, e As EventArgs) Handles bAgregarProdc.Click
        pedidototal()
        Session("precioFinal") += Session("Valt")
        AgregarCarrito()
        lTotalProductos.Text += 1

        bRevisarCarro.Focus()
        lTipoProdS.Visible = False
        lNombresel.Visible = False
        lPrecioUs.Visible = False
        bAgregarProdc.Visible = False
        Buscarprodusu("")
    End Sub

    Sub AgregarCarrito()

        Dim x As Integer = 0, c As String, numero As Integer = 0
        Dim Cosa As String = lCosaAgregar.Text.Trim
        Dim cosasagregar2 As String = lNombresel.Text.ToString


        If cosasagregar2 = "----------" Then Exit Sub

        Dim Cantidad As Integer = VNum(didCantidadProd.SelectedValue.ToString)
        Dim precio As Integer = Session("valt")


        If Cantidad <= 0 Then Exit Sub
        lErrorPedido.Text = ""

        'veo si ya esta el item en la lista'


        Dim da2 As New SqlDataAdapter("select cantidad,Item, Precio from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " and ltrim(rtrim(item))='" & cosasagregar2 & "'", con)
        Dim ds2 As New DataSet
        da2.Fill(ds2, "dato")

        If ds2.Tables("dato").Rows.Count > 0 Then
            'ya estaba, lo leo la cantidad y reemplazo

            Cantidad += VNum(ds2.Tables("Dato").Rows(0)("Cantidad"))
            precio += VNum(ds2.Tables("Dato").Rows(0)("Precio"))





            ''  Session("precioFinal") += precio

            ' Sentencia para Update de cantidad y precio
            If SQL_Accion("update web_pedidos_temporal set cantidad='" & Cantidad & "', Precio = '" & precio & "' where num_cli=" & Session("idUsuario") & " And ltrim(rtrim(item))='" & cosasagregar2 & "'") = False Then
                lErrorPedido.Text = "No puedo Modificar el item elegidfo. Intente mas tarde."
                Exit Sub
            End If


        Else

            If SQL_Accion("insert into web_pedidos_temporal (num_cli, item, cantidad, Precio) values (" & Session("idUsuario") & ", '" & cosasagregar2 & "', " & Cantidad & ", '" & precio & "')") = False Then
                lErrorPedido.Text = "No puedo agregar el item a la lista. Intente mas tarde."
                Exit Sub
            End If
        End If

        cargatemporal2()

    End Sub


    Sub cargatemporal2()
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim consulta As String = "select item, cantidad , precio from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " order by item"
        Dim da1 As New SqlDataAdapter(consulta, con)

        Dim ds1 As New DataSet
        da1.Fill(ds1, "cargat")
        gCarrito.DataSource = ds1.Tables("cargat")
        gCarrito.DataBind()

        If ds1.Tables("cargat").Rows.Count = 0 Then
            lErrorHistorico.Text = ""
            gCarrito.Visible = False
            bSolicitarPedido.Visible = False
            bQuitarTodos.Visible = False
            lErrorPedido.Visible = False
        Else

            gCarrito.Visible = True
            bSolicitarPedido.Visible = True
            bQuitarTodos.Visible = True
            lErrorPedido.Visible = True
        End If
    End Sub




    Protected Sub gCarrito_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gCarrito.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gCarrito.Rows(index)
        Dim Item As String = row.Cells(1).Text, en As String = Chr(13) & Chr(10)

        Dim consulta As String = "delete web_pedidos_temporal where ltrim(rtrim(item))= '" & Item & "' and num_cli=" & VNum(Session("idUsuario"))





        If (e.CommandName = "Quitar") Then
            Dim consulta2 As String = "select precio from web_pedidos_temporal where ltrim(rtrim(item))= '" & Item & "' and num_cli=" & VNum(Session("idUsuario"))
            Dim da1 As New SqlDataAdapter(consulta2, con)
            Dim ds1 As New DataSet
            lTotalProductos.Text -= 1
            da1.Fill(ds1, "precio")
            Dim precioresta = ds1.Tables("precio").Rows(0)("Precio")

            Session("precioFinal") -= precioresta
            lPTC.Text = Session("precioFinal")
            If SQL_Accion(consulta) = False Then
                LErrorC.Text = "No puedo quitar el item de la lista. Intente mas tarde."

                Exit Sub
            End If

            cargatemporal2()
        End If
    End Sub



    Protected Sub bRevisarCarro_Click(sender As Object, e As ImageClickEventArgs) Handles bRevisarCarro.Click
        pPedidosCliente.Visible = False
        pCarrito.Visible = True
        lPTC.Text = Session("precioFinal")
        Session("Valt") = 0
        lprueba.Text = Session("pedidomail")
        lPTC.Text = "$ " & lPTC.Text
    End Sub

    Protected Sub bHacerPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bHacerPedido.Click

        pAreaUsuario.Visible = False
        pPedidos.Visible = True
        pPortada.Visible = False
    End Sub

    Protected Sub pABMUsuarios_Click(sender As Object, e As ImageClickEventArgs) Handles pABMUsuarios.Click
        cargarusuarios()
        pControlADM.Visible = False
        pBanear.Visible = True
    End Sub

    Protected Sub bSalirADM_Click(sender As Object, e As EventArgs) Handles bSalirADM.Click
        pControlADM.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub pHistorialTotal_Click(sender As Object, e As ImageClickEventArgs) Handles pHistorialTotal.Click
        pControlADM.Visible = False
        pHistoricoADM.Visible = True
        CargarHistoricoADM()
    End Sub

    Protected Sub bTerminarHADM_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarHADM.Click
        pHistoricoADM.Visible = False
        pControlADM.Visible = True
    End Sub

    Protected Sub gHistoricoADM_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gHistoricoADM.RowCommand

        ' Solucion Stack incompleta para paginacion. 'Dim datos As LinkButton = TryCast(gHistoricoADM.Rows(e.CommandArgument).Cells(8).Controls(0), LinkButton) ParamCorrCarga.Text = datos.Text








        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gHistoricoADM.Rows(index)
        Dim Npedido As Integer = VNum(row.Cells(2).Text), en As String = Chr(13) & Chr(10)
        If (e.CommandName = "Ver") Then

            lDetalle2.Text = "Detalle del Pedido N° " & Npedido
            Session("npedido") = Npedido
            lErrorVerUnPedido.Text = ""
            Dim da1 As New SqlDataAdapter("SELECT web_pedidos_detalle.item, " & "web_pedidos_detalle.Cantidad" & ",web_pedidos_detalle.Precio" & " FROM web_pedidos_detalle INNER JOIN Productos ON " & "web_pedidos_detalle.Item = Productos.Nombre WHERE web_pedidos_detalle.NPedido=" & Npedido & " ORDER BY Productos.CodP", con)
            Dim da2 As New SqlDataAdapter("SELECT * from web_pedidos where Npedido= " & Npedido, con)


            Dim ds2 As New DataSet
            da2.Fill(ds2, "info")
            Session("info1") = ds2.Tables("info").Rows(0)("num_cli").ToString

            Dim da3 As New SqlDataAdapter("SELECT * from usuarios where idUsuario= " & Session("info1"), con)
            Dim ds3 As New DataSet
            da3.Fill(ds3, "info2")
            lnombreped.Text = ds3.Tables("info2").Rows(0)("Nombre") & " " & ds3.Tables("info2").Rows(0)("Apellido")
            lMailped.Text = ds3.Tables("info2").Rows(0)("Email").ToString


            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            gVerPedidoADM.DataSource = ds1.Tables("histo")

            gVerPedidoADM.DataBind()
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Reintente más tarde."
                gVerPedidoADM.Visible = False
            Else
                gVerPedidoADM.Visible = True
            End If
            pHistoricoADM.Visible = False
            pVerUnPedidoADM.Visible = True
            lID.Text = Session("info1")
            lID.Visible = True
            lnombreped.Visible = True
            lMailped.Visible = True
        End If

        If (e.CommandName = "Anular") Then
            lErrorVerUnPedido.Text = ""

            Dim da1 As New SqlDataAdapter("SELECT estado from web_pedidos where NPedido=" & Npedido, con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")

            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "No se pudo acceder al pedido N° " & Npedido & ". Reintente más tarde."
                Exit Sub
            Else

                Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
                If Estado = "Enviado" Then
                    lhistouso.Text = " No puede anular un pedido enviado."
                Else
                    If Estado <> "Solicitado" Then
                        lhistouso.Text = "El pedido tiene Estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame al distribuidor " & "por favor."
                        Exit Sub
                    Else
                        If Estado = "Anulado" Then
                            lhistouso.Text = "El pedido N° " & Estado & ", Ya estaba Anulado..."
                            Exit Sub
                        End If
                        lErrorVerUnPedido.Text = ""
                        If SQL_Accion("update web_pedidos set estado='Anulado' where npedido=" & Npedido) = False Then
                            lhistouso.Text = "No se ha podido cambiar el estado, hubo algún " & "error de conexión. Por favor, reintente más tarde o llame a la " & "fábrica para avisar de la anulación."
                            Exit Sub
                        Else
                            lhistouso.Text = "El pedido N° " & Npedido & ", fue ANULADO"

                            pHistoricoADM.Visible = False
                            pPedidoAnulado.Visible = True
                        End If
                    End If
                End If

            End If
        End If

        If (e.CommandName = "enviar") Then
            If SQL_Accion("update web_pedidos set estado='Enviado' where npedido=" & Npedido) = False Then
                lhistouso.Text = "No se ha podido cambiar el estado, hubo algún " & "error de conexión. Por favor, reintente más tarde o llame a la " & "fábrica para avisar de la anulación."
                Exit Sub
            Else
                lhistouso.Text = "El pedido = " & Npedido & " se envio con exito."
                EnviarMail(lMailped.Text, "Pedido Aprobado.", "algo")
                CargarHistoricoADM()
            End If
        End If
    End Sub


    Protected Sub bControlUsuario_Click1(sender As Object, e As ImageClickEventArgs) Handles bControlUsuario.Click
        pAreaUsuario.Visible = False
        pControlADM.Visible = True
        pPortada.Visible = False
    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton6.Click
        pVerUnPedidoADM.Visible = False
        pHistoricoADM.Visible = True
    End Sub

    Protected Sub gVerPedidoADM_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gVerPedidoADM.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gVerPedidoADM.Rows(index)
        Dim Item As String = row.Cells(1).Text, en As String = Chr(13) & Chr(10)

        Dim consulta As String = "delete web_pedidos_detalle where ltrim(rtrim(item))= '" & Item & "' and Npedido=" & VNum(Session("npedido"))




        If (e.CommandName = "Quitar") Then
            Dim consulta2 As String = "select precio from web_pedidos_detalle where ltrim(rtrim(item))= '" & Item & "' and Npedido=" & VNum(Session("npedido"))
            Dim da1 As New SqlDataAdapter(consulta2, con)
            Dim ds1 As New DataSet

            EnviarMail(lMailped.Text, "Cambios en tu pedido numero: " & Session("npedido"), "El producto : " & en & Item & en & "No se encuentra disponible en este momento. A la brevedad una persona de soporte se estara comunicando para resolver el problema, saludos.")



            If SQL_Accion(consulta) = False Then
                LErrorC.Text = "No puedo quitar el item de la lista. Intente mas tarde."

                Exit Sub
            End If
            veradm()
        End If

    End Sub

    Sub veradm()
        Dim da1 As New SqlDataAdapter("SELECT  item,Cantidad,Precio FROM web_pedidos_detalle WHERE NPedido=" & Session("npedido"), con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "nuevo")
        gVerPedidoADM.DataSource = ds1.Tables("nuevo")
        gVerPedidoADM.DataBind()
    End Sub

    Protected Sub ImageButton10_Click(sender As Object, e As ImageClickEventArgs) Handles bReservar.Click
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim npedido As Integer = 0, vItem As String = "", vTipo As String = "",
        vCantidad As Integer = 0, cosa As String
        Dim linea As String = "", en As String = Chr(13) & Chr(10)
        Dim precio As Decimal



        lErrorPedido.Text = ""


        If SQL_Accion("insert into web_pedidos (num_cli) values (" & Session("idUsuario") & ")") = True Then
            Dim da2 As New SqlDataAdapter("select top 1 npedido from web_pedidos where num_cli=" & Session("idUsuario") & " order by npedido desc", con)
            Dim ds2 As New DataSet
            da2.Fill(ds2, "dato")
            If ds2.Tables("dato").Rows.Count > 0 Then

                npedido = ds2.Tables("dato").Rows(0)("npedido")


                If SQL_Accion("INSERT INTO WEB_Pedidos_detalle ( item, Cantidad,Precio, NPedido  ) " & "SELECT WEB_Pedidos_Temporal.Item, Web_Pedidos_Temporal.Cantidad,Web_Pedidos_Temporal.Precio," & npedido & " AS Npedido FROM Web_Pedidos_Temporal where num_cli=" & idU) = True Then
                    lPedidoCreado.Text = "El pedido N° " & npedido & ", fue creado correctamente."

                    Dim da3 As New SqlDataAdapter("select Item,Precio,Cantidad From Web_Pedidos_detalle where Npedido= " & npedido, con)
                    Dim ds3 As New DataSet
                    da3.Fill(ds3, "pedido")
                    Dim cantidad = ds3.Tables("pedido").Rows.Count
                    Dim x
                    For x = 0 To cantidad - 1
                        Session("pedidomail") = "Producto: " & ds3.Tables("pedido").Rows(x)("Item") & " Cantidad: " & VNum(ds3.Tables("pedido").Rows(x)("Cantidad")) & " Precio: $" & VNum(ds3.Tables("pedido").Rows(x)("Precio")) & en & en & Session("pedidomail")

                    Next
                    lprueba.Text = Session("pedidomail")

                    EnviarMail(Session("Email"), "Pedido Creado.", "Numero =" & npedido & " Detalle de Pedido = " & Session("pedidomail") & en & en & " A la brevedad un tecnico especializado se comunicara con unsted para proceder con la compra.")

                    lprueba.Visible = True
                    pCarrito.Visible = False
                    pPedidoCreado.Visible = True
                    If SQL_Accion("delete Web_Pedidos_Temporal where num_cli=" & idU) = False Then

                    End If
                Else
                    lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío o con carga parcial. Anúlelo e Intente más tarde"
                    Exit Sub
                End If
                Exit Sub
            Else
                lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío. Anúlelo e Intente más tarde."
                Exit Sub
            End If
        Else
            lErrorPedido.Text = "Hubo un error al intentar guardar el pedido. Intente mas tarde"
        End If
    End Sub

    Protected Sub ImageButton11_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton11.Click
        If SQL_Accion("delete web_pedidos_temporal where num_cli=" & VNum(Session("idUsuario"))) = False Then
            lErrorPedido.Text = "No puedo quitar a todos los item de la lista. Intente mas tarde."
            Exit Sub
        End If
        cargatemporal2()
        lPTC.Text = ""
        Session("precioFinal") = 0
        lTotalProductos.Text = 0
    End Sub

    Protected Sub bVolverUnU_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverUnU.Click
        pCarrito.Visible = False
        pPedidosCliente.Visible = True
        lPedidoTot.Text = ""
    End Sub

    Protected Sub gHistoricoADM_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gHistoricoADM.PageIndexChanging
        Me.gHistoricoADM.PageIndex = e.NewPageIndex
        gHistoricoADM.DataBind()
        CargarHistoricoADM()
    End Sub

    Protected Sub brefreshADM_Click(sender As Object, e As ImageClickEventArgs) Handles brefreshADM.Click
        CargarHistoricoADM()
    End Sub


    Protected Sub gUsuariosBan_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gUsuariosBan.PageIndexChanging
        Me.gHistoricoADM.PageIndex = e.NewPageIndex
        gHistoricoADM.DataBind()
        cargarusuarios()
    End Sub

    Protected Sub gListaProductos_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gListaProductos.PageIndexChanging
        Me.gListaProductos.PageIndex = e.NewPageIndex
        gListaProductos.DataBind()
        CargarProductoscli(gListaProductos)
    End Sub

    Protected Sub lLimpiarProd_Click(sender As Object, e As EventArgs) Handles lLimpiarProd.Click
        Buscarprodusu("")
    End Sub

    Protected Sub gDatosProduc_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gDatosProduc.PageIndexChanging
        Me.gDatosProduc.PageIndex = e.NewPageIndex
        gDatosProduc.DataBind()
        CargarProductos()
    End Sub

    Protected Sub ddlProductos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProductos.SelectedIndexChanged
        Filtrarprod(ddlProductos.SelectedValue)

    End Sub

    Protected Sub lLimpiarFiltroProd_Click(sender As Object, e As EventArgs) Handles lLimpiarFiltroProd.Click
        Filtrarprod("")
        CargarProductos()
    End Sub

    Protected Sub bEliminarAnulados_Click(sender As Object, e As ImageClickEventArgs) Handles bEliminarAnulados.Click

        Dim dsan As New SqlDataAdapter("select * from WEB_Pedidos", con)
        Dim daan As New DataSet
        Dim x
        dsan.Fill(daan, "del")
        Dim numeroped

        For x = 0 To daan.Tables("del").Rows.Count - 1

            Dim variableprueba = daan.Tables("del").Rows(x)("Estado").ToString.Trim.ToUpper

            If variableprueba = "ANULADO" Then
                numeroped = VNum(daan.Tables("del").Rows(x)("Npedido"))

                If SQL_Accion("delete web_pedidos where NPedido =" & numeroped) Then

                Else
                    lhistouso.Text = " no se pudo de eliminar el pedidos"
                    lhistouso.Visible = True
                End If

                If SQL_Accion("delete web_pedidos_detalle where Npedido=" & numeroped) Then
                Else
                    lhistouso.Text = "No se pudo eliminar detalle de pedido"
                    lhistouso.Visible = True
                End If
                lhistouso.Text = numeroped
                lhistouso.Visible = True
            Else
                lhistouso.Text = "fijate que le estas pidiendo"
                lhistouso.Visible = False
            End If


        Next

        CargarHistoricoADM()

    End Sub

    Protected Sub didNombreProd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles didNombreProd.SelectedIndexChanged
           Buscarprodusu(didNombreProd.SelectedItem.ToString())
    End Sub

    Protected Sub bEliminarPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bEliminarPedido.Click

    End Sub
End Class