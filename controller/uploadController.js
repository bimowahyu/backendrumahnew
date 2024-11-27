const Questionnaire = require('../models/Questionnaire');
const multer = require('multer');
const path = require('path');
const xlsx = require('xlsx');

function calculateScore(data) {
  let score = 3; 
  console.log("Initial Score (Model Rumah):", score);

  if (["PLN Tanpa Meteran", "Listrik Non PLN", "Bukan Listrik"].includes(data.sumberPenerangan)) {
    score += 3;
  } else if (data.sumberPenerangan === "PLN dengan Meteran") {
    score += 0;
  }

  console.log("Step 2 - After Sumber Penerangan:", score);

  score += data.pondasi === "Tidak Layak" ? 8 : 0;
  score += data.kolom === "Tidak Layak" ? 8 : 0;
  score += data.rangkaAtap === "Tidak Layak" ? 5 : 0;
  score += data.plafon === "Tidak Layak" ? 1 : 0;
  score += data.balok === "Tidak Layak" ? 8 : 0;
  score += data.sloof === "Tidak Layak" ? 8 : 0;
  score += data.pintuJendelaKonsen === "Tidak Layak" ? 3 : 0;
  score += data.ventilasi === "Tidak Layak" ? 2 : 0;
  score += data.kondisiLantai === "Tidak Layak" ? 12 : 0;
  score += data.kondisiDinding === "Tidak Layak" ? 9 : 0;
  score += data.kondisiPenutupAtap === "Tidak Layak" ? 5 : 0;
  score += data.luasRumah < data.jumlahPenghuni * 7.2 ? 6 : 0;

  console.log("Step 3 - After Kondisi Bangunan:", score);

  if (["Kolam/Sawah/Sungai", "Lubang Tanah", "Pantai/Tanah Lapangan/Kebun", "IPAL"].includes(data.jenisTempatPembuanganAirTinja)) {
    score += 3;
  } else if (data.jenisTempatPembuanganAirTinja === "Tangki Septik") {
    score += 0;
  }

  console.log("Step 4 - After Jenis Tempat Pembuangan Air Tinja:", score);

  if (data.jenisKloset === "Leher Angsa") {
    score += 0;
  } else if (["Cubluk", "Cemplung", "Plengsengan"].includes(data.jenisKloset)) {
    score += 1;
  }

  console.log("Step 5 - After Jenis Kloset:", score);

  if (data.materialTangkiSeptik === "Dinding Beton") {
    score += 0;
  } else if (["Batu Bata", "Tanah"].includes(data.materialTangkiSeptik)) {
    score += 1;
  }
  console.log("Step 6 - After Material Tangki Septik:", score);

  if (["Mata Air", "Air Hujan", "Sumur"].includes(data.sumberAirMinum)) {
    score += 5;
  } else if (["PDAM", "SPAMDES", "Air Kemasan/Isi Ulang"].includes(data.sumberAirMinum)) {
    score += 0;
  }

  console.log("Step 7 - After Sumber Air Minum:", score);

  if (data.kepemilikanKamarMandiDanJamban === "Sendiri") {
    score += 0;
  } else if (["Tidak Ada", "Bersama/MCK Komunal"].includes(data.kepemilikanKamarMandiDanJamban)) {
    score += 2;
  }

  console.log("Step 8 - After Kepemilikan Kamar Mandi dan Jamban:", score);

  if (data.alasTangkiSeptik === "Kedap") {
    score += 0;
  } else if (data.alasTangkiSeptik === "Tidak Kedap") {
    score += 1;
  }

  console.log("Step 9 - After Alas Tangki Septik:", score);

  const kategori = score >= 45 ? "Rumah Tidak Layak Huni" : "Rumah Layak Huni";
  console.log("Final Score:", score);
  console.log("Kategori:", kategori);
  
  return { score, kategori };
};

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
// const uploadExcel = async (req, res) => {
//   if (!req.file) {
//     return res.status(400).send('No file uploaded');
//   }

