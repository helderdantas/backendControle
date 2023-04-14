import jwt from 'jsonwebtoken';
import User from '../models/User';

export default async (req, res, next) => {
  const { autorizacao } = req.headers;
  console.log(autorizacao);
  if (!autorizacao) {
    return res.status(401).json({
      erros: ['Login required'],
    });
  }

  const [, token] = autorizacao.split(' ');
  try {
    // verifica se o token é valido
    const dados = jwt.verify(token, process.env.TOKEN_SECRET);
    const { id, email } = dados;
    const user = await User.findOne({
      where: {
        id,
        email,
      },
    });
    if (!user) {
      return res.status(401).json({
        erros: ['Credenciais inválidas'],
      });
    }
    req.userId = id;
    req.userEmail = email;
    return next();
  } catch (error) {
    return res.status(401).json({
      erros: ['Token expirado ou invalido'],
    });
  }
};
