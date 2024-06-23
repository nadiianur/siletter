const express = require('express')
const router = express.Router()
const controllers = require('../../controllers/mahasiswa/suratKeluar')
const middleware = require('../../middleware/authentication')

router.get('/viewSuratKeluar', middleware.verifyTokenMahasiswa, controllers.viewSuratKeluar)
router.get('/detailSuratKeluar/:id_surat_masuk', middleware.verifyTokenMahasiswa, controllers.detailSuratKeluar)
router.post('/kirimSurat', middleware.verifyTokenMahasiswa, controllers.kirimSurat)

module.exports = router