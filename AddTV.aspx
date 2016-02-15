<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MaterPage/Home.Master" CodeBehind="AddTV.aspx.cs" Inherits="MobyEShoppeWeb.Pages.Seller.AddTV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../assets/js/jscolor.js"></script>
    <link href="../../assets/css/Custom.css" rel="stylesheet" />
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
                <p class="HeadCenter">Add Television</p>
            </div>
            <div class="bodyTopMargin">
                
                <br />
                <br />
                <div class="row">
                    <div class="col-sm-12">
                      <div class="col-sm-4">
                            <div class="col-sm-4 DrpdwnLbl">
                                Select Category :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                                  <select id="ddlCategories" class = "DrpDwn">
                                   </select>        
                               <%-- <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DrpDwn">--%>
                                  <%--  <asp:ListItem>choose an item...</asp:ListItem>--%>
                               <%-- </asp:DropDownList>--%>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="col-sm-5 DrpdwnLbl">
                                Select Sub Category :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                                   <select id="ddlSubCategories" class = "DrpDwn">
                                    </select> 
                               <%-- <asp:DropDownList ID="DropDownList2" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>--%>
                            </div>
                        </div>
                           <div class="col-sm-6">
                            <div class="col-sm-4 DrpdwnLbl TxtbxlblMrgn1">
                                Name : 
                            </div>
                            <div class="col-sm-6 ">
                               <asp:TextBox ID="txtTelvisionName" class = "DrpDwn" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="col-sm-3 DrpdwnLbl">
                                Brand :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                         <%--       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>--%>
                                 <select id="ddlTelvisionBrandName" class = "DrpDwn">
                                    </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="col-sm-4 DrpdwnLbl">
                                Resolution Type :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                                  <select id="ddlTelvisionScreenResolution" class="DrpDwn">
                                  </select>
                              <%--  <asp:DropDownList ID="DropDownList7" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>--%>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="col-sm-5 DrpdwnLbl">
                                Screen Size :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                                  <asp:TextBox ID="txtTelvisionScreenSize" runat="server" class="DrpDwn"></asp:TextBox>
                              <%--  <asp:DropDownList ID="DropDownList8" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>--%>
                            </div>
                        </div>
                       
                       <%-- <div class="col-sm-4">
                            <div class="col-sm-5 DrpdwnLbl">Display Technology :</div>
                            <div class="col-sm-6 DrpdwnLbl">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-12">
                      <%--  <div class="col-sm-4">
                            <div class="col-sm-3 DrpdwnLbl">
                                HD Formate :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl">
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>--%>
                        <div class="col-sm-4 DrpdwnLbl">
                            <div class="col-sm-3 DrpdwnLbl">
                                TV Features :
                            </div>
                            <div class="col-sm-6 DrpdwnLbl" id="AddTelevisionFeatures">
                               <%-- <asp:DropDownList ID="DropDownList5" runat="server" CssClass="DrpDwn">
                                    <asp:ListItem>choose an item...</asp:ListItem>

                                </asp:DropDownList>--%>
                            </div>
                        </div>

                    </div>
                </div>
                <br />
                <div class="row">
                    <br />
                    <div class="col-sm-12">
                         <div class="col-sm-6">
                            <div class="col-sm-4 DrpdwnLbl TxtbxlblMrgn1">
                                Price(INR) : 
                            </div>
                            <div class="col-sm-6 ">
                                <asp:TextBox ID="txtTelevisionPrice" runat="server" class="DrpDwn"></asp:TextBox>
                               <%-- <asp:TextBox ID="TextBox3" runat="server" placeholder="In Rupees" class="DrpDwn"></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                 <div>
                <asp:FileUpload ID="f_UploadImageTelvision" runat="server" AllowMultiple="true" />
                <%--<img id="myUploadedImg"  src="" alt="Photo" style="width:180px;" />--%>
               </div>
                <div class="row">
                    <div class="col-sm-12 text-alignright">
                      
                         <input type="button" id="btnSubmit" value="Submit" class ="btn btn-dark-grey"/>
                    </div>
                </div>

                <br />
            </div>
        </div>
    </div>

        <script type="text/javascript">
            $(function () {
                $('#txtTelevisionPrice').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                            e.preventDefault();
                        }
                    }
                });
            });

            $(function () {
                $('#txtTelevisionScreenSize').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                            e.preventDefault();
                        }
                    }
                });
            });

            $(function () {
                $('#txtTelvisionName').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            e.preventDefault();
                        }
                    }
                });
            });

            $(function () {
                $('#txtTAddedBy').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            e.preventDefault();
                        }
                    }
                });
            });
