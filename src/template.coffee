#
# * grunt-init-phonegap
# * https://github.com/logankoester/grunt-init-phonegap
# *
# * Copyright (c) 2014 Logan Koester
# * Licensed under the MIT license.
#

exports.description = 'Create a grunt-phonegap project'

exports.notes = '
    See https://github.com/logankoester/grunt-phonegap for further documentation
  '

exports.after = 'Done!
  Now run `npm install` and edit Gruntfile.coffee to add one or more platforms to build.
  Check `grunt --help` to see what tasks are available.'

exports.template = (grunt, init, done) ->
  init.process {}, [
    init.prompt 'name'
    init.prompt 'id', 'com.myapp'
    init.prompt 'description'
    init.prompt 'homepage'
    init.prompt 'author_name'
    init.prompt 'author_email'
    init.prompt 'author_url'
    init.prompt 'repository'
    init.prompt 'bugs'
    init.prompt 'licenses'
  ], (err, props) ->
    files = init.filesToCopy props

    init.copyAndProcess files, props
    init.addLicenseFiles files, props.licenses
    init.writePackageJSON 'package.json', props, (pkg, props) ->
      pkg.version = '0.0.0'
      pkg.main = 'Gruntfile.coffee'
      pkg.devDependencies =
        "grunt": "~0.4.5"
        "grunt-phonegap": "~0.15.1"
        "grunt-contrib-connect": "~0.7.1"
        "grunt-contrib-watch": "~0.4.0"
      pkg
    done()
