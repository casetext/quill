module.exports = (grunt) ->
  grunt.config('grunt-release',
    options:
      additionalFiles: ['bower.json']
      npm: false
      github:
        repo: 'casetext/quill'
        usernameVar: 'GITHUB_TOKEN',
  )

  grunt.config('github-release',
    options:
      repository: 'casetext/quill'
      files:
        '.build': ['quill.tar.gz']
      auth:
        user: process.env.GITHUB_TOKEN

  )