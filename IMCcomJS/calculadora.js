var botao = document.getElementById("btnCalcula");

botao.addEventListener('click',function() {
    var peso = document.getElementById("inputPeso").value;
    peso = parseFloat(peso);
    
    var altura = document.getElementById("inputAltura").value;
    altura = parseFloat(altura);

    calculaIMC(peso,altura);
});

var imc     
function calculaIMC(peso,altura){

    imc = peso/(altura * altura);

    if(imc >= 0 && imc <= 16.9){
        alert("Muito abaixo do peso ");
    } else if (imc >= 17 && imc <= 18.4){
        alert("Abaixo do peso ");
    }else if (imc >= 18.5 && imc <= 24.9){
        alert("Peso normal ");
    }else if (imc >= 25 && imc <= 29.9){
        alert("Acima do peso ");
    } else if (imc >= 30 && imc <= 34.9){
        alert("Obesidade grau I ");
    } else if (imc >= 35 && imc <= 40){
        alert("Obesidade grau II ");
    } else {
        alert("Obesidade grau III ");
    }
}
    
