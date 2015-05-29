request = require('request-promise')

module.exports = (grunt) ->
  grunt.config('grunt-release',
    options:
      additionalFiles: ['bower.json']
      npm: false
      tagName: 'v<%= version %>'
      github:
        repo: 'casetext/quill'
        usernameVar: 'GITHUB_TOKEN',
        passwordVar: 'EMPTY_STRING'
  )



  grunt.registerTask('github-release', 'upload release build to github', ['release'], ->
    request.get({
      url: 'https://api.github.com/repos/' + options.repository + '/releases'
      auth: {
        user: process.env.GITHUB_TOKEN
        pass: ''
      }
    }).then()
  )

  grunt.config('github-release',
    options:
      repository: 'casetext/quill'
      files:
        '.build': ['quill.tar.gz']
      auth: process.env.GITHUB_TOKEN

  )