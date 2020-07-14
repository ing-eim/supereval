/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 $(function(){
        $("#frmfilecomision").on("submit", function(e){
            e.preventDefault();
            var f = $(this);
            var formData = new FormData(document.getElementById("frmfilecomision"));
            //formData.append("dato", "valor");
            //formData.append(f.attr("name"), $(this)[0].files[0]);
            $.ajax({
                url: "UploadFiles",
                type: "post",
                dataType: "html",
                data: formData,
                cache: false,
                contentType: false,
	        processData: false
            })
                .done(function(res){
                        var r = res.split("|");
                        alert(r[1]);
                });
        });
        
        
        $("#frmfilecorrectivo").on("submit", function(e){
            e.preventDefault();
            var f = $(this);
            var formData = new FormData(document.getElementById("frmfilecomision"));
            //formData.append("dato", "valor");
            //formData.append(f.attr("name"), $(this)[0].files[0]);
            $.ajax({
                url: "UploadFiles2",
                type: "post",
                dataType: "html",
                data: formData,
                cache: false,
                contentType: false,
	        processData: false
            })
                .done(function(res){
                        var r = res.split("|");
                        alert(r[1]);
                });
        });
        
        
    });

