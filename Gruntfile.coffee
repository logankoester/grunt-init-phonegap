#
# * grunt-init-phonegap
# * https://github.com/logankoester/grunt-init-phonegap
# *
# * Copyright (c) 2014 Logan Koester
# * Licensed under the MIT license.
#

module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    clean: ['tmp/**/*']

    coffee:
      template:
        expand: true
        cwd: 'src/'
        src: '**/*.coffee'
        dest: './'
        ext: '.js'

    watch:
      coffee:
        files: ['src/**/*.coffee', 'root/**/*', 'Gruntfile.coffee']
        tasks: ['default']

    
    mochacli:
      all: ['test/**_test.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-mocha-cli'

  grunt.registerTask 'build', ['coffee']

  grunt.registerTask 'mktmpdir', -> grunt.file.mkdir 'tmp'
  grunt.registerTask 'test', ['mktmpdir', 'mochacli', 'clean']

  grunt.registerTask 'default', ['build', 'test']
