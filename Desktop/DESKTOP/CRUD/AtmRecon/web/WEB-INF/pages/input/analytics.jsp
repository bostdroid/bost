<%-- 
    Document   : analyticsinput
    Created on : Oct 20, 2017, 4:35:43 PM
    Author     : TechDev
--%>

<%@taglib  prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>ATM Reconciliation Tool</title>
        
        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
        
        <!-- page specific plugin styles -->
        
        <!-- text fonts -->
        <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
        
        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
        <script src="chart/Chart.bundle.js" type="text/javascript"></script>
        
        <script src="chart/utils.js" type="text/javascript"></script>
        
        
        
        
        <style type="text/css">
            canvas{
                -moz-user-select: none;
                -webkit-user-select: none;
                -ms-user-select: none;
            }
        </style>
        
        <!-- animate.css -->
        <link rel="stylesheet" href="assets/animate/animate.css" />
        <link rel="stylesheet" href="assets/animate/set.css" />
        
        <!-- gallery -->
        <link rel="stylesheet" href="assets/gallery/blueimp-gallery.min.css">
    </head>
    <body class="no-skin">
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <!-- End Nav Bar -->
        <div class="main-container ace-save-state" id="main-container">
            
            <!--Sidebar-->
            <%@include file="/WEB-INF/jspf/sidebar.jspf" %>
            <!--End Sidebar-->
            
            
            
            
            <div class="main-content">
                <div class="main-content-inner">
                    <!--                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                                            <ul class="breadcrumb">
                                                <li>
                                                    <a href="initAgent">Terminal</a>
                                                </li>
                    
                                            </ul> /.breadcrumb 
                    
                                            <div class="nav-search" id="nav-search">
                                                <form class="form-search">
                                                    <span class="input-icon">
                                                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                                                    </span>
                                                </form>
                                            </div> /.nav-search 
                                        </div>-->
                    <div class="row">
                    <div class="col-md-4">
                    <div style="width: 100%">
                        <div><h5>Top 5 Busiest Terminals </h5></div>
                        <canvas id="myChart" height="100" width="100"></canvas>
                    </div>
                    </div>
                    <div class="col-md-4">
                    <div style="width: 100%">
                        <div><h5>Top 5 Unimpacted terminals</h5></div>
                        <canvas id="myChart2" height="100" width="100"></canvas>
                    </div>
                    </div>
                    <div class="col-md-4">
                    <div style="width: 100%">
                        <div><h5>Dispense Error Transactions</h5></div>
                        <canvas id="myChart3" height="100" width="100"></canvas>
                    </div>
                    </div>
                          <div class="col-md-4">
                    <div style="width: 100%">
                        <div><h5>Top 5 Unimpacted terminals</h5></div>
                        <canvas id="myChart4" height="100" width="100"></canvas>
                    </div>
                    </div>
                    </div>
                    <!--       <script>
                                    var ctx = document.getElementById("myChart1").getContext('2d');
                                    var myChart = new Chart(ctx1, {
                                    type: 'bar',
                                            data: {
                    
                                            labels:
                                            [
                    <s:iterator value="disperror">
                            "<s:property value="terminal"/>",
                    </s:iterator>],
                                    datasets: [{
                                    label: 'ATM Machine with Highest Dispense Error',
                                            data:
                                    [
                    <s:iterator value="disperror">
                        <s:property value="display"/>,
                    </s:iterator>
                                    ],
            {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,0.8)",
                highlightFill : "rgba(151,187,205,0.75)",
                highlightStroke : "rgba(151,187,205,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            }
            }];
            }
    });
    </script>
    <script>
                    var ctx = document.getElementById("myChart2").getContext('2d');
                    var myChart = new Chart(ctx2, {
                    type: 'bar',
                            data: {
    
                            labels:
                            [
                    <s:iterator value="busiest">
                            "<s:property value="terminal"/>",
                    </s:iterator>],
                                    datasets: [{
                                    label: 'ATM Machine with Highest Dispense Error',
                                            data:
                                    [
                    <s:iterator value="busiest">
                        <s:property value="amount"/>,
                    </s:iterator>
                                    ],
             {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,0.8)",
                highlightFill : "rgba(151,187,205,0.75)",
                highlightStroke : "rgba(151,187,205,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            }
            }];
            }
    });
    </script>
    <script>
     
                    var ctx = document.getElementById("myChart3").getContext('2d');
                    var myChart = new Chart(ctx3, {
                    type: 'line',
                            data: {
    
                            labels:
                            [
                    <s:iterator value="unimpacted">
                            "<s:property value="terminal"/>",
                    </s:iterator>],
                                    datasets: [{
                                    label: 'Transaction Type',
                                            data:
                                    [
                    <s:iterator value="unimpacted">
                        <s:property value="display"/>,
                    </s:iterator>
                                    ],
             {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,0.8)",
                highlightFill : "rgba(151,187,205,0.75)",
                highlightStroke : "rgba(151,187,205,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            }
            }];
            }
    });
    </script>
    <script>
    window.onload = function(){
        var ctx1 = document.getElementById("myChart1").getContext("2d");
        window.myBar = new Chart(ctx1).Bar(barChartData1, {
            responsive : true
        });
        var ctx2 = document.getElementById("myChart1").getContext("2d");
        window.myLine = new Chart(ctx2).Line(lineChartData2, {
            responsive : true
        });
        var ctx1 = document.getElementById("myChart1").getContext("2d");
        window.myBar = new Chart(ctx3).Bar(barChartData1, {
            responsive : true
        });
    };
    
    
    </script> -->
                    
                </div>
            </div>  
        </div>
        
        
    </body>