</script>
    <script type="text/javascript">
        //--------------------------------------------Product Categories------------------------------------------------
        $(document).ready(function () {
            $.ajax({

                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "AddTV.aspx/GetProductCategories",
                data: "{}",
                dataType: "json",
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully
                    var dsResult = $.parseJSON(response.d);
                    if (dsResult.Table.length > 0) {
                        $('#ddlCategories').append("<option value='0'>--Select--</option>");
                        for (var i = 0; i < dsResult.Table.length; i++) {

                            $('<option>').val(dsResult.Table[i].CategoryId).text(dsResult.Table[i].CategoryName).appendTo("#ddlCategories");
                        }
                    };
                },

                error: function (result) {
                    alert("Error");
                }
            });
        });

        //  $("#ddlCategories").change(function () {
        $(document).ready(function () {
            $('#ddlCategories').on('change', function () {
                CatId = $('#ddlCategories').val();
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "AddTV.aspx/GetProductSubCategories",
                    data: JSON.stringify({ "CatId": CatId }),
                    dataType: "json",
                    success: function (response) {
                        //Success or failure message e.g. Record saved or not saved successfully
                        var bindHtml = "";
                        $('#ddlSubCategories').empty();
                        var dsResult = $.parseJSON(response.d);
                        if (dsResult.Table.length > 0) {
                            $('#ddlSubCategories').append("<option value='0'>--Select--</option>");
                            for (var i = 0; i < dsResult.Table.length; i++) {

                                bindHtml += $('<option>').val(dsResult.Table[i].SubCategoryId).text(dsResult.Table[i].SubCategoryName).appendTo("#ddlSubCategories");
                            }
                        };
                    },

                    error: function (result) {
                        alert("Error");
                    }
                });
            });
        })

        $(document).ready(function () {

            $.ajax({

                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "AddTV.aspx/BindBrandToDropdown",
                data: "{}",
                dataType: "json",
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully
                    var dsResult = $.parseJSON(response.d);
                    if (dsResult.Table.length > 0) {
                        $('#ddlTelvisionBrandName').append("<option value='0'>--Select--</option>");
                        for (var i = 0; i < dsResult.Table.length; i++) {
                            //  $("#ddlTelvisionBrandName").append($("<option></option>").val(value.BrandId).html(value.BrandName));

                            $('<option>').val(dsResult.Table[i].BrandId).text(dsResult.Table[i].BrandName).appendTo("#ddlTelvisionBrandName");
                        }
                    };
                },

                error: function (result) {
                    alert("Error");
                }
            });
        });

        $(document).ready(function () {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "AddTV.aspx/BindScreenResolutionToDropdown",
                data: "{}",
                dataType: "json",
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully                  
                    var dsResult = $.parseJSON(response.d);
                    if (dsResult.Table.length > 0) {
                        $('#ddlTelvisionScreenResolution').append("<option value='0'>--Select--</option>");
                        for (var i = 0; i < dsResult.Table.length; i++) {
                            //  $("#ddlTelvisionBrandName").append($("<option></option>").val(value.BrandId).html(value.BrandName));

                            $('<option>').val(dsResult.Table[i].ResolutionId).text(dsResult.Table[i].Resolution).appendTo("#ddlTelvisionScreenResolution");
                        }
                    };
                },

                error: function (result) {
                    alert("Error");
                }
            });
        });

        $(document).ready(function () {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "AddTV.aspx/GetFeatures",
                data: "{}",
                dataType: "json",
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully
                    var dsResult = $.parseJSON(response.d);
                    var count = 0;
                    //$("#AddTelevisionFeatures").append($("<div id = 'SubFeatures'>"));
                    if (dsResult.Table.length > 0) {
                        for (var i = 0; i < dsResult.Table.length; i++) {

                            var chkName = dsResult.Table[i].FeatureName;
                            var chkId = dsResult.Table[i].FeatureId;
                            var Id = 'fId' + count++;
                            $("#AddTelevisionFeatures").append($("<div id = 'SubTelevisionFeatures'>").text(chkName).prepend(
                            $("<input>").attr('type', 'checkbox').attr('id', Id).val(chkName).attr('data-Id', chkId).prop('checked', this.checked)
                          ))
                        };
                    };
                    //$("#SubFeatures").append($("</div>"));
                },

                error: function (result) {
                    alert("Error");
                }
            });
        });

        function validateFileSize() {

            var file;
            var fileUpload = $("#dashboardcontect_f_UploadImageTelvision").get(0);
            var files = fileUpload.files; // getting the files name
            var test = new FormData();
            for (var i = 0; i < files.length; i++) {
                test.append(files[i].name, files[i]);
                var item1 = {
                    "fileName": { "_path": files[i].name }
                };
                var fname = files[i].name;
                if ((file = this.fname)) {
                    var val = $(this).val().toLowerCase();
                    // validate the file extension
                    var regex = new RegExp("(.*?)\.(docx|doc|pdf|xml|bmp|ppt|xls|xlsx|png|gif|jpg|bmp|txt|jpeg)$");
                    alert(regex);
                    if (!(regex.test(val))) {
                        $(this).val('');
                        alert('Please select correct file format');
                        //  $("#loader").hide();
                    }
                    else if (file.size > 10485760) {
                        alert('file size should be less than 10 MB');
                        // $("#loader").hide();
                    }
                }
            }
        }

        var arrFeatures = new Array();
        var arrFeaturesId = new Array();

        // SaveTelevisionDetail is used to save the ProductMobile Details into database 
        function SaveTelevisionDetail(fileName) {

            //  adding Features  to an array          
            var FeatureName = $('#AddTelevisionFeatures > div').find('input:checkbox').length;
            // var InternetFeature = $('div:last').attr('id')
            var fcount = $("#AddTelevisionFeatures").find("input:checked").length;
            if (fcount > 0) {
                var idd = $("#AddTelevisionFeatures").find("input:checked").attr('id');
                var strLengths = idd.length;
                var lastchars = idd.charAt(strLengths - 1);
                if (FeatureName != 0) {
                    for (FeatureId = lastchars; FeatureId < FeatureName; FeatureId++) {
                        var check = $('#' + 'fId' + FeatureId).is(":checked");
                        if ((check != false)) {
                            var id = $('#fId' + FeatureId).attr('id');
                            var strLength = id.length;
                            var lastchar = id.charAt(strLength - 1);
                            var FeatureIdd = id;
                            //  var FeatureIdd = $('#fId' + FeatureIdd).attr('id');
                            var FeatureIdval = $('#' + FeatureIdd).val();
                            var FeaturesId = $('#' + FeatureIdd).attr('data-Id');
                            arrFeatures.push(FeatureIdval);
                            arrFeaturesId.push(FeaturesId);
                        }
                    }
                }
            }
            else {
                alert("Please Select The Features.");
                return false;
            }

            //Get control's values
            // Getting the selected value of Product Category Dropdown.........................................

            var selCategoryId = $('#ddlCategories').val();
            if (selCategoryId == "0") {
                alert("Please Select The Category Name.");
                return false;
            }

            // Getting the selected value of Product Sub-Category Dropdown.........................................
            var selSubCategoryId = $('#ddlSubCategories').val();
            if (selSubCategoryId == "0") {
                alert("Please Select The Sub Category Name.");
                return false;
            }

            var Name = $('#<%=txtTelvisionName.ClientID %>').val();
            if (Name == "") {
                alert("Please Enter The Product Name.");
                return false;
            }

            // Getting the selected value of Brand Dropdown.........................................
            var Brand;
            Brand = $('#ddlTelvisionBrandName').find('option:selected').text();
            //   alert(BrandName);
            if (Brand == "--Select--") {
                alert("Please Choose The Brand Name.");
                return false;
            }

            var Price = $('#<%=txtTelevisionPrice.ClientID %>').val();
            if (Price == "") {
                alert("Please Enter The Product Price.");
                return false;
            }

            var ScreenResolution;
            ScreenResolution = $('#ddlTelvisionScreenResolution').find('option:selected').text();
            if (ScreenResolution == "--Select--") {
                alert("Please Choose The Screen Resolution.");
                return false;
            }
            // Getting the selected value of ScreenSize Dropdown.........................................

            var ScreenSize = $('#<%=txtTelvisionScreenSize.ClientID %>').val();
                if (ScreenSize == "") {
                    alert("Please Choose The Screen Size.");
                    return false;
                }

            // Getting the selected value of Processor Speed Dropdown.........................................

                var AddedBy;
            //if (AddedBy == "") {
            //    alert("Please Enter The Name Who Adding This Product.");
            //    return false;
            //}

            //Jquery ajax call to server side method
            $.ajax({
                type: "POST",
                dataType: "json",
                //Url is the path of our web method (Page name/function name)    
                url: '<%= ResolveUrl("AddTV.aspx/SaveTelevisionDetail") %>',
                //Pass paramenters to the server side function
                data: JSON.stringify({
                    "Name": Name, "Price": Price, "AddedBy": '',
                    "ScreenSize": ScreenSize, "ScreenResolution": ScreenResolution, "Brand": Brand,
                    "fileName": fileName, "CategoryId": selCategoryId, "SubCategoryId": selSubCategoryId, "arrFeatures": arrFeatures, "arrFeaturesId": arrFeaturesId
                }),
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    //Success or failure message e.g. Record saved or not saved successfully
                    //  alert(response.d);
                    alert(response);
                    if (response.d == "Success") {
                        //Reset controls                          
                        $('#txtTelvisionName').val('');
                        $('#txtTelevisionPrice').val('');
                        $('#txtTelvisionAddedBy').val('');
                        $('#ddlTelvisionBrandName').val(0)
                        $('#txtTelevisionScreenSize').val('')
                        $('#ddlTelvisionScreenResolution').val(0)
                        $('#ddlTelevisionFeatures').val(0);
                        $('#ddlCategories').val(0);
                        $('#ddlSubCategories').val(0);
                        $('#txtTAddedBy').val('');
                        $('#AddTelevisionFeatures :checkbox').each(function () {     //loop all checkbox in dvMain div
                            $(this).attr('checked', false);                   //This will uncheck the current checkbox
                        });
                        $('#<%=f_UploadImageTelvision.ClientID %>').val("");
                        alert("Record saved successfully");
                    }
                },

                error: function () {
                    alert("Something Went Wrong");
                }
            });

        }
    </script>
    <script type="text/javascript">

        function doesFileExist(urlToFile) {
            var xhr = new XMLHttpRequest();
            xhr.open('HEAD', urlToFile, false);
            xhr.send();

            if (xhr.status == "404") {
                return false;
            } else {
                return true;
            }
        }

        $(function () {
            $('#btnSubmit').click(function () {

                var fileName = new Array();
                var fileUpload = $("#dashboardcontect_f_UploadImageTelvision").get(0);
                var files = fileUpload.files;
                var test = new FormData();
                for (var i = 0; i < files.length; i++) {
                    test.append(files[i].name, files[i]);
                    var item1 = {
                        "fileName": { "_path": files[i].name }
                    };
                    var fname = files[i].name;
                    //check whether browser fully supports all File API
                    if (window.File && window.FileReader && window.FileList && window.Blob) {
                        //get the file size and file type from file input field
                        var fsize = $('#dashboardcontect_f_UploadImageTelvision')[0].files[i].size;
                        var ftype = $('#dashboardcontect_f_UploadImageTelvision')[0].files[i].type;
                        debugger;
                        var sFileExtension1 = fname.split('.')[fname.split('.').length - 1];
                        var sFileExtension = sFileExtension1.trim();
                        var fname = $('#dashboardcontect_f_UploadImageTelvision')[0].files[i].name;

                        var f = fname.substr(0, fname.lastIndexOf('.'));

                        var re = /(\.jpg|\.jpeg|\.bmp|\.gif|\.png)$/i;
                        if (!re.exec(fname)) {
                            alert("File extension not supported! Please choose a valid file name");
                            return false;
                        }

                        if (fsize > 10485760) //do something if file size more than 10 mb (1048576)
                        {
                            alert("Type :" + ftype + " | " + fsize + " bites\n(File: " + fname + ") Too big! Please Upload File Less Than 10 MB");
                            return false;
                        } else {
                            // alert("Type :" + ftype + " | " + fsize + " bites\n(File :" + fname + ") You are good to go!");
                        }
                    } else {
                        alert("Please upgrade your browser, because your current browser lacks some new features we need!");
                        return false;
                    }
                    var getfilename;
                    var count = 0;
                    count = count + 1;
                    var result = doesFileExist("http://localhost:55768/TelevisionImages\\" + fname);

                    if (result == true) {
                        getfilename = f + count + '.' + sFileExtension;
                        fileName.push(getfilename);
                        count++;
                        //   alert(" file exists!");
                    }
                    else {
                        fileName.push(fname);
                        //  alert(" file does not exist!");
                    }

                }
                if (files.length <= 0) {
                    alert("Please choose a file name");
                    return false;
                }

                $.ajax({
                    url: "TelfileUploader.ashx",
                    type: "POST",
                    contentType: false,
                    processData: false,
                    data: test,
                    // dataType: "json",
                    success: function (test) {
                        SaveTelevisionDetail(fileName);
                    },
                    error: function (err) {
                        SaveTelevisionDetail(fileName);
                    }
                });
            });
        })
    </script>
</asp:Content>
