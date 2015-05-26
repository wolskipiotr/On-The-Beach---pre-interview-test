<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UI._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Payroll System.</h1>
                <h2>Written by Piotr Wolski for pre-interview test @On The Beach</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Answers to tasks:</h3>
    <ol class="round">
        <li class="one">
            <h5>Task 1</h5>
            We're about to do our annual payment run, and we need to know how much to pay our
            employees! Obviously we're in the UK, so we need to know in GBP using the
            conversion rates specified in the currency table. Finance know we're busy, so all they
            want is an SQL query to find the answer.
            <div>
             <asp:GridView ID="gvWages" runat="server"></asp:GridView>
            </div>
        </li>
        <li class="two">
            <h5>Task 2</h5>
           <p>Finance have realised that they are regularly getting asked how much they're paying
            people so write them a simple command line app that lets them search by employee
            name and returns them how much we're paying in the employees local currency, and
            of course in GBP.</p>
           <p> Keep in mind that while the data is currently very small, we're expecting it to grow
            dramatically in the future. After all, with awesome code like yours this company is
            going places!</p>
            <div>
              <p>type in search key:</p>
                <asp:TextBox ID="txtSearchKey" runat="server"/>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <p>
                    <asp:GridView ID="gvSearchResults" runat="server"></asp:GridView>
                </p>
            </div>
        </li>
        <li class="three">
            <h5>Task 3</h5>
            Hooray! Finance love your program. Their final request is that they want an option to
            have it display a list of the staff level employees in order of who is paid the most.
            <div>
                <p>
                    <asp:GridView ID="gvWagesOrderred" runat="server"></asp:GridView>
                </p>
            </div>
        </li>
    </ol>
</asp:Content>