</html>


<script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [<s:iterator value="busiest">
                "<s:property value="terminal"/>",
    </s:iterator>],
                    datasets: [{
                            label: 'Terminal Value',
                            data: [<s:iterator value="busiest">
        <s:property value="amount"/>,
    </s:iterator>],
                            
            
                            
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(255, 206, 86, 0.2)',
                                    'rgba(75, 192, 192, 0.2)',
                                    'rgba(153, 102, 255, 0.2)',
                                    'rgba(255, 159, 64, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255,99,132,1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)',
                                    'rgba(75, 192, 192, 1)',
                                    'rgba(153, 102, 255, 1)',
                                    'rgba(255, 159, 64, 1)'
                                ],
                                borderWidth: 1
                            }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        }
                    }
                });
</script>
<script>
            var ctx = document.getElementById("myChart2").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: [<s:iterator value="unimpacted">
                        "<s:property value="terminal"/>",
    </s:iterator>],
                            datasets: [{
                                    label: 'Terminal Value ',
                                    data: [<s:iterator value="unimpacted">
        <s:property value="display"/>,
    </s:iterator>],
                            
            
                            
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)',
                                            'rgba(54, 162, 235, 0.2)',
                                            'rgba(255, 206, 86, 0.2)',
                                            'rgba(75, 192, 192, 0.2)',
                                            'rgba(153, 102, 255, 0.2)',
                                            'rgba(255, 159, 64, 0.2)'
                                        ],
                                        borderColor: [
                                            'rgba(255,99,132,1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)',
                                            'rgba(153, 102, 255, 1)',
                                            'rgba(255, 159, 64, 1)'
                                        ],
                                        borderWidth: 1
                                    }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                            ticks: {
                                                beginAtZero: true
                                            }
                                        }]
                                }
                            }
                        });
</script>
<script>
                    var ctx = document.getElementById("myChart3").getContext('2d');
                    var myChart = new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: [<s:iterator value="disperror">
                                "<s:property value="terminal"/>",
    </s:iterator>],
                                    datasets: [{
                                            label: 'Terminal Value',
                                            data: [<s:iterator value="disperror">
        <s:property value="display"/>,
    </s:iterator>],
                            
            
                            
                                                backgroundColor: [
                                                    'rgba(255, 99, 132, 0.2)',
                                                    'rgba(54, 162, 235, 0.2)',
                                                    'rgba(255, 206, 86, 0.2)',
                                                    'rgba(75, 192, 192, 0.2)',
                                                    'rgba(153, 102, 255, 0.2)',
                                                    'rgba(255, 159, 64, 0.2)'
                                                ],
                                                borderColor: [
                                                    'rgba(255,99,132,1)',
                                                    'rgba(54, 162, 235, 1)',
                                                    'rgba(255, 206, 86, 1)',
                                                    'rgba(75, 192, 192, 1)',
                                                    'rgba(153, 102, 255, 1)',
                                                    'rgba(255, 159, 64, 1)'
                                                ],
                                                borderWidth: 1
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            yAxes: [{
                                                    ticks: {
                                                        beginAtZero: true
                                                    }
                                                }]
                                        }
                                    }
                                });
</script>
<script>
            var ctx = document.getElementById("myChart4").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: [<s:iterator value="unimpacted">
                        "<s:property value="terminal"/>",
    </s:iterator>],
                            datasets: [{
                                    label: 'Terminal Value',
                                    data: [<s:iterator value="unimpacted">
        <s:property value="display"/>,
    </s:iterator>],
                            
            
                            
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)',
                                            'rgba(54, 162, 235, 0.2)',
                                            'rgba(255, 206, 86, 0.2)',
                                            'rgba(75, 192, 192, 0.2)',
                                            'rgba(153, 102, 255, 0.2)',
                                            'rgba(255, 159, 64, 0.2)'
                                        ],
                                        borderColor: [
                                            'rgba(255,99,132,1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)',
                                            'rgba(153, 102, 255, 1)',
                                            'rgba(255, 159, 64, 1)'
                                        ],
                                        borderWidth: 1
                                    }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                            ticks: {
                                                beginAtZero: true
                                            }
                                        }]
                                }
                            }
                        });
</script>

























































