var xbox = require('xbox-controller-node');

xbox.on('a', function () {
  console.log('[A] button press');
});

xbox.on('a:release', function () {
  console.log('[A] button release');
});

xbox.on('start', function () {
  console.log('[Start] button press');
});

xbox.on('left', function () {
  console.log('[LEFT] button press');
});

xbox.on('left:release', function () {
  console.log('[LEFT] button release');
});

xbox.on('upright', function () {
  console.log('[UPRIGHT] buttons combination press');
});

xbox.on('leftstickpress', function () {
  console.log('[LEFTSTICK] button press');
});

//Manage sticks events

xbox.on('leftstickLeft', function () {
  console.log('Moving [LEFTSTICK] LEFT');
});

xbox.on('leftstickLeft:release', function () {
  console.log('Released [LEFTSTICK] LEFT');
});

xbox.on('leftstickRight', function () {
  console.log('Moving [LEFTSTICK] RIGHT');
});

xbox.on('leftstickRight:release', function () {
  console.log('Released [LEFTSTICK] RIGHT');
})

xbox.on('leftstickDown', function () {
  console.log('Moving [LEFTSTICK] DOWN');
});

xbox.on('leftstickUp', function () {
  console.log('Moving [LEFTSTICK] UP');
});

xbox.on('rightstickLeft', function () {
  console.log('Moving [RIGHTSTICK] LEFT');
});

xbox.on('rightstickLeft:release', function () {
  console.log('Released [RIGHTSTICK] LEFT');
});

xbox.on('rightstickRight', function () {
  console.log('Moving [RIGHTSTICK] RIGHT');
});

xbox.on('rightstickDown', function () {
  console.log('Moving [RIGHTSTICK] DOWN');
});

xbox.on('rightstickUp', function () {
  console.log('Moving [RIGHTSTICK] UP');
});
