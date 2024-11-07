const Questionnaire = require("../models/Questionnaire");
const DataRecap = require("../models/DataRecap");
const Admin = require('../models/Admin')
const XLSX = require("xlsx");
const fs = require("fs");
const path = require("path");
const { validationResult } = require('express-validator');


const getAllRecaps = async (req, res) => {
  try {
    const recaps = await DataRecap.findAll();
    res.json(recaps);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// Fungsi untuk mendapatkan recap berdasarkan ID
const getRecapById = async (req, res) => {
  try {
    const recap = await DataRecap.findByPk(req.params.id);
    if (!recap) {
      return res.status(404).json({ message: "Recap tidak ditemukan" });
    }
    res.json(recap);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// Fungsi untuk membuat recap
const createRecap = async (req, res) => {
  try {
    const data = req.body;
    const newRecap = await DataRecap.create(data);
    res.status(201).json(newRecap);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// Fungsi untuk memperbarui recap
const updateRecap = async (req, res) => {
  try {
    const [updated] = await DataRecap.update(req.body, {
      where: { id: req.params.id }
    });
    if (!updated) {
      return res.status(404).json({ message: "Recap tidak ditemukan" });
    }
    const updatedRecap = await DataRecap.findByPk(req.params.id);
    res.json(updatedRecap);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// Fungsi untuk menghapus recap
const deleteRecap = async (req, res) => {
  try {
    const deleted = await DataRecap.destroy({
      where: { id: req.params.id }
    });
    if (!deleted) {
      return res.status(404).json({ message: "Recap tidak ditemukan" });
    }
    res.status(200).json({ message: "Recap berhasil dihapus" });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

module.exports = {
  getAllRecaps,
  getRecapById,
  createRecap,
  updateRecap,
  deleteRecap,
};
