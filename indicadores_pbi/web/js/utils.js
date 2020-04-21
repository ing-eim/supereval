/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function addrow(tbl){    
    var input = "<input class='form-control col-sm-6' type='text' value=0>";
    var tdwinput = "<td>"+input+"</td>";
    var btndelr = "<td><input type='button' class='btn btn-danger' onclick ='delrow(this);' value=' - ' title='Quitar Fila'></td>"
    var tr = "<tr>"+tdwinput+tdwinput+tdwinput+tdwinput+tdwinput+btndelr+"</tr>";    
    $(tbl +" tbody").append(tr);
}

function delrow(row){
    var tr= $(row).parent().parent();    
    $(tr).remove();   
}