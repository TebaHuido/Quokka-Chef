//Se agrega el evento cuando se haga click en el boton y se ejecuta la funcion "getdatos"
document.addEventListener(DOMContentLoaded,getdatos);
//Defincicion de la funcion getdatos
function getdatos(){
    //Instanciamos el objeto XMLHttpRequest
    const xhttp = new XMLHttpRequest();
    //Se obtiene el valor del selector que contiene el nombre del arcchivo json(json1.json,json2.json,json3.json)
    let aux = document.getElementById("jsons").value;
    //Inicializamos la peticion tipo get para obtener un valor
    //con la direccion que se almaceno desde el selector
    //y con la coneccion asincronica activada
    xhttp.open('GET', aux, true);
    //Se envia la solicitud
    xhttp.send();
    //Aca se define la funcion que que se ejecute cuando cambie el estado de la peticion
    xhttp.onreadystatechange=function(){
        //Aca se especifica lo que sucedera cuando sea 4 (que se completo) y que el estado sea 200 (respuesta correcta)
        if(this.readyState == 4 && this.status == 200){
            //Se guarda la respuesta y parseada en una variable
            let datos = JSON.parse(this.responseText);
            //Se guarda donde se realizaran la impresiones de los datos
            let res =document.querySelector('#res');
            //se limpia el html que podria contener si antes se mostraron otros datos
            res.innerHTML='';
            //Si el valor del selector es "json1.json" se ejecuta la impresion de la tabla
            if(aux == "json2.json"){//Segundo json imprimir una lista desordenada
                //Se inyecta la lista pero vacia con id="res2"
                res.innerHTML = `
                <ul id="res2">
                </ul>
                `
                for(let item of datos.listadeutiles){
                    //Se inyectan los items de lista
                    res2.innerHTML += `
                    <li>${item} </li>
                    `
                }
            }   
        }
    }
};