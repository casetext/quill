module.exports = (grunt) ->
  grunt.config('grunt-release',
    options:
      additionalFiles: ['bower.json']
      npm: false
      tagName: 'v<%= version %>'
      github:
        repo: 'casetext/quill'
        usernameVar: 'GITHUB_TOKEN',
        passwordVar: 'THIS_VAR_SHOULD_BE_EMPTY'
  )

  grunt.config('github-release',
    options:
      repository: 'casetext/quill'
      files:
        '.build': ['quill.tar.gz']
      auth: process.env.GITHUB_TOKEN

  )