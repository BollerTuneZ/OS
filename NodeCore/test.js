var gpio = require('rpi-gpio');

gpio.setup(7, gpio.DIR_OUT);

setTimeout(function()
{
  gpio.write(7, true, function(err) {
      if (err) throw err;
      console.log('Written to pin');
  });
},5000);