//   try {
//     const workbook = xlsx.readFile(req.file.path);
//     const sheetName = workbook.SheetNames[0]; 
//     const worksheet = workbook.Sheets[sheetName];
//     const jsonData = xlsx.utils.sheet_to_json(worksheet);
//     for (let data of jsonData) {
//       await Questionnaire.create({
//         statusrumah:data.statusrumah,
//         nomorUrut: data.nomorUrut,
//         nomorRumahPadaPeta: data.nomorRumahPadaPeta,
//         namaLengkapKK: data.namaLengkapKK,
//         usia: data.usia,
//         jenisKelamin: data.jenisKelamin,
//         nomorKK: data.nomorKK,
//         nomorKTP: data.nomorKTP,
//         asalKTP: data.asalKTP,
//         jumlahKK: data.jumlahKK,
//         jumlahPenghuni: data.jumlahPenghuni,
//         alamatRumah: data.alamatRumah,
//         kecamatan: data.kecamatan,
//         desaKelurahan: data.desaKelurahan,
//         pendidikanTerakhir: data.pendidikanTerakhir,
//         pekerjaan: data.pekerjaan,
//         fungsiBangunan: data.fungsiBangunan,
//         penghasilan: data.penghasilan,
//         statusKepemilikanRumah: data.statusKepemilikanRumah,
//         asetRumahDiTempatLain: data.asetRumahDiTempatLain,
//         statusKepemilikanTanah: data.statusKepemilikanTanah,
//         asetTanahDiTempatLain: data.asetTanahDiTempatLain,
//         sumberPenerangan: data.sumberPenerangan,
//         dayaListrik: data.dayaListrik,
//         bantuanPerumahan: data.bantuanPerumahan,
//         modelRumah: data.modelRumah,
//         pondasi: data.pondasi,
//         kolom: data.kolom,
//         rangkaAtap: data.rangkaAtap,
//         plafon: data.plafon,
//         balok: data.balok,
//         sloof: data.sloof,
//         pintuJendelaKonsen: data.pintuJendelaKonsen,
//         ventilasi: data.ventilasi,
//         materialLantaiTerluas: data.materialLantaiTerluas,
//         kondisiLantai: data.kondisiLantai,
//         materialDindingTerluas: data.materialDindingTerluas,
//         kondisiDinding: data.kondisiDinding,
//         materialPenutupAtapTerluas: data.materialPenutupAtapTerluas,
//         kondisiPenutupAtap: data.kondisiPenutupAtap,
//         luasRumah: data.luasRumah,
//         luasTanah: data.luasTanah,
//         buanganAirLimbahRumahTangga: data.buanganAirLimbahRumahTangga,
//         saranaPengelolaanLimbahCair: data.saranaPengelolaanLimbahCair,
//         pemiliharaanSaranaPengelolaanLimbah: data.pemiliharaanSaranaPengelolaanLimbah,
//         jenisTempatPembuanganAirTinja: data.jenisTempatPembuanganAirTinja,
//         kepemilikanKamarMandiDanJamban: data.kepemilikanKamarMandiDanJamban,
//         jumlahJamban: data.jumlahJamban,
//         jenisKloset: data.jenisKloset,
//         jenisTangkiSeptik: data.jenisTangkiSeptik,
//         materialTangkiSeptik: data.materialTangkiSeptik,
//         alasTangkiSeptik: data.alasTangkiSeptik,
//         lubangPenyedotan: data.lubangPenyedotan,
//         posisiTangkiSeptik: data.posisiTangkiSeptik,
//         jarakTangkiSeptikDenganSumberAir: data.jarakTangkiSeptikDenganSumberAir,
//         sumberAirMinum: data.sumberAirMinum,
//         titikKoordinatRumah: data.titikKoordinatRumah,
//         manualTitikKoordinatRumah: data.manualTitikKoordinatRumah,
//         tanggalPendataan: data.tanggalPendataan,
//         adminId: data.adminId,
//         // score: data.score,
//         kategori: data.kategori,
//       });
//     }

//     res.status(200).send('Excel file uploaded and data saved successfully!');
//   } catch (error) {
//     console.error('Error reading the Excel file:', error);
//     res.status(500).send('Error processing the file');
//   }
// };
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
      // Panggil calculateScore untuk mendapatkan score dan kategori
      const { score, kategori } = calculateScore(data);

      // Simpan data ke dalam database dengan score dan kategori yang sudah dihitung
      await Questionnaire.create({
        statusrumah: data.statusrumah,
        nomorUrut: data.nomorUrut,
        nomorRumahPadaPeta: data.nomorRumahPadaPeta,
        namaLengkapKK: data.namaLengkapKK,
        tanggallahir: data.tanggallahir,
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
        score: score,  
        kategori: kategori, 
      });
    }

    res.status(200).send('Excel file uploaded and data saved successfully with calculated scores and categories!');
  } catch (error) {
    console.error('Error reading the Excel file:', error);
    res.status(500).send('Error processing the file');
  }
};


module.exports = {
  uploadExcel,
  upload
};
