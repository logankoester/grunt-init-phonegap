(function() {
  var nixt, path;

  nixt = require('logankoester-nixt');

  path = require('path');

  describe('grunt-init-phonegap', function() {
    return it('runs successfully', function(done) {
      return nixt({
        colors: false
      }).cwd('tmp').run('grunt-init --no-color ' + path.resolve(__dirname, '..')).on(/Project name/).respond('TestApp\n').on(/id/).respond('com.testapp\n').on(/Description/).respond('A simple test app\n').on(/Project homepage/).respond('https://project.example.com\n/').on(/Author name/).respond('Test User\n').on(/Author email/).respond('author@example.com\n').on(/Author url/).respond('https://author.example.com/\n').on(/Project git repository/).respond('git://example.com/testapp.git\n').on(/Project issues tracker/).respond('https://example.com/testapp/issues\n').on(/Licenses/).respond('MIT\n').on(/\(y\/N\)/).respond('n\n').stdout(/Done!/).code(0).end(done);
    });
  });

}).call(this);
