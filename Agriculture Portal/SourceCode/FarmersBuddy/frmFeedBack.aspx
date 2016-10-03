<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1" EnableEventValidation="false"   AutoEventWireup="true" CodeFile="frmFeedBack.aspx.cs" Inherits="frmFeedBack" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>FeedBack Form</legend>
<div>

    <h1 style="text-align: center; text-decoration: underline">Contact Information</h1>
	<p>An Agricultural Web Portal for Agricultural welfare. Developing Agriculture. </p>
        <!-- feedback form -->        
        
            <p >
                If you want to contact the site administration, fill in the form
                below.
            
            
            <form name="feedback_form"
                  action="../Default.aspx"
                  method="post">

            <fieldset>

                <legend>Feedback details</legend>

            
              <div >
              <label for="sender_fullname">
                Name
              </label>

              <div >
                Please enter your full name
              </div>

              <div></div>            

              <input type="text" id="sender_fullname"
                     name="sender_fullname" size="40"
                     tabindex="0" />
            </div>
            <div c>
              <label for="sender_from_address">
                E-Mail
              </label>
              <span  title="Required">(Required)</span>

              <div class="formHelp">
                Please enter your e-mail address
              </div>
   
              <div></div>            

              <input type="text" id="sender_from_address"
                     name="sender_from_address" size="40" />
            </div>
            
            
            <div class="field">
              <label for="subject">
                Subject
              </label>

              <span class="fieldRequired" title="Required">(Required)</span>

              <div class="formHelp">
                Please enter the subject of the message you want to send.
              </div>
   
              <div></div>            

              <input type="text" id="subject" name="subject"
                     size="25" />
            </div>
            <div class="field">
              <label for="message">

                Message
              </label>
              <span  title="Required">(Required)</span>

              <div >
                Please enter the message you want to send.
              </div>
   
              <div></div>            
        
              <textarea name="message" id="message" rows="5"
                        cols="25"></textarea>
            </div>

        
            <div >

                <asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
                    onclick="btnSubmit_Click" />

            </div>

            </fieldset>

            <input type="hidden" name="form.submitted" value="1" />

            </form>

</div>

</fieldset>
</center>

</asp:Content>

