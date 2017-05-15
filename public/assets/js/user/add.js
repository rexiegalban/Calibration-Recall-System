$(function(){
    
   $("#ajaxForm").on("submit",function(ev){
        ev.preventDefault();
        var username    = $("[name='username']").val();
        var password    = $("[name='password']").val();
        var fullname    = $("[name='fullname']").val();
        var type        = $("[name='type']").val();
        
        $.ajax({
            dataType : "json",
            type:"POST",
            url:"/user/ajax-add",
            data:{
                username    : username,
                password    : password,
                fullname    : fullname,
                type        : type
            },
            success: function(data){
                alert("Successfully added!");
                $(".addUserModal").modal("hide");
                location.reload(true);
            }
        });
    }); 
    
    $("#ajaxSearch").on("submit",function(ev){
        ev.preventDefault();
        var uname = $("#uname").val();

        
        $.ajax({
            dataType : "json",  
            type:"POST",
            url:"/user/ajax-show-all",
            success: function(data){
                var html= "";
                $(data).each(function(){//loops
                    html += "<tr>";
                        html += "<td>" + this.uname +"</td>";
                        html += "<td>" + this.pword +"</td>";
                        html += "<td>" + this.fullname +"</td>";
                    html += "</tr>";
                });
                $("#all-users-table tbody").html(html);
                
            }
        });
    });
    
    $("#ajaxHtml").on("submit",function(ev){
        ev.preventDefault();
              
        $.ajax({
            dataType : "html",
            type:"POST",
            url:"/user/ajax-show-view",
            success: function(html){
                $("#html-box").html(html);
                
            }
        });
    });
    

});