/*
 * Calibration Recall System
 *
 * calibration.js
 *
 * Version 0.0.1
 * 
 * Author : MIS-Rex
 */

$(function(){
    
   //update record calibration   
   $("#update-btn").on("click",function(ev){
      ev.preventDefault();
      
      var id                = $("[name='id']").val();
      var description       = $("[name='description']").val();
      var manufacturer      = $("[name='manufacturer']").val();
      var model_number      = $("[name='model_number']").val();
      var serial_number     = $("[name='serial_number']").val();
      var frequency         = $("[name='frequency']").val();
      var date_calibration  = $("[name='date_calibration']").val();
      var next_calibration  = $("[name='next_calibration']").val();
      var location          = $("[name='location']").val();
      var tolerance         = $("[name='tolerance']").val();
      var status            = $("[name='status']").val();
      var calibration_hour  = $("[name='calibration_hour']").val();
      var calibration_by    = $("[name='calibration_by']").val();
      var remarks           = $("[name='remarks']").val();
      var rep_number        = $("[name='rep_number']").val();
      
      var con = confirm("Update calibration content?");
      
      if(con){
          $.ajax({ 
                type:"POST",
                url:"/record/update-calibration-content",
                data:{
                        id  : id,
                            description  : description,
                                manufacturer  : manufacturer,
                                    model_number  : model_number,
                                        serial_number  : serial_number,
                                            frequency  : frequency,
                                                date_calibration  : date_calibration,
                                                    next_calibration  : next_calibration,
                                                location  : location,
                                            tolerance  : tolerance,
                                        status  : status,
                                    calibration_hour  : calibration_hour,                   
                                calibration_by  : calibration_by,                   
                            remarks  : remarks,                   
                        rep_number  : rep_number                   
                    },
                success: function(){ 
                    alert("Successfully updated!");  
                    window.location.reload(true);
                    $("#scheduleModal").modal('hide');
                }
          });
      }
   });
   
   // search record
     $("[name='searchRecord']").keyup(function(){

        $(".searchRecord-results").show();
        var cs_code = this.value.trim();
        $(".searchRecord-results").hide();

        if(cs_code == '' || cs_code == null) {$(".searchRecord-results").hide();}
        else {
            $.ajax({
                dataType : "json",  
                type    : "POST",
                url     : "/record/show-search-record",
                data    : {
                            cs_code:cs_code
                          },

                success : function(data){
                    
                    var html= "";
                    if(data != ''){
                            html += "<tr>";
                            html += "<th> CS_CODE&nbsp; </th>";
                            html += "<th> DESCRIPTION&nbsp;&nbsp;&nbsp; </th>";
                            html += "<th> MANUFACTURER&nbsp;&nbsp; </th>";
                            html += "</tr>";
                        $(data).each(function(){//loops
                            html += "<tr style=':hover {background: yellow;}'>";
                                    html += "<td> <span class='label label-default'>"+ this.cs_code +"</span>&nbsp;&nbsp;&nbsp; </td>";
                                html += "<td> " + this.description +"&nbsp; </td>";
                                html += "<td> " + this.manufacturer +"&nbsp;&nbsp;&nbsp;&nbsp; </td>";
                                html += "<td> <a href='javascript:;' onclick='viewCalibrationContent("+ this.id +")'> View </a>";
                                html += " | ";
                                html += "<td> <a href='javascript:;' onclick='editCalibrationContent("+ this.id +")'> Edit </a>";
//                                html += " | ";
//                                html += "<a href='javascript:;' onclick='deleteCalibrationEntry("+ this.id +")'> Delete </a> </td>";
//                            html += "</tr><hr />";
                        });
                    }else{
                        html+= "CS_CODE does not exist!";
                    }
                    
                    $(".searchRecord-results").show().html(html);
                }
            });
        }
    });
    
    //add record
    $("#addRecord").on("click",function(ev){
        ev.preventDefault();
        
        $("#calibrationModal").modal('show');
        $("#add-btn").show()
    });
    
    //reservation
    $("#reservation").on('change', 'input', function() {
        alert();
    });
    
    
   
   // search print
     $("[name='searchPrint']").keyup(function(){

        $(".searchPrint-results").show();
        var str = this.value.trim();
        $(".searchPrint-results").hide();

        if(str == '' || str == null) {$(".searchPrint-results").hide();}
        else {
            $.ajax({
                dataType : "json",  
                type    : "POST",
                url     : "/print/show-search-print",
                data    : {
                            str:str
                          },

                success : function(data){
                    var html= "";
                    if(data != ''){
                            html += "<tr>";
                            html += "<th> CS_CODE&nbsp; </th>";
                            html += "<th> DESCRIPTION&nbsp;&nbsp;&nbsp; </th>";
                            html += "<th> MANUFACTURER&nbsp;&nbsp; </th>";
                            html += "</tr>";
                        $(data).each(function(){//loops
                            
                            html += "<tr style=':hover {background: yellow;}'>";
                                    html += "<td> <span class='label label-default'>"+ this.cs_code +"</span>&nbsp;&nbsp;&nbsp; </td>";
                                html += "<td> " + this.description +"&nbsp; </td>";
                                html += "<td> " + this.manufacturer +"&nbsp;&nbsp;&nbsp;&nbsp; </td>";
                                html += "<td> <a href='javascript:;' onclick='viewCalibrationContent("+ this.id +")'> View </a>";
                                html += " | ";
                                html += "<td> <a href='javascript:;' onclick='editCalibrationContent("+ this.id +")'> Edit </a>";
//                                html += " | ";
//                                html += "<a href='javascript:;' onclick='deleteCalibrationEntry("+ this.id +")'> Delete </a> </td>";
//                            html += "</tr><hr />";
                        });
                    }else{
                        html+= "Data does not exist!";
                    }
                    
                    $(".searchPrint-results").show().html(html);
                }
            });
        }
    });
    
    //print-back-btn
    $("#printBack-btn").click(function(){
      $(".prinTab-pane").show();
      $(".printTable-view").hide();
    });
    
    //add reminder
    $("#addReminder").on("click",function(){
        $("#reminderModal").modal('show');
        $("#addReminderForm").show();
        $("#updateReminder-btn").hide();
        $("#addReminder-btn").show();
        
    });
    
    //update reminder
    $("#updateReminder-btn").on("click",function(){
        var id = $("[name='id']").val();    
        var dateRemind = $("[name='dateRemind1']").val();
        var message = $("[name='message1']").val();
        var status = $("[name='status']").val();
        
        var con = confirm("Update reminder?");
        if(con){
            $.ajax({  
                type:"POST",
                url:"/file/update-reminder",
                data:{
                        id  : id ,
                            dateRemind  : dateRemind ,
                            message  : message ,
                        status  : status 
                    },
                success : function(){
                    alert("Successfully updated!");
                    location.reload();
                    $("#reminderModal").modal('hide');
                }
            });
        }
    });
    
    //add personnel
    $("#addPersonnel").on("click",function(){
        $("#personnelModal").modal('show');
        $("#addPersonnelForm").show();
        $("#updatePersonnel-btn").hide();
        $("#addPersonnel-btn").show();
        
    });
    
    //update personnel
    $("#updatePersonnel-btn").on("click",function(){
        var id = $("[name='id']").val();    
        var fname = $("[name='fname1']").val();
        var lname = $("[name='lname1']").val();
        var department = $("[name='department1']").val();
        var type = $("[name='type1']").val();    
        var defaultType = $("[name='defaultType']").val();  
        
        var setType ="";
        if(type){  setType = type;
        }else{ setType = defaultType; }
        
        var con = confirm("Update Personnel Data?");
        if(con){
            $.ajax({  
                type:"POST",
                url:"/file/update-personnel-data",
                data:{
                        id  : id ,
                            fname  : fname ,
                                lname  : lname ,
                            department  : department ,
                        setType  : setType 
                    },
                success : function(){
                    alert("Successfully updated!");
                    location.reload();
                    $("#personnelModal").modal('hide');
                }
            });
        }
    });
       
});

