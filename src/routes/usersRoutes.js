const express = require('express');
const router = express.Router();
const userController = require('../controllers/userControllers.js');
const upload = require("../config/upload.js"); // importe a upload.js
const apiKeyMiddleware = require('../config/apiKey.js')

router.use(apiKeyMiddleware);
/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de usuarios
 */

/**
 * @swagger
 * /api/users:
 *   get:
 *     summary: Lista todos os users
 *     tags: [Users]
 *     responses:
 *       200:
 *         description: Lista de usuarios
 */
router.get('/', userController.getAllUsers);

/**
 * @swagger
 * /api/users/{id}:
 *   get:
 *     summary: Buscar usuario por ID
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuario encontrado
 *       404:
 *         description: Usuario não encontrado
 */
router.get('/:id', userController.getUserById);

/**
 * @swagger
 * /api/users:
 *   post:
 *     summary: Cria um novo usuario
 *     tags: [Users]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Usuario criado
 */
router.post('/', upload.single("photo"), userController.createUser);

/**
 * @swagger
 * /api/users/{id}:
 *   delete:
 *     summary: Deleta um usuario
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuario deletado
 */
router.delete('/:id', userController.deleteUser);

/**
 * @swagger
 * /api/users/{id}:
 *   put:
 *     summary: Atualiza um usuario
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Usuario atualizado
 */

router.put('/:id', userController.updateUser);


module.exports = router;