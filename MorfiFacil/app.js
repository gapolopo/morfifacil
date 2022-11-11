var createError = require('http-errors');
var express = require('express');
var session = require('express-session');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();

var pool = require('./modelos/db');

var app = express();

app.use(session({
    name : 'morfifacil',
    secret : '123j12j3ñ12j3j12ñj3ñ21j3ñjkñj3ñ1',
    resave :false,
    saveUninitialized: true,
    cookie : {
            maxAge:(1000 * 60 * 100)
    }
}));


// ---------------- Middleware Secured -------------------------
// Se encarga de controlar el acceso a paginas de usuarios logueados.


secured = async(req,res,next) => {
  try
  {
    if(req.session.id_usuario) {
      console.log("app - secured - usuario logueado");
      next();
    } else {
      console.log("app - secured - usuario NO logueado");
      res.redirect('/admin/login');
    }
  }
  catch(error)
  {
    console.log(error);
  }
}

// --------------------------------------------------


// view engine setup

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


//-----------------    Rutas    ---------------------

var homeRouter = require('./routes/admin/home');
var loginRouter = require('./routes/admin/login');

app.use('/', loginRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/home', secured, homeRouter);

//----------------------------------------------------

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
  app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});


module.exports = app;
