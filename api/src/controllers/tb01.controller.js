const db = require("../config/database");

// ==> Método responsável por listar os dez 'TB01' mais recentes:
exports.listRecentsTB01 = async (req, res) => {
    const response = await db.query('SELECT * FROM tb01 ORDER BY col_dt DESC limit 10');
    res.status(200).send(response.rows);
};