function viewCalibrationContent(id){
    $("#scheduleModal").modal('show');
    $("#update-btn").hide();
    $("#schedule-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/calibration/schedule-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "<table>";
                html += "<tr><td> CS_CODE : </td><td class='label label-default'>&nbsp;" + data.cs_code +"</td></tr>";
                html += "<tr><td> DESCRIPTION : </td><td class='label label-default'>&nbsp;" + data.description +"</td></tr>";
                html += "<tr><td> MANUFACTURER : </td><td class='label label-default'>&nbsp;" + data.manufacturer +"</td></tr>";
                html += "<tr><td> MODEL NUMBER : </td><td class='label label-default'>&nbsp;" + data.model_number +"</td></tr>";
                html += "<tr><td> SERIAL NUMBER : </td><td class='label label-default'>&nbsp;" + data.serial_number +"</td></tr>";
                html += "<tr><td> FREQUENCY : </td><td class='label label-default'>&nbsp;" + data.frequency +"</td></tr>";
                html += "<tr><td> DATE CALIBRATED : </td><td class='label label-default'>&nbsp;" + data.date_calibration +"</td></tr>";
                html += "<tr><td> NEXT CALIBRATION : </td><td class='label label-default'>&nbsp;" + data.next_calibration +"</td></tr>";
                html += "<tr><td> LOCATION : </td><td class='label label-default'>&nbsp;" + data.location +"</td></tr>";
                html += "<tr><td> TOLERANCE : </td><td class='label label-default'>&nbsp;" + data.tolerance +"</td></tr>";
                html += "<tr><td> PRESENT STATUS : </td><td class='label label-default'>&nbsp;" + data.status +"</td></tr>";
                html += "<tr><td> CALIBRATION HOUR : </td><td class='label label-default'>&nbsp;" + data.calibration_hour +"</td></tr>";
                html += "<tr><td> CALIBRATED BY : </td><td class='label label-default'>&nbsp;" + data.calibration_by +"</td></tr>";
                html += "<tr><td> REMARKS : </td><td class='label label-default'>&nbsp;" + data.remarks +"</td></tr>";
                html += "<tr><td> REPORT NUMBER : </td><td class='label label-default'>&nbsp;" + data.rep_number +"</td></tr>";
                html += "</table>";
            $("#schedule-content").html(html);

        }
    });
}

