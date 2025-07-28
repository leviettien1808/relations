const path = require("path");

const express = require("express");
const bodyParser = require("body-parser");

const app = express();

app.set("view engine", "ejs");
app.set("views", "views");

app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));

const adminData = require("./routes/admin");
const usersRoutes = require("./routes/users");

app.use("/admin", adminData.router);
app.use("/users", usersRoutes);

app.listen(3000);
