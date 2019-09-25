using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1b_n01237816
{
public partial class scuba_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {

            Page.Validate();

            if (Page.IsValid)
            {
                // Convert form data into usable text for validation summary

                string Diver_Fname = diver_fname.Text.ToString();
                string Diver_Lname = diver_lname.Text.ToString();
                string Diver_Email = diver_email.Text.ToString();
                string Diver_Phone = diver_phone.Text.ToString();
                int Diver_NumGuests = diver_numguests.ToInt32(diver_numguests.Text);
                string Diver_PrefDate = diver_prefdate.SelectedValue.ToString();
                string Diver_PrefTime = diver_preftime.SelectedValue.ToString();
                string Diver_TermsConfirm = diver_termsconfirm.Text.ToString();

                    // Validation summary 

                confirmbox.InnerHtml += "Thank you for booking you scuba dive! Your summary is as follows: <br>";
                confirmbox.InnerHtml += "First Name: " + Diver_Fname + "<br>";
                confirmbox.InnerHtml += "Last Name: " + Diver_Lname + "<br>";
                confirmbox.InnerHtml += "Email: " + Diver_Email + "<br>";
                confirmbox.InnerHtml += "Phone: " + Diver_Phone + "<br>";
                confirmbox.InnerHtml += "Diving party: " + Diver_NumGuests.ToString() + " divers" + "<br>";
                if(Diver_NumGuests == 1)
                    {
                        confirmbox.InnerHtml += "Your total will be $200 CAD. <br>";
                    }
                if(Diver_NumGuests == 2)
                    {
                        confirmbox.Html += "Your total will be $300 CAD. <br>";
                    }
                if(Diver_NumGuests == 3)
                    {
                        confirmbox.Html += "Your total will be $400 CAD. <br>";
                    }
                if(Diver_NumGuests == 4)
                    {
                        confirmbox.Html += "Your total will be $500 CAD. <br>";
                    }
                if(Diver_NumGuests == 5)
                    {
                        confirmbox.Html += "Your total will be $600 CAD. <br>";
                    }

                confirmbox.InnerHtml += "Your preferred diving date is: " + Diver_PrefDate + "<br>";
                confirmbox.InnerHtml += "Your preferred time of day for your dive is: " + Diver_PrefDate + "<br>";
                confirmbox.InnerHtml += "Did you accept the terms?" + Diver_TermsConfirm;

            }
        }
    }
}

}