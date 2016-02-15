<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage/Home.Master" AutoEventWireup="true" CodeBehind="ShowNotifications.aspx.cs" Inherits="MobyEShoppeWeb.Pages.Seller.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../assets/css/Custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="dashboardcontect" runat="server">
    <div class="main-content">
        <!-- start: PANEL CONFIGURATION MODAL FORM -->
        <div class="modal fade" id="panel-config" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <!-- end: SPANEL CONFIGURATION MODAL FORM -->
        <div class="container">
            <!-- start: PAGE HEADER -->
            <div class="row">
                <div class="col-sm-12">
                    <!-- start: PAGE TITLE & BREADCRUMB -->
                    <div class="breadcrumb">
                        <p class="HeadCenter"></p>
                    </div>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>
            <div>
                <p class="HeadCenter"><i class="clip-notification-2 headIcon"></i>Notifications</p>
            </div>
            <div class="bodyTopMargin">
                <div class="panel-body messages">
                    <div class="messages-list">
                        <div class="messages-search searchRight">
                            <div class="form-inline">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search messages..." />
                                    <div class="input-group-btn">
                                        <button class="btn btn-orange" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="GetAllNotifications">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {  // this method is used to delete the product details when no longer needed 

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "ShowNotifications.aspx/GetAllMessages",
                data: JSON.stringify({}),                    // passing the seller id to delete the product
                dataType: "json",
                async: false,
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully
                    debugger;
                    var dsResult = $.parseJSON(response.d);
                    var bindHtml = "<div class='table table-bordered table-striped table-condensed'>";
                    if (dsResult.Table.length > 0) {
                        for (var i = 0; i < dsResult.Table.length; i++) {
                            bindHtml += "<div class='col-sm-12 NotiMainDiv'><div  class='col-sm-6 SellerName'>" + dsResult.Table[i].Seller_Name;
                            bindHtml += "</div><div  class='col-sm-6 approvedTime'>" + dsResult.Table[i].ApprovalTime;
                            bindHtml += "</div><div  class='col-sm-12 NotiContent'>" + dsResult.Table[i].Comment;

                            bindHtml += "</div></div>";
                        }

                        $("#GetAllNotifications").html(bindHtml);
                    }
                },
                error: function (result) {
                    alert("Error");                                    // error function would be called if there is an error occured while processing
                }
            });

        });
    </script>

</script>

           
</script>

</asp:Content>
