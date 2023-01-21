function cargaCatalogoUsuarios(){
	$.ajax({			
		url :'CatalogoUsuarios',                               // URL al que vamos a hacer el pedido
		data : "vista=consultaUsuarios",  // Paso de parametros, para pasar en JSON es -- >  JSON.stringify(dataSend) donde: dataSend = { uname: unm };   
		type : 'POST',                                // tipo de request que estamos generando
		dataType : 'json', 
		 beforeSend: function () {
             $('body').addClass('loading'); //Agregamos la clase loading al body
         },// formato de transmición de datos que recibimos del server
		success : function(resp)                          // función que va a ejecutar si el pedido fue exitoso				
		{    	    		
			alert("Entra a catalogo")
			var catalogo = resp.CAT_USU;
				cargaTablaUsuarios(catalogo);
		},
		error : function(xhr, status, error)            // función que va a ejecutar si  hubo algun error
		{								
			return false;			
		} 
	});  
	
	function muestraInputCorreo(){
		$("#txtCorreoAlternativo").css('display','block')
	}
	function validarImagenes(){
		alert("Entra")
		var fileInput = document.getElementById('fileImagenAct');
	    var filePath = fileInput.value;
     var j = 0;
    for(var i = 0; i < obj.files.length; i++) 
    {
    	 var uploadFile = obj.files[parseInt(i)];
    	
    		if (!(/\.(jpg|png|jpeg)$/i).test(uploadFile.name)) {
        		bootbox.alert({
    			    message: 'El archivo a adjuntar no es una imagen: ' + uploadFile.name,
    			    size: 'small'
    			});
        		fileInput.value = '';
            }
        	else 
            {
                var img = new Image();
                img.onload = function () {            	            	
                   if (fileInput.files && fileInput.files[parseInt(j)]) {                	
                        var reader = new FileReader();
                        reader.onload = function(e) {
                      	   $('#preview').css('display', 'block');
                            document.getElementById('preview').innerHTML += '<img src="'+e.target.result+'" width="50%" height="50%"/>';
                        };
                        reader.readAsDataURL(fileInput.files[parseInt(j)]);
                        j = j+1;
                    }
                	
                };
                img.src = URL.createObjectURL(uploadFile);       	       
            }
        }
	}

	
}