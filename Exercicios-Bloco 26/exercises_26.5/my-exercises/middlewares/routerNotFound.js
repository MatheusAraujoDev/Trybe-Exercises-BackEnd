// Exercício 3
const routerNotFound = (err, _req, res, _next) =>
  res.status(err.statusCode).json({ message: err.message })

module.exports = { routerNotFound };
