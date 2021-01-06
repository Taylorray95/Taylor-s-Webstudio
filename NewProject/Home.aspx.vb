Imports System.Net.Mail
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsend_Click(sender As Object, e As EventArgs) Handles btnsend.Click
        Dim boolerror As Boolean = False
        clear()

        If txtName.Text.Trim = "" Then
            boolerror = True
            pnlValidation.Visible = True
            lblvalidation1.Visible = True
            lblvalidation1.Text = "Must enter in a name."
        End If

        If txtEmail.Text.Trim = "" And txtNumber.Text = "" Then
            boolerror = True
            pnlValidation.Visible = True
            lblvalidation2.Visible = True
            lblvalidation2.Text = "Must enter in an email or phone number."
        End If

        If txtBody.Text.Trim = "" Then
            boolerror = True
            pnlValidation.Visible = True
            lblvalidation3.Visible = True
            lblvalidation3.Text = "Must enter in a message to send."
        End If

        If txtNumber.Text.Trim <> "" Then
            If Not IsPhoneNumberValid(txtNumber.Text.Trim) Then
                boolerror = True
                pnlValidation.Visible = True
                lblvalidation4.Visible = True
                lblvalidation4.Text = "Must enter in a valid phone number."
            End If
        End If

        If txtEmail.Text.Trim <> "" Then
            If Not IsValidEmailFormat(txtEmail.Text.Trim) Then
                boolerror = True
                pnlValidation.Visible = True
                lblvalidation5.Visible = True
                lblvalidation5.Text = "Must enter in a valid email address."
            End If
        End If

        If boolerror = True Then
            Exit Sub
        End If

        Dim emailMessage As New MailMessage
        Try
            emailMessage.From = New MailAddress("taylorswebstudio1@gmail.com")
            emailMessage.To.Add("taylorleavelle@gmail.com")
            emailMessage.Subject = "Inquery Via Taylor's Webstudio - From: " & txtName.Text.Trim & " - " & txtEmail.Text.Trim
            emailMessage.Body = txtBody.Text.Trim
            Dim smtp As New SmtpClient("smtp.gmail.com")
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.Credentials = New System.Net.NetworkCredential("taylorswebstudio1@gmail.com", "teeray32")
            smtp.Send(emailMessage)
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub clear()
        pnlValidation.Visible = False
        lblvalidation1.Visible = False
        lblvalidation2.Visible = False
        lblvalidation3.Visible = False
        lblvalidation4.Visible = False
        lblvalidation5.Visible = False
        lblvalidation3.Text = ""
        lblvalidation2.Text = ""
        lblvalidation1.Text = ""
        lblvalidation4.Text = ""
        lblvalidation5.Text = ""
    End Sub

    Function IsValidEmailFormat(ByVal s As String) As Boolean
        Return Regex.IsMatch(s, "^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$")
    End Function

    Private Shared Function IsPhoneNumberValid(phoneNumber As String) As Boolean
        Dim result As String = ""
        Dim chars As Char() = phoneNumber.ToCharArray()
        For count = 0 To chars.GetLength(0) - 1
            Dim tempChar As Char = chars(count)
            If [Char].IsDigit(tempChar) Or "()+-., ".Contains(tempChar.ToString()) Then

                result += StripNonAlphaNumeric(tempChar)
            Else
                Return False
            End If

        Next

        Return result.Length = 10 'Length of US phone numbers is 10
    End Function

    Private Shared Function StripNonAlphaNumeric(value As String) As String
        Dim regex = New Regex("[^0-9a-zA-Z]", RegexOptions.None)
        Dim result As String = ""
        If regex.IsMatch(value) Then
            result = regex.Replace(value, "")
        Else
            result = value
        End If

        Return result
    End Function

End Class