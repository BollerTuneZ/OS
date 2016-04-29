var gpio = require('rpi-gpio');

gpio.setup(24, gpio.DIR_OUT);

setTimeout(function()
{
  gpio.write(24, true, function(err) {
      if (err) throw err;
      console.log('Written to pin');
  });
},5000);
