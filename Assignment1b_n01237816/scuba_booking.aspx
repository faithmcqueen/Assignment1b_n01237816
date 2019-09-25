<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scuba_booking.aspx.cs" Inherits="scuba_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Your Scuba Diving Trip</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Book Your Suba Diving Excursion!</h1>
        <section>
           <p>First Name</p>
           <asp:TextBox runat="server" ID="diver_fname"></asp:TextBox>
           <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your first name." ControlToValidate="diver_fname"></asp:RequiredFieldValidator>
        </section>
        <section>
            <p>Last Name</p>
            <asp:TextBox runat="server" ID="diver_lname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your last name." ControlToValidate="diver_lname"></asp:RequiredFieldValidator>
        </section>
        <section>
            <p>Email</p>
            <asp:TextBox runat="server" ID="diver_email"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your email." ControlToValidate="diver_email"></asp:RequiredFieldValidator>
        </section>
        <section>
            <p>Telephone Number</p>
            <asp:TextBox runat="server" ID="diver_phone"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="diver_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter your phone number."></asp:RegularExpressionValidator>
            <!-- ValidationExpression taken from class example, HTTP_5101_FALL2019.aspx_validation.aspx -->
        </section>
        <section>
            <p>How many divers will be in your party? (Maximum 5 divers)</p>
            <asp:TextBox runat="server" ID="diver_numguests"></asp:TextBox>
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="diver_numguests" ErrorMessage="Please enter a number between 0-5." MinimumValue="1" MaximumValue="5"></asp:RangeValidator>
        </section>
        <section>
            <p>Please select the preferred date for your dive.</p>
            <asp:DropDownList runat="server" ID="diver_prefdate">
                <asp:ListItem Text="September 22" Value="sept_22"></asp:ListItem>
                <asp:ListItem Text="September 24" Value="sept_24"></asp:ListItem>
                <asp:ListItem Text="September 25" Value="sept_25"></asp:ListItem>
                <asp:ListItem Text="October 22" Value="oct_22"></asp:ListItem>
                <asp:ListItem Text="October 24" Value="oct_24"></asp:ListItem>
                <asp:ListItem Text="October 25" Value="oct_25"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="diver_prefdate" ErrorMessage="Please select your preferred date."></asp:RequiredFieldValidator>
        </section>
        <section>
            <p>Select which time of day do you prefer for your dive.</p>
            <asp:RadioButtonList runat="server" ID="diver_preftime">
                <asp:ListItem Text="Morning" Value="morning"></asp:ListItem>
                <asp:ListItem Text="Afternoon" Value="afternoon"></asp:ListItem>
                <asp:ListItem Text="Evening" Value="evening"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="diver_preftime" ErrorMessage="Please select your preferred time."></asp:RequiredFieldValidator>
        </section>
        <section>
            <p>What is the diving experience for your party? Select all that apply.</p>
            <asp:CheckBoxList runat="server" ID="diver_partyexperience">
                <asp:ListItem Text="No experience at all" Value="beginner"></asp:ListItem>
                <asp:ListItem Text="Some experience" Value="moderate"></asp:ListItem>
                <asp:ListItem Text="We have an expert in our party" Value="expert"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <p>What are you most interested in seeing while you are diving? Please check all that apply.</p>
            <asp:CheckBoxList runat="server" ID="diver_interests">
                <asp:ListItem Text="A coral reef" Value="coral_reef"></asp:ListItem>
                <asp:ListItem Text="Tropical fish" Value="tropical_fish"></asp:ListItem>
                <asp:ListItem Text="Other aquatic life (sea turtles, etc)" Value="aquatic_life"></asp:ListItem>
                <asp:ListItem Text="Shipwrecks" Value="shipwrecks"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <p>Do you accept our terms and conditions for the upcoming scuba diving trip?</p>
            <asp:RadioButtonList runat="server" ID="diver_termsconfirm">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="diver_termsconfirm" ErrorMessage="Please accept our terms and conditions."></asp:RequiredFieldValidator>
        </section>
        <section>
        <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="confirmbox" runat="server">

        </section>
        <section>
            <asp:Button runat="server" Text="Submit" />
        </section>
    </form>
</body>
</html>