function editCalibrationContent(id){
    $("#scheduleModal").modal('show');
    $("#update-btn").show();
    $("#schedule-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/calibration/schedule-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "<input type='hidden' name='id' value='" + data.id +"'>";
                html += "<table>";
                html += "<tr><td> CS_CODE : </td><td>&nbsp;<input disabled type='text' name='' value='" + data.cs_code +"'></td></tr>";
                html += "<tr><td> DESCRIPTION : </td><td>&nbsp;<input autofocus type='text' name='description' value='" + data.description +"'></td></tr>";
                html += "<tr><td> MANUFACTURER : </td><td>&nbsp;<input type='text' name='manufacturer' value='" + data.manufacturer +"'></td></tr>";
                html += "<tr><td> MODEL NUMBER : </td><td>&nbsp;<input type='text' name='model_number' value='" + data.model_number +"'></td></tr>";
                html += "<tr><td> SERIAL NUMBER : </td><td>&nbsp;<input type='text' name='serial_number' value='" + data.serial_number +"'></td><td><a href='javascript:;' onclick='serialGenerate()'>&nbsp;Generate?</a></td></tr>";
                html += "<tr><td> FREQUENCY : </td><td>&nbsp;<input type='text' name='frequency' value='" + data.frequency +"'></td></tr>";
                html += "<tr><td> DATE CALIBRATED : </td><td>&nbsp;<input type='text' name='date_calibration' value='" + data.date_calibration +"'></td></tr>";
                html += "<tr><td> NEXT CALIBRATION : </td><td>&nbsp;<input type='text' name='next_calibration' value='" + data.next_calibration +"'></td></tr>";
                html += "<tr><td> LOCATION : </td><td>&nbsp;<input type='text' name='location' value='" + data.location +"'></td></tr>";
                html += "<tr><td> TOLERANCE : </td><td>&nbsp;<input type='text' name='tolerance' value='" + data.tolerance +"'></td></tr>";
                html += "<tr><td> PRESENT STATUS : </td><td>&nbsp;<input type='text' name='status' value='" + data.status +"'></td></tr>";
                html += "<tr><td> CALIBRATION HOUR : </td><td>&nbsp;<input type='text' name='calibration_hour' value='" + data.calibration_hour +"'></td></tr>";
                html += "<tr><td> CALIBRATED BY : </td><td>&nbsp;<input type='text' name='calibration_by' value='" + data.calibration_by +"'></td></tr>";
                html += "<tr><td> REMARKS : </td><td>&nbsp;<input type='text' name='remarks' value='" + data.remarks +"'></td></tr>";
                html += "<tr><td> REPORT NUMBER : </td><td>&nbsp;<input type='text' name='rep_number' value='" + data.rep_number +"'></td></tr>";
                html += "</table>";
            $("#schedule-content").html(html);
        }
    });
    
    
}

function deleteCalibrationEntry(id){
    var con = confirm("Delete calibration entry?");
    
    if(con){
        $.ajax({  
            type:"POST",
            url:"/record/delete-calibration-entry",
            data:{
                    id  : id 
                },
            success : function(){
                alert("Successfully deleted!");
                location.reload();
            }
        });
    }
}

