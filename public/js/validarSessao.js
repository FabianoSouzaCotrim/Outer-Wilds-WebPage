
    if (sessionStorage.length == 0) {
        let navbar2 = document.getElementsByClassName('navbar2')
        navbar2[0].style.display = "flex"
        let navbar3 = document.getElementsByClassName('navbar3')
        navbar3[0].style.display = "none"
    }else{
        let navbar2 = document.getElementsByClassName('navbar2')
        navbar2[0].style.display = "none"
        let navbar3 = document.getElementsByClassName('navbar3')
        navbar3[0].style.display = "flex"
        var nomeMaiusculo = sessionStorage.NOME_USUARIO
        nomeMaiusculo = nomeMaiusculo[0].toUpperCase()+ nomeMaiusculo.substring(1);
        nomeUsuario.innerHTML = `${nomeMaiusculo}`
    }