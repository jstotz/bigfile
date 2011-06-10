(function() {
  var lines, stdin, sys;
  lines = require('lines');
  sys = require('sys');
  stdin = process.stdin;
  stdin.setEncoding('utf8');
  lines(stdin);
  stdin.on('line', function(line) {
    var i;
    return sys.puts(((function() {
      var _i, _len, _ref, _results;
      _ref = line.split(',');
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        i = _ref[_i];
        _results.push(i * i);
      }
      return _results;
    })()).join(','));
  });
  stdin.resume();
}).call(this);
