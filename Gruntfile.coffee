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

    bump:
      options:
        commit: true
        commitMessage: 'Release v%VERSION%'
        commitFiles: ['package.json']
        createTag: true
        tagName: 'v%VERSION%'
        tagMessage: 'Version %VERSION%'
        push: false
        signCommits: true
        signTags: true

    readme_generator:
      readme:
        options:
          readme_folder: 'docs'
          output: 'README.md'
          table_of_contents: true
          toc_extra_links: []
          generate_changelog: true
          changelog_folder: 'docs/releases'
          changelog_version_prefix: 'v'
          changelog_insert_before: 'legal.md'
          banner: 'banner.md'
          has_travis: false
          github_username: 'logankoester'
          generate_footer: false
          generate_title: false
          package_title: null
          informative: true
          h1: '#'
          h2: '##'
          back_to_top_custom: '#grunt-phonegap'
        order:
          'installation.md': 'Installation'
          'usage.md': 'Usage'
          '../CONTRIBUTING.md': 'Contributing'
          'legal.md': 'License'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-mocha-cli'
  grunt.loadNpmTasks 'grunt-bump'
  grunt.loadNpmTasks 'grunt-readme-generator'

  grunt.registerTask 'build', ['coffee', 'docs']

  grunt.registerTask 'mktmpdir', -> grunt.file.mkdir 'tmp'
  grunt.registerTask 'docs', ['readme_generator']
  grunt.registerTask 'test', ['mktmpdir', 'mochacli', 'clean']

  grunt.registerTask 'default', ['build', 'test']