//Reminder//
function viewReminderContent(id){
    $("#reminderModal").modal('show');
    $("#addReminderForm").hide();
    $("#updateReminder-btn").hide();
    $("#addReminder-btn").hide();
    $("#reminder-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/file/view-reminder-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "<table>";
                html += "<tr><td> ID : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.id +"</td></tr>";
                html += "<tr><td> Date : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.dateRemind +"</td></tr>";
                html += "<tr><td> Message : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.message +"</td></tr>";
                html += "<tr><td> Status : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.status +"</td></tr>";
                html += "</table>";
            $("#reminder-content").html(html);

        }
    });
}

function editReminderContent(id){
    $("#reminderModal").modal('show');
    $("#addReminderForm").hide();
    $("#updateReminder-btn").show();
    $("#addReminder-btn").hide();
    $("#reminder-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/file/view-reminder-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "";
                html += "<table>";
                html += "<tr><td> ID : </td><td>&nbsp;<input disabled type='text' name='id' value='" + data.id +"'></td></tr>";
                html += "<tr><td> Date : </td><td>&nbsp;<input autofocus type='text' name='dateRemind1' value='" + data.dateRemind +"'></td></tr>";
                html += "<tr><td> Message : </td><td>&nbsp;<input type='text' name='message1' value='" + data.message +"'></td></tr>";
                html += "<tr><td> Status : </td><td>&nbsp;<input type='text' name='status' value='" + data.status +"'></td></tr>";
                html += "</table>";
            $("#reminder-content").html(html);
        }
    });
}

function deleteReminderEntry(id){
    var con = confirm("Delete reminder?");
    if(con){
        $.ajax({  
            type:"POST",
            url:"/file/delete-reminder",
            data:{
                    id  : id 
                },
            success : function(){
                alert("Successfully deleted!");
                location.reload();
            }
        });
    }
}

//Personnel Data//
function viewPersonnelContent(id){
    $("#personnelModal").modal('show');
    $("#addPersonnelForm").hide();
    $("#updatePersonnel-btn").hide();
    $("#addPersonnel-btn").hide();
    $("#personnel-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/file/view-personnel-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "<table>";
                html += "<tr><td> ID : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.id +"</td></tr>";
                html += "<tr><td> Name : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.fname +" "+data.lname+"</td></tr>";
                html += "<tr><td> Department : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.department +"</td></tr>";
                html += "<tr><td> Type : </td><td class='label label-default'>&nbsp;&nbsp;&nbsp;" + data.type +"</td></tr>";
                html += "</table>";
            $("#personnelData-content").html(html);

        }
    });
}

function editPersonnelContent(id){
    $("#personnelModal").modal('show');
    $("#addPersonnelForm").hide();
    $("#updatePersonnel-btn").show();
    $("#addPersonnel-btn").hide();
    $("#personnel-content").html("");
        
    $.ajax({
        dataType : "json",  
        type:"POST",
        url:"/file/view-personnel-content",
        data:{
                id  : id 
            },
        success: function(data){
            
            var html= "<table>";
                html += "<tr><td> ID : </td><td>&nbsp;<input disabled type='text' name='id' value='" + data.id +"'></td></tr>";
                html += "<tr><td> First Name : </td><td>&nbsp;<input autofocus type='text' name='fname1' value='" + data.fname +"'></td></tr>";
                html += "<tr><td> Last Name : </td><td>&nbsp;<input type='text' name='lname1' value='" + data.lname +"'></td></tr>";
                html += "<tr><td> Department : </td><td>&nbsp;<input type='text' name='department1' value='" + data.department +"'></td></tr>";
                html += "<tr><td> Type :";
                html += '<td><select class="" name="type1" required>';
                    html += '<option value="">'+ data.type +'</option>';
                    html += '<option value="Calibrator 1">Calibrator 1</option>';
                    html += '<option valu="Calibrator 2">Calibrator 2</option>';
                html += '</select></td><input type="hidden" value="'+data.type+'" name="defaultType" /></tr>';
                html += "</table>";
            $("#personnelData-content").html(html);

        }
    });
}

function deletePersonnelEntry(id){
    var con = confirm("Delete Personnel Data?");
    if(con){
        $.ajax({  
            type:"POST",
            url:"/file/delete-personnel",
            data:{
                    id  : id 
                },
            success : function(){
                alert("Successfully deleted!");
                location.reload();
            }
        });
    }
}