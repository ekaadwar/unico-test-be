const connection = require("../helpers/database");
const table = "users";

exports.createUsers = (data, cb) => {
  connection.query(
    `INSERT INTO ${table} (email, password, first_name, last_name) VALUES (?, ?, ?, ?)`,
    [data.email, data.password, data.firstName, data.lastName],
    cb
  );
};
