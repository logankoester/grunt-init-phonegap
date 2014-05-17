(function() {
  var cmd, nixt, path, tmpdir;

  nixt = require('logankoester-nixt');

  path = require('path');

  cmd = 'grunt-init --no-color ' + path.join(path.resolve('./'));

  tmpdir = 'tmp';

  describe('grunt-init-phonegap', function() {
    return it('runs successfully', function(done) {
      return nixt({
        colors: false
      }).cwd(tmpdir).run(cmd).on(/Project name/).respond('TestApp\n').on(/id/).respond('com.testapp\n').on(/Description/).respond('A simple test app\n').on(/Project homepage/).respond('https://project.example.com\n/').on(/Author name/).respond('Test User\n').on(/Author email/).respond('author@example.com\n').on(/Author url/).respond('https://author.example.com/\n').on(/Project git repository/).respond('git://example.com/testapp.git\n').on(/Project issues tracker/).respond('https://example.com/testapp/issues\n').on(/Licenses/).respond('MIT\n').on(/\(y\/N\)/).respond('n\n').stdout(/Done!/).code(0).end(done);
    });
  });

}).call(this);
