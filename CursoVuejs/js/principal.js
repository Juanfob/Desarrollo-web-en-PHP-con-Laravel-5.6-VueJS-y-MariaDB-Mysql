var app = new Vue ({
    el : '#app',
    data : {
        mensaje:  'Hola vue.js!',
        listax : [
            {nombre: 'Juan Carlos', promedio: '10', estado: false},
            {nombre: 'Liliana Nataly', promedio: '17', estado: true},
            {nombre: 'Luis Alberto', promedio: '18', estado: true}
        ],
        lista : [

        ],
        nombre: '',
        promedio: ''
    },
    methods : {
        agregarNota: function () {
            estadoA=false;
            if(this.promedio>=12.5){
                estadoA=true;
            }
            if(this.nombre!="" && this.promedio!=""){
                this.lista.push({nombre:this.nombre, promedio:this.promedio, estado:estadoA});
                this.nombre="";
                this.promedio="";
            }else{
                alert("Ingrese el nombre y el promedio del estudiante");
            }
        }
    }
});