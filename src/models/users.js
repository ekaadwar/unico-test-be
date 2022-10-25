const connection = require("../helpers/database");
const table = "users";

// ----- created -----

exports.createUsers = (data, cb) => {
  connection.query(
    `INSERT INTO ${table} (email, password, first_name, last_name) VALUES (?, ?, ?, ?)`,
    [data.email, data.password, data.firstName, data.lastName],
    cb
  );
};

// ----- read -----

exports.getUserByEmail = (email, cb) => {
  const sql = `
    SELECT ${table}.id, ${table}.email, ${table}.password, ${table}.first_name AS firstName, ${table}.last_name AS lastName
    FROM ${table}
    WHERE ${table}.email=?
  `;
  console.log(sql);
  connection.query(sql, [email], cb);
};
