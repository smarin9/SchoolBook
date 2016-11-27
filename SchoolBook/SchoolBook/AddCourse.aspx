﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="SchoolBook.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">

    <style>
        .responstable {
            margin: 1em 0;
            width: 100%;
            overflow: hidden;
            background: #FFF;
            color: #024457;
            border-radius: 10px;
            border: 1px solid #167F92;
        }

            .responstable tr {
                border: 1px solid #D9E4E6;
            }

                .responstable tr:nth-child(odd) {
                    background-color: #EAF3F3;
                }

            .responstable th {
                display: none;
                border: 1px solid #FFF;
                background-color: #167F92;
                color: #FFF;
                padding: 1em;
            }

                .responstable th:first-child {
                    display: table-cell;
                    text-align: center;
                }

                .responstable th:nth-child(2) {
                    display: table-cell;
                }

                    .responstable th:nth-child(2) span {
                        display: none;
                    }

                    .responstable th:nth-child(2):after {
                        content: attr(data-th);
                    }

        @media (min-width: 480px) {
            .responstable th:nth-child(2) span {
                display: block;
            }

            .responstable th:nth-child(2):after {
                display: none;
            }
        }

        .responstable td {
            display: block;
            word-wrap: break-word;
            max-width: 7em;
        }

            .responstable td:first-child {
                display: table-cell;
                text-align: center;
                border-right: 1px solid #D9E4E6;
            }

        @media (min-width: 480px) {
            .responstable td {
                border: 1px solid #D9E4E6;
            }
        }

        .responstable th, .responstable td {
            text-align: left;
            margin: .5em 1em;
        }

        @media (min-width: 480px) {
            .responstable th, .responstable td {
                display: table-cell;
                padding: 1em;
            }
        }

        body {
            padding: 0 2em;
            font-family: Arial, sans-serif;
            color: #024457;
            background: #f2f2f2;
        }

        h1 {
            font-family: Verdana;
            font-weight: normal;
            color: #024457;
        }

            h1 span {
                color: #167F92;
            }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <h2>Add Course</h2>
    <h3>Select a course from the drop down list, courses are only displayed according to the university registered.</h3>
    <lable>Course: </lable> 
<asp:DropDownList ID = "ddlCourses" runat="server" OnSelectedIndexChanged="ddlCourses_SelectedIndexChanged" >
</asp:DropDownList>
    <asp:Button ID="SearchBtn" runat="server" onclick="Find_Click" Text="Find" />  

<asp:PlaceHolder ID ="CourseTbl" runat="server">

    </asp:PlaceHolder>
<asp:Button ID="AddCourseBtn" runat="server" Text="Add Course" OnClick="AddCourseBtn_Click" Visible="false"/> 
<h3 runat="server" id="Msglbl"></h3>

</asp:Content>