const imgs = document.getElementById("img")
const img = document.querySelectorAll("#img img")

let idx = 0

function carrossel() {
    idx++

    if (idx > img.length - 1) {
        idx = 0
    }

    imgs.style.transform = `translateX(${-idx * 800}px)`

}

setInterval(carrossel, 2500)


var listaImg = [
    'css/img/printsdoJogo/embrolhosombro.jpg',
    'css/img/printsdoJogo/fogueira2.jpg',
    'css/img/printsdoJogo/fogueira.jpg',
    'css/img/printsdoJogo/nave.jpg',
    'css/img/printsdoJogo/recantoLenhoso.png',
    'css/img/printsdoJogo/puzzle.jpg'
]

for (let i = 0; i < listaImg.length; i++) {
    div_galeria.innerHTML += `<img src="${listaImg[i]}">`

}