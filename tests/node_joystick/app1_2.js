/* Button events */
var xbox = require('xbox-controller-node');

xbox.on('a', function () {
  console.log('[A] button press');
});

xbox.on('b', function () {
  console.log('[B] button press');
});

xbox.on('y', function () {
  console.log('[Y] button press');
});

xbox.on('x', function () {
  console.log('[X] button press');
});

xbox.on('rb', function () {
  console.log('[RB] button press');
});

xbox.on('lb', function () {
  console.log('[LB] button press');
});

xbox.on('start', function () {
  console.log('[Start] button press');
});

//This event is only avaliable on linux
xbox.on('xboxButton', function () {
  console.log('[Xbox] button press');
});

xbox.on('back', function () {
  console.log('[Back] button press');
});

xbox.on('up', function () {
  console.log('[UP] button press');
});

xbox.on('down', function () {
  console.log('[DOWN] button press');
});

xbox.on('left', function () {
  console.log('[LEFT] button press');
});

xbox.on('right', function () {
  console.log('[RIGHT] button press');
});

xbox.on('upright', function () {
  console.log('[UPRIGHT] buttons combination press');
});

xbox.on('upleft', function () {
  console.log('[UPLEFT] buttons combination press');
});

xbox.on('downright', function () {
  console.log('[DOWNRIGHT] buttons combination press');
});

xbox.on('downleft', function () {
  console.log('[DOWNLEFT] buttons combination press');
});

xbox.on('leftstickpress', function () {
  console.log('[LEFTSTICK] button press');
});

xbox.on('rightstickpress', function () {
  console.log('[RIGHTSTICK] button press');
});

/* Stick events */

xbox.on('leftstickLeft', function () {
  console.log('Moving [LEFTSTICK] LEFT');
});

xbox.on('leftstickRight', function () {
  console.log('Moving [LEFTSTICK] RIGHT');
});

xbox.on('leftstickDown', function () {
  console.log('Moving [LEFTSTICK] DOWN');
});

xbox.on('leftstickUp', function () {
  console.log('Moving [LEFTSTICK] UP');
});

xbox.on('leftstickMove', function (position) {
  console.log('[LEFTSTICK] position:', position);
});

xbox.on('rightstickLeft', function () {
  console.log('Moving [RIGHTSTICK] LEFT');
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

xbox.on('rightstickMove', function (position) {
  console.log('[RIGHTSTICK] position:', position);
});

/* Buttons release events */

xbox.on('a:release', function () {
  console.log('[A] button release');
});

xbox.on('b:release', function () {
  console.log('[B] button release');
});

xbox.on('y:release', function () {
  console.log('[Y] button release');
});

xbox.on('x:release', function () {
  console.log('[X] button release');
});

xbox.on('rb:release', function () {
  console.log('[RB] button release');
});

xbox.on('lb:release', function () {
  console.log('[LB] button release');
});

xbox.on('start:release', function () {
  console.log('[START] button release');
});

//This event is only avaliable on linux
xbox.on('xboxButton:release', function () {
  console.log('[Xbox] button release');
});

xbox.on('back:release', function () {
  console.log('[BACK] button release');
});

xbox.on('up:release', function () {
  console.log('[UP] button release');
});

xbox.on('down:release', function () {
  console.log('[DOWN] button release');
});

xbox.on('left:release', function () {
  console.log('[LEFT] button release');
});

xbox.on('right:release', function () {
  console.log('[RIGHT] button release');
});

xbox.on('upright:release', function () {
  console.log('[UPRIGHT] buttons combination release');
});

xbox.on('upleft:release', function () {
  console.log('[UPLEFT] buttons combination release');
});

xbox.on('downright:release', function () {
  console.log('[DOWNRIGHT] buttons combination release');
});

xbox.on('downleft:release', function () {
  console.log('[DOWNLEFT] buttons combination release');
});

xbox.on('leftstickpress:release', function () {
  console.log('[LEFTSTICK] button release');
});

xbox.on('rightstickpress:release', function () {
  console.log('[RIGHTSTICK] button release');
});

/* Buttons none events */

xbox.on('a:none', function () {
  console.log('The [A] button is released');
});

xbox.on('b:none', function () {
  console.log('The [B] button is released');
});

xbox.on('y:none', function () {
  console.log('The [Y] button is released');
});

xbox.on('x:none', function () {
  console.log('The [X] button is released');
});

xbox.on('rb:none', function () {
  console.log('The [RB] button is released');
});

xbox.on('lb:none', function () {
  console.log('The [LB] button is released');
});

xbox.on('start:none', function () {
  console.log('The [Start] button is released');
});

//This event is only avaliable on linux
xbox.on('xboxButton:none', function () {
  console.log('[Xbox] button is released');
});

xbox.on('back:none', function () {
  console.log('The [Back] button is released');
});

xbox.on('up:none', function () {
  console.log('The [UP] button is released');
});

xbox.on('down:none', function () {
  console.log('The [DOWN] button is released');
});

xbox.on('left:none', function () {
  console.log('The [LEFT] button is released');
});

xbox.on('right:none', function () {
  console.log('The [RIGHT] button is released');
});

xbox.on('upright:none', function () {
  console.log('The [UPRIGHT] buttons combination is released');
});

xbox.on('upleft:none', function () {
  console.log('The [UPLEFT] buttons combination is released');
});

xbox.on('downright:none', function () {
  console.log('The [DOWNRIGHT] buttons combination is released');
});

xbox.on('downleft:none', function () {
  console.log('The [DOWNLEFT] buttons combination is released');
});

xbox.on('leftstickpress:none', function () {
  console.log('The [LEFTSTICK] button is released');
});

xbox.on('rightstickpress:none', function () {
  console.log('The [RIGHTSTICK] button is released');
});

/* Stick release events */

xbox.on('leftstickLeft:release', function () {
  console.log('Released [LEFTSTICK] LEFT');
});

xbox.on('leftstickRight:release', function () {
  console.log('Released [LEFTSTICK] RIGHT');
});

xbox.on('leftstickDown:release', function () {
  console.log('Released [LEFTSTICK] DOWN');
});

xbox.on('leftstickUp:release', function () {
  console.log('Released [LEFTSTICK] UP');
});

xbox.on('rightstickLeft:release', function () {
  console.log('Released [RIGHTSTICK] LEFT');
});

xbox.on('rightstickRight:release', function () {
  console.log('Released [RIGHTSTICK] RIGHT');
});

xbox.on('rightstickDown:release', function () {
  console.log('Released [RIGHTSTICK] DOWN');
});

xbox.on('rightstickUp:release', function () {
  console.log('Released [RIGHTSTICK] UP');
});

/* Sticks none events */

xbox.on('leftstickLeft:none', function () {
  console.log('Not moving [LEFTSTICK] LEFT');
});

xbox.on('leftstickRight:none', function () {
  console.log('Not moving [LEFTSTICK] RIGHT');
});

xbox.on('leftstickDown:none', function () {
  console.log('Not moving [LEFTSTICK] DOWN');
});

xbox.on('leftstickUp:none', function () {
  console.log('Not moving [LEFTSTICK] UP');
});

xbox.on('rightstickLeft:none', function () {
  console.log('Not moving [RIGHTSTICK] LEFT');
});

xbox.on('rightstickRight:none', function () {
  console.log('Not moving [RIGHTSTICK] RIGHT');
});

xbox.on('rightstickDown:none', function () {
  console.log('Not moving [RIGHTSTICK] DOWN');
});

xbox.on('rightstickUp:none', function () {
  console.log('Not moving [RIGHTSTICK] UP');
});
