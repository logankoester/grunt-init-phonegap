module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    phonegap:
      config:
        plugins: []
        platforms: []
        config:
          template: '_config.xml'
          data:
            id: '{%= id %}'
            version: '<%= pkg.version %>'
            name: '<%= pkg.name %>'
            description: '<%= pkg.description %>'
            author:
              email: '{%= author_email %}'
              href: '{%= author_url %}'
              text: '{%= author_name %}'

        versionCode: 1
        permissions: []

  grunt.loadNpmTasks 'grunt-phonegap'
