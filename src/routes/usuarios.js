var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/votarPersonagem", function (req, res) {
    usuarioController.votarPersonagem(req, res);
})

router.post("/votarPlaneta", function (req, res) {
    usuarioController.votarPlaneta(req, res);
})

router.get("/votoQtdPersonagem", function (req, res) {
    usuarioController.votoQtdPersonagem(req, res);
})

router.get("/votoQtdPlaneta", function (req, res) {
    usuarioController.votoQtdPlaneta(req, res);
})


module.exports = router;