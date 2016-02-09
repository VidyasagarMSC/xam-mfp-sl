var loopback = require('loopback');
var boot = require('loopback-boot');
var passport = require('passport-mfp-token-validation').Passport;
var mfpStrategy = require('passport-mfp-token-validation').Strategy;

var app = module.exports = loopback();

passport.use(new mfpStrategy({
    publicKeyServerUrl:'http://localhost:10080/plenty',
    analytics : {
        onpremise: {
            url : 'http://10.0.1.13:10080/analytics-service/data',
            username : 'admin',
            password : 'admin'
        }
    }
}));
app.use(passport.initialize());

var cont = function(req, res, next){
    next();
};

var auth = function(scope) {
    return passport.authenticate('mobilefirst-strategy', {
        session: false,
        scope: scope
    });
};

//protect everything under "/api/Companies" with a single authentication realm
app.use('/api/Offers', auth('PlentyAppRealm'), cont);
app.use('/api/Events', auth('PlentyAppRealm'), cont);

app.start = function() {
  // start the web server
  return app.listen(function() {
    app.emit('started');
    var baseUrl = app.get('url').replace(/\/$/, '');
    console.log('Web server listening at: %s', baseUrl);
    if (app.get('loopback-component-explorer')) {
      var explorerPath = app.get('loopback-component-explorer').mountPath;
      console.log('Browse your REST API at %s%s', baseUrl, explorerPath);
    }
  });
};

// Bootstrap the application, configure models, datasources and middleware.
// Sub-apps like REST API are mounted via boot scripts.
boot(app, __dirname, function(err) {
  if (err) throw err;

  // start the server if `$ node server.js`
  if (require.main === module)
    app.start();
});
