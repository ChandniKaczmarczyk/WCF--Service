<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WCF_Application._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
        <div>

            <button id="btn1" onclick="DoWork(); return false;">Do Work</button>

        </div>
        <br />
        <div>
            <button id="btn2" onclick="DoSquare(); return false;">Do Square</button>
            <input type="text" id="txt1" />
        </div>
        <br />
        <div>
            <button id="btn3" onclick="AddValues(); return false;">Do Square</button>
            <input type="text" id="txtObj1" />
            <input type="text" id="txtObj2" />

        </div>


    </div>
    <script type="text/javascript">
        function DoWork() {

            console.log("Hello World");
            $.ajax({
                url: "Service/Service1.svc/DoWork",
                type: "GET",
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    console.info(result);
                }

            });

        }

        //function for finding a Square

        function DoSquare() {
            var value = $("#txt1").val();

            $.ajax({
                url: "Service/Service1.svc/DoSquare",
                type: "POST",
                data: JSON.stringify(value),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    alert(result);
                }

            });

        }


        function AddValues() {
            var addvalue = {
                "value1": $("#txtObj1").val(),
                "value2": $("#txtObj2").val()
            }

            $.ajax({
                url: "Service/Service1.svc/DoAddValue",
                type: "POST",
                data: JSON.stringify(addvalue),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    alert(result);
                }

            });

        }

    </script>
</asp:Content>
