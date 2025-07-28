const express = require("express");

const router = express.Router();

const users = [];

router.get("/add-user", (req, res, next) => {
  res.render("add-user", { pageTitle: "Add User" });
});

router.post("/add-user", (req, res, next) => {
  users.push({ name: req.body.username });
  res.redirect("/users");
});

exports.router = router;
exports.users = users;
