const Questionnaire = require('../models/Questionnaire')
const XLSX = require("xlsx");
const fs = require("fs");

// Function to calculate the score
const calculateScore = (data) => {
  let score = 0;

  score += 3;
  if (["PLN Tanpa Meteran", "Listrik Non PLN", "Bukan Listrik"].includes(data.sumberPenerangan)) {
    score += 3;
  }
  score += data.pondasi === "Tidak Layak" ? 8 : 0;
  const kategori = score >= 45 ? "Rumah Tidak Layak Huni" : "Rumah Layak Huni";

  return { score, kategori };
};

module.exports = {
  calculateScore,

  createQuestionnaire: async (req, res) => {
    try {
      console.log("Data received in backend:", req.body);

      const { score, kategori } = calculateScore(req.body);

      if (kategori === undefined || score === undefined) {
        return res.status(400).json({ message: "Score and Category are required" });
      }

      const newQuestionnaire = await Questionnaire.create({ ...req.body, score, kategori });

      res.status(201).json({ message: "Data successfully submitted", questionnaire: newQuestionnaire });
    } catch (error) {
      console.error("Error saving questionnaire:", error.message);
      res.status(500).json({ error: error.message });
    }
  },

  getQuestionnaires: async (req, res) => {
    try {
      const questionnaires = await Questionnaire.findAll();
      res.json(questionnaires);
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  },

  updateQuestionnaire: async (req, res) => {
    const { id } = req.params;
    try {
      const { score, kategori } = calculateScore(req.body);

      const updatedQuestionnaire = await Questionnaire.update(
        { ...req.body, score, kategori },
        { where: { id }, returning: true }
      );

      res.json({ message: "Data successfully saved", questionnaire: updatedQuestionnaire });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  },

  deleteQuestionnaire: async (req, res) => {
    const { id } = req.params;
    try {
      await Questionnaire.destroy({ where: { id } });
      res.json({ message: "Data successfully deleted" });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  },

  downloadExcel: async (req, res) => {
    try {
      const questionnaires = await Questionnaire.findAll();
      const data = questionnaires.map((q) => ({
        nomorUrut: recap.nomorUrut,
        nomorRumahPeta: recap.nomorRumahPadaPeta,
        namaLengkapKK: recap.namaLengkapKK,
        usia: recap.usia,
        jenisKelamin: recap.jenisKelamin,
        nomorKK: recap.nomorKK,
        nomorKTP: recap.nomorKTP,
        asalKTP: recap.asalKTP,
        jumlahKK: recap.jumlahKK,
        jumlahPenghuni: recap.jumlahPenghuni,
        alamatRumah: recap.alamatRumah,
        kecamatan: recap.kecamatan,
        desaKelurahan: recap.desaKelurahan,
        pendidikanTerakhir: recap.pendidikanTerakhir,
        pekerjaan: recap.pekerjaan,
        fungsiBangunan: recap.fungsiBangunan,
        penghasilan: recap.penghasilan,
        statusKepemilikanRumah: recap.statusKepemilikanRumah,
        asetRumahDiTempatLain: recap.asetRumahDiTempatLain,
        statusKepemilikanTanah: recap.statusKepemilikanTanah,
        asetTanahDiTempatLain: recap.asetTanahDiTempatLain,
        sumberPenerangan: recap.sumberPenerangan,
        dayaListrik: recap.dayaListrik,
        bantuanPerumahan: recap.bantuanPerumahan,
        modelRumah: recap.modelRumah,
        pondasi: recap.pondasi,
        kolom: recap.kolom,
        rangkaAtap: recap.rangkaAtap,
        plafon: recap.plafon,
        balok: recap.balok,
        sloof: recap.sloof,
        pintuJendelaKonsen: recap.pintuJendelaKonsen,
        ventilasi: recap.ventilasi,
        materialLantaiTerluas: recap.materialLantaiTerluas,
        kondisiLantai: recap.kondisiLantai,
        materialDindingTerluas: recap.materialDindingTerluas,
        kondisiDinding: recap.kondisiDinding,
        materialPenutupAtapTerluas: recap.materialPenutupAtapTerluas,
        kondisiPenutupAtap: recap.kondisiPenutupAtap,
        luasRumah: recap.luasRumah,
        luasTanah: recap.luasTanah,
        buanganAirLimbahRumahTangga: recap.buanganAirLimbahRumahTangga,
        saranaPengelolaanLimbahCair: recap.saranaPengelolaanLimbahCair,
        pemiliharaanSaranaPengelolaanLimbah: recap.pemiliharaanSaranaPengelolaanLimbah,
        jenisTempatPembuanganAirTinja: recap.jenisTempatPembuanganAirTinja,
        kepemilikanKamarMandiDanJamban: recap.kepemilikanKamarMandiDanJamban,
        jumlahJamban: recap.jumlahJamban,
        jenisKloset: recap.jenisKloset,
        jenisTangkiSeptik: recap.jenisTangkiSeptik,
        materialTangkiSeptik: recap.materialTangkiSeptik,
        alasTangkiSeptik: recap.alasTangkiSeptik,
        lubangPenyedotan: recap.lubangPenyedotan,
        posisiTangkiSeptik: recap.posisiTangkiSeptik,
        jarakTangkiSeptikDenganSumberAir: recap.jarakTangkiSeptikDenganSumberAir,
        sumberAirMinum: recap.sumberAirMinum,
        titikKoordinatRumah: recap.titikKoordinatRumah,
        manualTitikKoordinatRumah: recap.manualTitikKoordinatRumah,
        tanggalPendataan: recap.tanggalPendataan,
        namaSurveyor: recap.namaSurveyor,
        score: recap.score, // Tambahkan field skor
        kategori: recap.kategori, // Tambahkan field kategori
      }));

      const ws = XLSX.utils.json_to_sheet(data);
      const wb = XLSX.utils.book_new();
      XLSX.utils.book_append_sheet(wb, ws, "Questionnaires");

      const filePath = "./public/questionnaires.xlsx";
      XLSX.writeFile(wb, filePath);

      res.download(filePath, "questionnaires.xlsx", (err) => {
        if (err) {
          res.status(500).json({ error: err.message });
        } else {
          fs.unlinkSync(filePath); // Delete the file after download
        }
      });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  },
};
