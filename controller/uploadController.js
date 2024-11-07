const Questionnaire = require('../models/Questionnaire');
const multer = require('multer');
const path = require('path');
const xlsx = require('xlsx');

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/excel'); 
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + path.extname(file.originalname));
  }
});

const upload = multer({ storage });

// Fungsi untuk memproses file Excel
const uploadExcel = async (req, res) => {
  if (!req.file) {
    return res.status(400).send('No file uploaded');
  }

  try {
    const workbook = xlsx.readFile(req.file.path);
    const sheetName = workbook.SheetNames[0]; 
    const worksheet = workbook.Sheets[sheetName];
    const jsonData = xlsx.utils.sheet_to_json(worksheet);
    for (let data of jsonData) {
      await Questionnaire.create({
        statusrumah:data.statusrumah,
        nomorUrut: data.nomorUrut,
        nomorRumahPadaPeta: data.nomorRumahPadaPeta,
        namaLengkapKK: data.namaLengkapKK,
        usia: data.usia,
        jenisKelamin: data.jenisKelamin,
        nomorKK: data.nomorKK,
        nomorKTP: data.nomorKTP,
        asalKTP: data.asalKTP,
        jumlahKK: data.jumlahKK,
        jumlahPenghuni: data.jumlahPenghuni,
        alamatRumah: data.alamatRumah,
        kecamatan: data.kecamatan,
        desaKelurahan: data.desaKelurahan,
        pendidikanTerakhir: data.pendidikanTerakhir,
        pekerjaan: data.pekerjaan,
        fungsiBangunan: data.fungsiBangunan,
        penghasilan: data.penghasilan,
        statusKepemilikanRumah: data.statusKepemilikanRumah,
        asetRumahDiTempatLain: data.asetRumahDiTempatLain,
        statusKepemilikanTanah: data.statusKepemilikanTanah,
        asetTanahDiTempatLain: data.asetTanahDiTempatLain,
        sumberPenerangan: data.sumberPenerangan,
        dayaListrik: data.dayaListrik,
        bantuanPerumahan: data.bantuanPerumahan,
        modelRumah: data.modelRumah,
        pondasi: data.pondasi,
        kolom: data.kolom,
        rangkaAtap: data.rangkaAtap,
        plafon: data.plafon,
        balok: data.balok,
        sloof: data.sloof,
        pintuJendelaKonsen: data.pintuJendelaKonsen,
        ventilasi: data.ventilasi,
        materialLantaiTerluas: data.materialLantaiTerluas,
        kondisiLantai: data.kondisiLantai,
        materialDindingTerluas: data.materialDindingTerluas,
        kondisiDinding: data.kondisiDinding,
        materialPenutupAtapTerluas: data.materialPenutupAtapTerluas,
        kondisiPenutupAtap: data.kondisiPenutupAtap,
        luasRumah: data.luasRumah,
        luasTanah: data.luasTanah,
        buanganAirLimbahRumahTangga: data.buanganAirLimbahRumahTangga,
        saranaPengelolaanLimbahCair: data.saranaPengelolaanLimbahCair,
        pemiliharaanSaranaPengelolaanLimbah: data.pemiliharaanSaranaPengelolaanLimbah,
        jenisTempatPembuanganAirTinja: data.jenisTempatPembuanganAirTinja,
        kepemilikanKamarMandiDanJamban: data.kepemilikanKamarMandiDanJamban,
        jumlahJamban: data.jumlahJamban,
        jenisKloset: data.jenisKloset,
        jenisTangkiSeptik: data.jenisTangkiSeptik,
        materialTangkiSeptik: data.materialTangkiSeptik,
        alasTangkiSeptik: data.alasTangkiSeptik,
        lubangPenyedotan: data.lubangPenyedotan,
        posisiTangkiSeptik: data.posisiTangkiSeptik,
        jarakTangkiSeptikDenganSumberAir: data.jarakTangkiSeptikDenganSumberAir,
        sumberAirMinum: data.sumberAirMinum,
        titikKoordinatRumah: data.titikKoordinatRumah,
        manualTitikKoordinatRumah: data.manualTitikKoordinatRumah,
        tanggalPendataan: data.tanggalPendataan,
        adminId: data.adminId,
        score: data.score,
        kategori: data.kategori,
      });
    }

    res.status(200).send('Excel file uploaded and data saved successfully!');
  } catch (error) {
    console.error('Error reading the Excel file:', error);
    res.status(500).send('Error processing the file');
  }
};

module.exports = {
  uploadExcel,
  upload
};
