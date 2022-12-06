Imports System.Data.SqlClient

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
        pPortada.Visible = False
        pLoginMenu.Visible = True
    End Sub

    Protected Sub bVolverLogin_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLogin.Click
        pPortada.Visible = True
        pLogin.Visible = False
    End Sub


    Protected Sub bRegistrarse_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarse.Click
        LimpiarErroresRegistroU()
        pLoginMenu.Visible = False
        pLogin.Visible = False
        pRegistrarse.Visible = True
    End Sub

    'Volver al Login -pRegistarse'
    Protected Sub bRegistrarseVolverLoginU13_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarseVolverLoginU13.Click
        pLoginMenu.Visible = False
        pPortada.Visible = True
    End Sub
    Protected Sub BAlogin_Click(sender As Object, e As ImageClickEventArgs) Handles BAlogin.Click
        pLoginMenu.Visible = False
        pLogin.Visible = True
    End Sub
    'Boton registrarse'
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
        LimpiarErroresRegistroU()
        If SQL_Accion("insert into Usuarios (Apellido,Nombre,tDoc,Doc,Usuario,Pass,Email,idProv,Localidad,Direccion,Telefonos,fNacimiento) values('" & tApellidoU.Text.Trim & "','" & tNombreU.Text.Trim & "','" & Session("TipoDocumento") & "','" & Session("Documento") & "','" & Session("Usuario") & "','" & Session("Password") & "','" & Session("Email") & "','" & didProvU.SelectedValue & "','" & tLocalidadU.Text.Trim & "','" & tDireccionU.Text.Trim & "','" & tTelefonosU.Text.Trim & "','" & FechaNacimiento.ToString("yyyy-MM-dd") & "')") = False Then
            lErroresU.Text = " Se ha producido un error al querer guardar tus datos..."
            lErroresU.Visible = True
            Exit Sub
        End If
        Session("idUsuario") = VNum(LeeUnCampo("select top 1 idUsuario from usuarios where Usuario='" & Session("Usuario") & "' and Pass='" & Session("Password") & "' ", "idUsuario"))
        lBienvenido.Text = "Bienvenido " & Session("ApellidoYNombre") & "!"

        Dim mensaje As String, xusuario As String = Session("ApellidoYNombre"),
            en As String = Chr(13) & Chr(10)
        mensaje = "Bienvenido " & xusuario & " a los cursos de ASP .NET!." & en & en &
            "Te damos una cordial bienvenida a la comunidad de ASP .Net!." & en & en &
            "Tu usuario es " & """" & Session("Usuario") & """" & en & en &
            "Tu clave es " & """" & Session("Password") & """" & en & en &
            "Ya podes loguearte para ver tus datos!!." & en & en
        LimpiarRegustroU()
        pRegistrarse.Visible = False
        pBienvenido.Visible = True
        bRegistrarseVolverLoginU13.Focus()
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
        dTDocU.Text = ""
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
        pLogin.Visible = False
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
                    lBienvenidoAreaU.Text = "Bienvenido " & Session("ApellidoYNombre") & ", a tu Área de " & Session("QueEs")
                    LimpiarErroresRegistroU()
                    pLogin.Visible = False
                    pAreaUsuario.Visible = True
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
                    bPedidos.Visible = True
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
        bPedidos.Visible = False
        bABMProductos.Visible = False
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
            pCambiarDatosAdmin.Visible = True
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
    'Boton para Ir a Pedidos'
    Protected Sub bPedidos_Click(sender As Object, e As ImageClickEventArgs) Handles bPedidos.Click
        pPedidos.Visible = True
        pAreaUsuario.Visible = False
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
        Dim en As String = "</BR>"
        lInstrucciones.Text = "INSTRUCCIONES:" & en & en & "1)Elija el Helado que desea solicitar a la fabrica." _
            & ", y se vera el elegido en 'Agregar:'." & en & "2)Indique la cantidad de latas de helados. " & en _
            & "Agregar mas informacion sobre como son las cosas de la empresa ............"
        lInstrucciones.Visible = False
        bInstrucciones.Text = "Abrir Instrucciones"

        pPedidos.Visible = False
        lCosaAgregar.Text = ""
        CargarHelados()


        bQuitarTodos.Visible = False
        bSolicitarPedido.Visible = False
        'Borro el temporal de pedidos para el cliente'

        If IsNothing(Session("idUsuario")) Then
            pLogin.Visible = True
            Exit Sub
        End If
        SQL_Accion("delete web_pedidos_temporal where num_cli=" & Session("idUsuario"))
        CargaTemporal()
        pNuevoPedido.Visible = True
    End Sub

    Protected Sub ImageButton3_Click1(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        CargarHistorico()
        '' pHistorico.Visible = True
        '' pPedidos.Visible = False
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        pPedidos.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        pPedidoCreado.Visible = False
        pPedidos.Visible = True
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
                lErrorPedido.Text = "No puedo Modificar el item elegidfo. Intente mas tarde."
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
        pCambiarDatosPersonales.Visible = False
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
        pAreaUsuario.Visible = False
        pProductos.Visible = True
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

    Protected Sub gHis65torico_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gHistorico.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gHistorico.Rows(index)
        Dim Npedido As Integer = VNum(row.Cells(2).Text), en As String = Chr(13) & Chr(10)
        If (e.CommandName = "Ver") Then
            lDetallePedido.Text = "Detalle del Pedido N° " & Npedido

            lErrorVerUnPedido.Text = ""
            Dim da1 As New SqlDataAdapter("SELECT web_pedidos_detalle.item, " & "web_pedidos_detalle.Cantidad FROM web_pedidos_detalle INNER JOIN WEB_Helados ON " & "web_pedidos_detalle.Item = WEB_Helados.GUSTO WHERE web_pedidos_detalle.NPedido=" & Npedido & " ORDER BY WEB_Helados.codH", con)

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
        pVerUnPedido.Visible = False
        pHistorico.Visible = True
    End Sub

    Protected Sub bSolicitarPedido_Click(ByVal sender As Object,Byval e As System.Web.UI.ImageClickEventArgs) Handles bSolicitarPedido.Click
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




        '' Dim idU As Integer = VNum(Session("idUsuario"))
        ''Dim npedido As Integer = 0, vItem As String = "", vTipo As String = "",
        ''vCantidad As Integer = 0, cosa As String
        ''Dim linea As String = "", en As String = Chr(13) & Chr(10)
        ''
        ''lErrorPedido.Text = ""
        ''
        ''        If SQL_Accion("insert into web_pedidos (num_cli) values (" & Session("idUsuario") & ")") = True Then
        ''Dim da2 As New SqlDataAdapter("select top 1 npedido from web_pedidos where num_cli=" & Session("idUsuario") & " order by npedido desc", con)
        ''Dim ds2 As New DataSet
        ''da2.Fill(ds2, "dato")
        ''
        ''If ds2.Tables("dato").Rows.Count > 0 Then
        ''  npedido = ds2.Tables("dato").Rows(0)("npedido")
        'obtengo el numeero que le asigno y lo uso para crear los detalles'
        '' If SQL_Accion("INSERT INTO WEB_Pedidos_Detalle ( item,  Cantidad, NPedido) " & "SELECT WEB_Pedidos_Temporal.Item, WEB_Pedidos_Temporal.Cantidad," & npedido & "AS Npedido FROM WEB_Pedidos_Temporal where num_cli=" & idU) = True Then
        ''  lPedidoCreado.Text = "El pedido N°" & npedido & ", fue creado correctamente."
        ''pNuevoPedido.Visible = False
        ''pPedidoCreado.Visible = True
        ''
        '' If SQL_Accion("delete web_pedidos_temporal where num_cli=" & idU) = False Then
        ''   End If
        '' Else
        ''lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío o con carga parcial. Anúlelo e intente más tarde."
        ''  Exit Sub
        ''End If
        ''  Exit Sub
        ''Else
        ''  lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío. Anúlelo e intente más tarde."
        ''    Exit Sub
        ''  End If
        ''Else
        ''   lErrorPedido.Text = "Hubo un error al intentar guardar el pedido. Intente más tarde."
        '' End If
    End Sub

    Protected Sub bPedidoAnulado_Click(sender As Object, e As ImageClickEventArgs) Handles bPedidoAnulado.Click
        CargarHistorico()
        pPedidoAnulado.Visible = False
        pHistorico.Visible = True
    End Sub
End Class