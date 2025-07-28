const express = require("express");

const router = express.Router();

const users = require("./admin");

router.get("/", (req, res, next) => {
  res.render("users", { pageTitle: "Users", users: users.users });
});

module.exports = router;
