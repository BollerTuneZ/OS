
var net = require('net');

connectToEncoder();

function connectToEncoder()
{
  var client = new net.Socket();
  client.connect(1010, '192.168.1.170', function() {
  	console.log('Connected');
  	client.write('{"Command":"SHOW_IDENTITY"}');
  });
  client.on('data', function(data) {
  	console.log('Received: ' + data);
    try
    {
      if (data == '\n') {
        return;
      }
      console.log(JSON.parse(data));
    }catch (ex)
    {
      console.log(ex);
    }

  });
}
